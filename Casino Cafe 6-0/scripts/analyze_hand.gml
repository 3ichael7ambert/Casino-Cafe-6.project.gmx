scoreboard_lo();

// ----------
// The ranks array is used to hold the count of how many
// times each rank was found in the players hand
//
// Each element corresponds to a rank from lo to hi
//  (ranks[0] = 2  ranks[12] = ace)
// ----------


ranks[0] = 0;
ranks[1] = 0;
ranks[2] = 0;
ranks[3] = 0;
ranks[4] = 0;
ranks[5] = 0;
ranks[6] = 0;
ranks[7] = 0;
ranks[8] = 0;
ranks[9] = 0;
ranks[10] = 0;
ranks[11] = 0;
ranks[12] = 0;
ranks[13] = 0;


// ----------
// These variables keep count of many of each suit the player has in their hand
// ----------

clubs = 0;
diamonds = 0;
hearts = 0;
spades = 0;

// ----------
// The elements of the two arrays declared below represent the players hand...each element
// represents a card.
//
// This array  keeps count of how many of each rank appears in the player's hand. For example,
// if the hand was 4 of a kind, then the array would have 2 elements set...to 1,4...corresponding to the
// number of times each rank was found in the hand. The sum of all the non-zero values set in the array
// will always be 5.  For example, a full house would be 2,3...for 3 of a kind it would be 3,1,1
// and so on...up to a possible 5 elements if no two ranks are the same...the array
// elements would be 1,1,1,1,1.  This array is used in analyzing the hand's value.
// ----------

cards_in_hand[0] = 0;
cards_in_hand[1] = 0;
cards_in_hand[2] = 0;
cards_in_hand[3] = 0;
cards_in_hand[4] = 0;

// ----------
// This array's elements hold the rank values of the cards in the player's hand.
// The data is used to check the hand to see if there is a straight.
// ----------

cards_by_rank[0] = 0;
cards_by_rank[1] = 0;
cards_by_rank[2] = 0;
cards_by_rank[3] = 0;
cards_by_rank[4] = 0;

// ------------
// If player has a joker, then go to the joker_analyze script.  The joker_analyze
// script is pretty much the same a this one except the logic for evaluating
// the hand is a little different
//-------------

if ( instance_exists(deck[52]) )
{
    joker_analyze();
    exit;
}

// ----------
// This process loops thru the entire deck array that was declared in the game initialization
// script...checking to see if an instance of that card object is currently in use.
// If an instance does exist, then the rank and suit values are added to the appropriate
// array.
// ----------

index = 0;

    
for (count = 0; count < 52; count += 1)
{
    if (instance_exists(deck[count]))
    {
        if (count < 13)
        {
            ranks[count] += 1;
            cards_by_rank[index] = count;
            index += 1;
            clubs += 1;
           
            
        }
        if (count > 12 and count < 26)
        {
            ranks[count - 13] += 1;
            cards_by_rank[index] = count - 13;
            index += 1;
            
            diamonds += 1;
            

          
        }
        if (count > 25 and count < 39)
        {
            ranks[count - 26] += 1;
            cards_by_rank[index] = count - 26;
            index += 1;

            hearts += 1;         
        }
        if (count > 38)
        {
            ranks[count - 39] += 1;
            cards_by_rank[index] = count - 39;
            index += 1;

            spades += 1;
       

        }
    }
}
   
    
   

// ----------
// OK, we know what card objects are in the players hand...now go thru each card object
// and check the rank of each card.  Place each rank value into the
// corresponding element of the cards_by_rank array...and then count how many of each rank
// there are and place the counts into the cards_in_hand array (the previously mentioned histogram)
// ----------
        
index = 0;
for (cnt = 0; cnt < 13; cnt += 1)
{
    if ( ranks[cnt] > 0)
    {
       cards_in_hand[index] = ranks[cnt];
       index += 1; 
    }
}


// ----------
// sort the cards_in_hand by rank from lo to hi
// ----------

for (i = 4; i >= 0; i -= 1)
  {
    for (j = 1; j <= i; j += 1)
    {
      if (cards_in_hand[j-1] > cards_in_hand[j])
      {
        temp = cards_in_hand[j-1];
        cards_in_hand[j-1] = cards_in_hand[j];
        cards_in_hand[j] = temp;
      }
    }
  }

// ----------
// sort cards_by_rank array lo to hi  
// ----------  


  for (i = 4; i >= 0; i -= 1)
  {
    for (j = 1; j <= i; j += 1)
    {
      if (cards_by_rank[j-1] > cards_by_rank[j])
      {
        temp = cards_by_rank[j-1];
        cards_by_rank[j-1] = cards_by_rank[j];
        cards_by_rank[j] = temp;
      }
    }
  }



  


