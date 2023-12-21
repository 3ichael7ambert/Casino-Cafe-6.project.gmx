// This script is called when the player clicks on the draw button

//  A half of a second delay between cards - just for effect :-)
delay = 500;

// Discard flags...if true it signifies card has been destroyed (discarded)
// and a new one needs to be dealt

discard1 = false;
discard2 = false;
discard3 = false;
discard4 = false;
discard5 = false;



// Check each card position to see if the corresponding hold button has been pressed
//
// If the card's hold button has not been pressed, then the card object is destroyed and a new
// card gets dealt 

// Clear out the discards by displaying a solid black card object

if (hold_button1.image_single == 1)
{
    position_destroy(5,325);
    discard1 = true;
    hold_button1.image_single = 0;
}

if (hold_button2.image_single == 1)
{
    position_destroy(165,325);
    discard2 = true;
    hold_button2.image_single = 0;

}

if (hold_button3.image_single == 1)
{
    position_destroy(325,325);
    discard3 = true;
    hold_button3.image_single = 0;

}

if (hold_button4.image_single == 1)
{
    position_destroy(485,325);
    discard4 = true;
    hold_button4.image_single = 0;

}

if (hold_button5.image_single == 1)
{
    position_destroy(645,325);
    discard5 = true;
    hold_button5.image_single = 0;

}


// ...and then check the discard flags and draw new cards where needed
//    (see the deal_cards script for an explanation of the dealing algorithm)

// Card 1

if (discard1)
{
    
    if (bet >= 15)
    {
        pick = floor(random(53));
    }
    else
    {
        pick = floor(random(52));
    }

    while (still_in_deck[pick] == false)
    {
        if (bet >= 15)
        {
            pick = floor(random(53));
        }
        else
        {
         pick = floor(random(52));
        }
    }


    instance_create(5,325,deck[pick]);
    
    audio_play_sound(deal_card_snd,1,false);
    
    still_in_deck[pick] = false;
}

// Card 2

if (discard2)
{
if (bet >= 15)
    {
        pick = floor(random(53));
    }
    else
    {
        pick = floor(random(52));
    }

    while (still_in_deck[pick] == false)
    {
        if (bet >= 15)
        {
            pick = floor(random(53));
        }
        else
        {
         pick = floor(random(52));
        }
    }


    instance_create(165,325,deck[pick]);
   
    audio_play_sound(deal_card_snd,1,false);
 
    still_in_deck[pick] = false;
}


// Card 3

if (discard3)
{ 
    if (bet >= 15)
    {
        pick = floor(random(53));
    }
    else
    {
        pick = floor(random(52));
    }

    while (still_in_deck[pick] == false)
    {
        if (bet >= 15)
        {
            pick = floor(random(53));
        }
        else
        {
         pick = floor(random(52));
        }
    }


    instance_create(325,325,deck[pick]);

    audio_play_sound(deal_card_snd,1,false);

    still_in_deck[pick] = false;
}


// Card 4

if (discard4)
{ 
        if (bet >= 15)
    {
        pick = floor(random(53));
    }
    else
    {
        pick = floor(random(52));
    }

    while (still_in_deck[pick] == false)
    {
        if (bet >= 15)
        {
            pick = floor(random(53));
        }
        else
        {
         pick = floor(random(52));
        }
    }


    instance_create(485,325,deck[pick]);
  
    audio_play_sound(deal_card_snd,1,false);
   
    still_in_deck[pick] = false;
}


// Card 5

if (discard5)
{
    if (bet >= 15)
    {
        pick = floor(random(53));
    }
    else
    {
        pick = floor(random(52));
    }

    while (still_in_deck[pick] == false)
    {
        if (bet >= 15)
        {
            pick = floor(random(53));
        }
        else
        {
         pick = floor(random(52));
        }
    }
    instance_create(645,325,deck[pick]);
   
    audio_play_sound(deal_card_snd,1,false);
    

    still_in_deck[pick] = false;
}

// Check the player's hand again

analyze_hand();

// If player is out of credits ask if they want to play again...if not then quit

if (global.credits == 0)
{
    if ( show_question("Out of credits...try again?") )
    {
        game_restart();
    }
    else
    {
        game_end();
    }
}

  
