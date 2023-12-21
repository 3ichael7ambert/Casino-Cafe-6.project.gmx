/// stack actions -executed by stack instance in step 



//stack action #0
//put cards in stack
if s_actions[0] == 1 {
  obj_control.countdown_active = false;
  s_actions[1] = false;
  obj_control.timer_can_click = 5;

  var stack_size = ds_list_size(obj_control.list);
  obj_control.timer_can_click = 5;

  if timer_layout { //if timer above 0
   timer_layout -=1; //remove 1
  } else if !ds_list_empty(obj_control.tmp_list) { //else when timer reach 0; as long as list not empty:
  
     var inst = instance_create(x+150+(stack_size*0.20),y+150+(stack_size*0.20),obj_card);
     
     inst.mask_index = upleft_mask;
     inst.c_actions[0] = true;                  //tell instance to move towards stack
     inst.depth = ds_list_size(obj_control.tmp_list);               //give depth based on list size
     inst.movex = (x+(stack_size*0.20));                          //give x
     inst.movey = (y+(stack_size*0.20));                          //give y
     
     timer_layout = 2;   //reset timer
    } else {
       if timer_layout2 {
        timer_layout2 -=1;
       } else {
          mask_index = center_mask; //change mask of stack
          timer_layout = 2;         //reset timer (for next event)
    
          s_actions[1] = true;   //start action #2 (place cards at beginning)
          s_actions[0] = false;  //stop action
          timer_layout2 = 30;
       }
      }
}




//stack action #1
//place cards in tableau 

if s_actions[1] == true {
  var stack_size = ds_list_size(obj_control.list);

  if timer_layout { 
   timer_layout -=1; 
  } else if ds_list_find_index(obj_control.free_list,1) != -1 and !ds_list_empty(obj_control.list) {
     obj_control.timer_can_click = 5;
     var cardinst = instance_create(floor(x+(stack_size*0.20)-0.20),floor(y+(stack_size*0.20)-0.20),obj_card); //store instance in "cardinst"                 
     obj_control.cards_in_tableau += 1;
           
     cardinst.mask_index = left_mask;                        //change mask
     
     var xl = obj_control.xpos_list, yl = obj_control.ypos_list;
     var freepos = ds_list_find_index(obj_control.free_list,1);
     
     cardinst.movex = ds_list_find_value(xl,freepos);
     cardinst.movey = ds_list_find_value(yl,freepos);
     
     ds_list_replace(obj_control.free_list,ds_list_find_index(obj_control.free_list,1),0);
     
     cardinst.c_actions[1] = true;
     
     
     var snd = audio_play_sound(snd0,0,false);
     audio_sound_gain(snd, 0.2, 0);
  
     timer_layout = 2; //reset timer - start the whole thing over until every values in free list is 0
    } else { //if no free position found
       obj_control.countdown_active = true;
      }

}