// ----------
// Now that everything is all counted and sorted, let's analyze the hand...
// ----------

// Check for a flush...if there is one just set a flag for now

if (hearts == 5 or clubs == 5 or diamonds == 5 or spades == 5)
{
    flush_flag = true;
}
else
{
    flush_flag = false;
}

    
// Check for a straight - first make sure all 5 cards are of different ranks 
if (cards_in_hand[0] == 1 and cards_in_hand[1] == 1 and cards_in_hand[2] == 1 and cards_in_hand[3] == 1)
{ 
// if they check to see if the difference between hi and lo cards is 4
// or to see if we have a A-2-3-4-5 straight('the wheel')   
if ( (cards_by_rank[4] - cards_by_rank[0] == 4) or (cards_by_rank[4] == 12 and cards_by_rank[3] == 3))
{
    // OK we have a straight...now check the flush flag to see if we have a straight flush
    if (flush_flag)
    {
        // We have a straight flush...now see if it's a royal flush            
        if (cards_by_rank[4] == 12 and cards_by_rank[0] == 8)
        {
            // Yes it is a royal flush or...
            with (natural_royal_lo) instance_change(natural_royal_hi,false);
            if (is_draw == 1)
            {
                credits += bet * 250;
                play_win_sound();              
            }
            exit;              
        }
        else
        {        
            
            //...it's a regular straight flush or...
            with (straight_flush_lo) instance_change(straight_flush_hi,false);
            if (is_draw)
            {
                credits += (bet * 50);
                play_win_sound(); 
            }
            exit;
        }            
    }
    else
    {
       //...there's no flush at all...it's a straight
        with (straight_lo) instance_change(straight_hi,false);
        if (is_draw) 
        {
            credits += (bet * 4);
            play_win_sound();
        }
        exit;   
    }     
}


// No straight...check the flag to see if we have a flush
 
if (flush_flag)
{
    
    with (flush_lo) instance_change(flush_hi,false);
    if (is_draw)
    {
        credits += (bet*6);
        play_win_sound();
    }
    exit;
}
           
}  
  
// Check for 4 of a kind

    if (cards_in_hand[4] == 4)
    {
        
        with (four_of_a_kind_lo) instance_change(four_of_a_kind_hi,false);
        if (is_draw == 1)
        {
            credits += (bet * 25);
            play_win_sound(); 
            
        }
        exit;      
    }
    
// Check for a full house
       
    if (cards_in_hand[4] == 3 and cards_in_hand[3] == 2)
    {
        
        with (full_house_lo) instance_change(full_house_hi,false);
        if (is_draw == 1)
        {
            credits += (bet * 9);
            play_win_sound(); 
            
        }
        exit;
    }
    
// Check for 3 of a kind

    if (cards_in_hand[4] == 3)
    {
        
        with (three_of_a_kind_lo) instance_change(three_of_a_kind_hi,false)
        if (is_draw == 1)
        {
            credits += (bet * 3);
            play_win_sound(); 
            
        }
        exit;      
    }
      
// Check for 2 pair

    if (cards_in_hand[3] == 2)
    {
        
        with (two_pair_lo) instance_change(two_pair_hi,false);
        if (is_draw == 1)
        {
            credits += (bet * 2);
            play_win_sound(); 
        }
        
        exit;
    }
     
// Check for a pair...

    if (cards_in_hand[4] == 2)   
    {
        // ...if it's jacks or better it's a winner...
        
        if (ranks[9] == 2 or ranks[10] == 2 or ranks[11] == 2 or ranks[12] == 2)
        {
            
            with (jacks_or_better_lo) instance_change(jacks_or_better_hi,false);
            if (is_draw == 1)
            {
                credits += bet;
                play_win_sound(); 
            }
            
            exit;
        }
        
        else
        // ...otherwise it's no good
        {
           
            with (nothing_lo) instance_change(nothing_hi,false);
            if (is_draw == 1)
            {
                audio_play_sound(loser_snd,1,false);
            }
            exit;
        }
       
    }
   
    // If we don't have anything yet, then it's a hi-card only hand
    
    if (cards_in_hand[4] < 2)
    {
        
        with (nothing_lo) instance_change (nothing_hi,false);
        if (is_draw == 1)
        {
            audio_play_sound(loser_snd,1,false);
        }
        exit;
    }  
    

    
    

        
