///card actions executed in step in card object's step event



//action #0
//move_towards -fill stack animation
if c_actions[0]  == true { 
  obj_control.timer_can_click = 5; //disable clicking during action

  if (distance_to_point(movex,movey)) > speed { //if distance greater than speed
   move_towards_point(movex,movey,20);           //move towards point
  } else {                                        //else 
     ds_list_add(obj_control.list,card_face);    //add card_face (image_index stored) to list
     ds_list_add(obj_control.color_list,card_back);
     speed = 0;                                  //speed = 0
     
     var snd = audio_play_sound(snd0,0,0);
     var pitch = random_range(0.96,1.12);
     audio_sound_pitch(snd, pitch);
     
     instance_destroy();                         //destroy instance
    }
}






//action #1
//move_towards (from stack to tableau)
if c_actions[1]  == true {
   obj_control.timer_can_click = 5;
   
   depth = 0;
   var spd  = distance_to_point(movex,movey)/2
  
  if point_distance(x, y, movex, movey) > spd {
   move_towards_point(movex,movey,spd);
  } else {
     speed = 0;
     depth = 60;
     x = movex;
     y = movey;
     
     c_actions[2] = true;
     
     mask_index = center_mask;
     c_actions[1] = false;
    }
}




//action #2
//flip card (when point reached)
if c_actions[2]  == true {
  obj_control.timer_can_click = 5;

//flipping animation
if image_xscale > 0.1 and image_index == card_back { //if image_xscale larger than 0 and card back
   image_xscale -= 0.19; //xscale / shrink
} else { //when at 0
   image_index = card_face //switch to card_face
   if image_xscale < 1 and image_index == card_face { //if smaller than 1 and card face
    image_xscale += 0.19; //xscale / grow
   } else { 
     c_actions[2] = false; //stop animation - stop action
     }
  }
}


//action #3
//select / 5 cards matches etc - bulk of the game code is in card action #3
if !obj_control.timer_can_click {
 if obj_control.ticks {
  if position_meeting(mouse_x,mouse_y,self) and mouse_check_button_pressed(mb_left) {
   c_actions[3] = true;
  }
 }
}

