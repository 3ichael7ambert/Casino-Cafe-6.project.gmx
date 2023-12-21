/// actions executed by control_actions script
// every actions of obj_control are executed in this script - each positions in the array correspond to a specific action



// #0 restart game
// destroy lists/instances
if actions[0] == true {
  var i 
  
  //reset obj control arrays
  for(i=0;i<14;i++) {actions[i] = false;}  
  for(i=0;i<5;i++)  {hand[i] = false;}    
  for(i=0;i<11;i++) {HA[i] = false;}      
  for(i=0;i<11;i++) {HM[i] = 0;}          

  //destroy instances
  if instance_exists(obj_draw)                  {   with(obj_draw)                    {instance_destroy();}      } 
  if instance_exists(obj_score)                 {   with(obj_score)                   {instance_destroy();}      } 
  if instance_exists(obj_star_generator)        {   with(obj_star_generator)          {instance_destroy();}      } 
  if instance_exists(obj_show_bonus_seconds)    {   with(obj_show_bonus_seconds)      {instance_destroy();}      } 
  if instance_exists(obj_stack)                 {   with(obj_stack)                   {instance_destroy();}      } 
  if instance_exists(obj_card)                  {   with(obj_card)                    {instance_destroy();}      } 
  if instance_exists(obj_star)                  {   with(obj_star)                    {instance_destroy();}      } 
  if instance_exists(obj_game_over)             {   with(obj_game_over)               {instance_destroy();}      } 
  
  //clear obj control lists
  ds_list_clear(list);
  ds_list_clear(tmp_list);
  ds_list_clear(color_list);
  ds_list_clear(tmp_color_list);
  ds_list_clear(xpos_list);
  ds_list_clear(ypos_list);
  ds_list_clear(free_list);
  ds_list_clear(hand_list);
  ds_list_clear(rotate_colors1_list);
  ds_list_clear(rotate_colors2_list);
  ds_list_clear(rotate_colors3_list);
  ds_list_clear(hs_list);
  ds_list_clear(direction_list);
  
  //reset obj control variables
  ticks = max_seconds * 60;
  score_round = 0;
  cards_in_tableau = 0;
  countdown_active = false;
  timer_can_click = 15;
  timer_time   = 59;
  timer_timeup = 20;

  //reset actions
  actions[1] = true; //fill lists
  actions[2] = true; //instances create
  actions[3] = true; //time
  actions[4] = true; //can click check
  actions[5] = true; //unselect all during game when pressing middle mouse button
  
  actions[0] = false; 
}














// #1
// fill lists
if actions[1] == true {
  var i,j;
  
  //
  if !instance_exists(obj_stack) { //if new game
   for(i=0;i<3;i++) {
    for(j=0;j<5;j++) {
     ds_list_add(ypos_list,115+(i*70)); //y positions list
     ds_list_add(xpos_list,250+(j*50)); //x positions list - the stack instance will use these to give the x/y destination of the cards
    }
   }
   
   ds_list_add(hs_list,0,0,0,0,0,0,0,0,0,0); //fill with 0s
   ds_list_add(rotate_colors1_list,c_red,c_orange,c_yellow);
   ds_list_add(rotate_colors2_list,c_orange,c_yellow);
   ds_list_add(rotate_colors3_list,c_blue,c_navy,c_teal);
   
  } else obj_stack.refill_no += 1; // else if next round
    
  
  //add cards (final size is 50 cards - should be a multiple of 5)
  for(i=0;i<52;i++) {ds_list_add(tmp_list,i);}  //add 52 cards
  ds_list_shuffle(tmp_list);                    //shuffle
  repeat(3)ds_list_delete(tmp_list,0);          //remove 3 random cards
  ds_list_add(tmp_list,choose(52,53));          //add one wild card
  ds_list_shuffle(tmp_list);                    //shuffle again after adding wild cards
  
  for(i=0;i<54;i++) {ds_list_add(tmp_color_list,choose(54,55,56,57,58,59,60,61,62));} //choose colors for back of cards
  
  if ds_list_empty(free_list) {
   repeat(ds_list_size(xpos_list)) {ds_list_add(free_list,1);} //list of free positions
  }
  
  actions[1] = false; //turn off action
}





// #2
// create instances
if actions[2] == true {

  instance_create(x,y,obj_draw);
  instance_create(x,y,obj_score);
  instance_create(655,45,obj_show_bonus_seconds);
  if star_field {instance_create(x,y,obj_star_generator);}
  
  instance_create(620,room_height/2+140,obj_stack);
  actions[2] = false;
}







// #3 seconds countdown and timeup
if actions[3] == true {

 if countdown_active { //pauses when refilling
   if ticks {
    ticks -=1;
   } else if timer_timeup {
      timer_timeup -=1;
     } else {
        if !instance_exists(obj_game_over) {
         instance_create(0,0-300,obj_game_over);
        }
       }
 }
       
}




//action #4 - timer_can click - limits how often and when you can and cannot perform a user action (prevents potential bugs)
if actions[4] == true {
  
  if timer_can_click {
   timer_can_click -= 1;
  } 
  
}








//action #5
//unselect all
if !timer_can_click {
 if ticks {
  if mouse_check_button_pressed(mb_middle) {
   actions[5] = true;
  }
 }
}

if actions[5] == true {
  timer_can_click = 5;

  with(obj_card) {
   image_blend   = -1;
   card_marked   = false;
   card_selected = false;
  }
  
  ds_list_clear(obj_control.hand_list);
  
  var i;
  for(i=0;i<5;i++) {hand[i] = 0;}
  
  actions[5] = false; //stop action
}



//action #6
//close game
if keyboard_check_pressed(vk_escape) {
  actions[6] = true;
}

//
if actions[6] {
  
  game_end();
  actions[6] = false;
}