//
if c_actions[3] == true {
  obj_control.timer_can_click = 5;
  card_marked = false;
  image_blend = -1;
  obj_control.draw_message = false;
  
  
  var i;   
  //if less than 5 cards are selected
  if ds_list_size(obj_control.hand_list) < 5 { 
   // if card not already selected
   if ds_list_find_index(obj_control.hand_list,id) == -1 {
    var sel_inst = id;                           //store id
    audio_play_sound(snd_slct,0,false); //play selected sound 
    sel_inst.card_selected = true;               //card is selected
    ds_list_add(obj_control.hand_list,sel_inst); //add to list of selected cards
    image_blend = make_colour_rgb(150,150,180);  //change color of selected card
    
    var size = ds_list_size(obj_control.hand_list); 
    //if/once 5 cards are selected
    if size == 5 {
     for(i=0;i<5;i++) { //go through all cards
      obj_control.cards_in_tableau -=1; //one less card on the tableau
      var CTBR = ds_list_find_value(obj_control.hand_list,i); //Card(s) To Be Removed 
      CTBR.card_selected = false; //unselect
      CTBR.c_actions[4] = true;   //execute destroy card action
     }
     //with obj control execute
     with obj_control {
      Check_Double_Joker_copy();      //execute check hand script
      
      //add score and time corresponding to hand obtained
      var i 
      for(i=0;i<array_length_1d(HA);i++) {
       if HA[i] == true {
        //add score
        var tp = SA[i] * ((obj_stack.refill_no*10) / 100); //base * percentage / 100
        score_round += SA[i] + tp;  //base score + 10% of base hand value per round
        
        //add time to ticks and show seconds added (turned into string)
        
          //if refill number greater than 0 remove 10 percent
           var ten_percent_times_refill = TA[i] * ((obj_stack.refill_no*10) / 100); //base * percentage / 100
           var ten_percent = SE[i] * ((obj_stack.refill_no*10) / 100);              //base * percentage / 100 (for SEconds)
           var addtimex = floor((TA[i] - ten_percent_times_refill)); //how many ticks will be added after removing 10% (no of refill * 10%)
           if addtimex < 0 {addtimex = 0;}                           //cannot go into negative numbers 
           if ten_percent < 0 {ten_percent = 0;}
           var stringy   = string(((SE[i] - ten_percent))); //after calculating how much in seconds will be added, turn into a string
           stringy = string_insert("+",stringy,0);          //add "+" at beggining of string
          
           var check_dec = string_pos(".",stringy); //check if there's a decimal and store decimal position
           if  check_dec != 0 { //if there is
            var string_removed_after_point = string_delete(stringy,check_dec+2,string_length(stringy)-check_dec-1); //leave only 1 character after "."      
            var inserted_sec = string_insert("sec",string_removed_after_point,check_dec+2); //insert "sec"
           } else var inserted_sec = string_insert("sec",stringy,string_length(stringy)+1); //else if no decimal add "sec"
       
        ticks += addtimex ; //add ticks
        if ticks > max_seconds * 60 {ticks = max_seconds * 60;} // prevent time remaining from going over max seconds
        
        if obj_stack.refill_no <= array_length_1d(obj_control.RN)-1 {
         var snd = audio_play_sound(obj_control.RN[obj_stack.refill_no],0,false); //play note corresponding to hand obtained
        } else var snd = audio_play_sound(RN[array_length_1d(obj_control.RN)-1],0,false);
        
        audio_sound_pitch(snd,1 + (i*0.1));
        obj_score.score_to_draw = SA[i] + tp;
       }
      }
      
      
      obj_score.timer_lifespan = 120;                        //tell obj score to show hand obtained and score text
      obj_show_bonus_seconds.timer_lifespan = 120;
      obj_show_bonus_seconds.show_bonus_time = inserted_sec;
     }
      
     ds_list_clear(obj_control.hand_list); //clear list of selected cards
    }
   //else unselect if already in list
   } else { 
      var desel_inst = id;                 //store deselected card id
      audio_play_sound(snd_slct2,0,false); //play unselect sound
      desel_inst.card_selected = false;    //card selected = false
      ds_list_delete(obj_control.hand_list,ds_list_find_index(obj_control.hand_list,desel_inst)); //delete id from list
      desel_inst.image_blend = -1; //default blend
     }
  }
  
  if obj_control.cards_in_tableau == 0 {
   obj_control.actions[1] = true; //refill
   obj_stack.s_actions[0] = true
  }
  
  
  c_actions[3] = false; //stop action
}










//action #4
//remove/destroy cards when hand made
if c_actions[4] == true {
  obj_control.timer_can_click = 5;

  if image_yscale > 0 {
   image_yscale -= 0.1;
  } else {
     ds_list_replace(obj_control.free_list,card_pos,1);
     instance_destroy();
     c_actions[4] = false;
    }
}







//action #5
//card marked - right click 
if !obj_control.timer_can_click {
 if obj_control.ticks {
  if position_meeting(mouse_x,mouse_y,self) and mouse_check_button_pressed(mb_right) and !card_selected {
   c_actions[5] = true;
  }
 }
}

if c_actions[5] == true {
  obj_control.timer_can_click = 5;
   obj_control.draw_message = false;

  if card_marked == 0  {
   card_marked = 1;
   image_blend = make_colour_rgb(80,80,80);
  } else if card_marked == 1  {
     card_marked = 2;
     image_blend = make_colour_rgb(120,80,80);
    } else if card_marked == 2  {
       card_marked = 3;
       image_blend = make_colour_rgb(80,120,80);
      } else if card_marked == 3 {
         card_marked = false;
         image_blend = -1;
        }
   
     
   
     

  c_actions[5] = false; //stop action
}
