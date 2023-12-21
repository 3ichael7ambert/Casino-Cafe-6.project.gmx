// Deals a hand by randomly choosing 5 card objects from the deck array set up by
// the initialize_game script  (see the initialize_game script for details)


randomize();

// turn off all the payout window elements

scoreboard_lo();

// A Half second delay...just for effect :-)

delay = 500;

// ----------
// 'Shuffles' the deck by setting all still_in_deck elements to true.
//
// still_in_deck is an array of flags that correspond to each card object in the deck array.
//
// When set to true it means the card is still in the deck and available to be dealt.
// Once the card is dealt, the corresponding element is set to false to signify it has
// already been used.  This is done to prevent a card from being dealt more than once per hand.
// ----------

for (abc = 0; abc < 53; abc += 1)
    still_in_deck[abc] = true;

  
// ----------
// Deal out five cards by randomly selecting a value between 0 and 52 and changing the
// card back object into the corresponding card object selected from the deck array.
//
// When a random number is picked, it is checked against the still_in_deck array to see if that card
// is still available...if not it keeps choosing another random number until a playable card
// is selected.
//
// Once a playable card is found, the card_back object at that card's position is changed to
// an instance of the selected card object and the card is then flagged as no longer available in the
// still_in_deck array.  Also the corresponding hold button object is activated.
// ----------

// Card 1

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
position_destroy(5,325)
instance_create(5,325,deck[pick]);
audio_play_sound(deal_card_snd,1,false);
still_in_deck[pick] = false;
hold_button1.image_single = 1;

// Card 2

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

position_destroy(165,325);
instance_create(165,325,deck[pick]);

audio_play_sound(deal_card_snd,1,false);

still_in_deck[pick] = false;
hold_button2.image_single = 1;

// Card 3
 
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

position_destroy(325,325);
instance_create(325,325,deck[pick]);

audio_play_sound(deal_card_snd,1,false);

still_in_deck[pick] = false;
hold_button3.image_single = 1;

// Card 4
 
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

position_destroy(485,325);
instance_create(485,325,deck[pick]);

audio_play_sound(deal_card_snd,1,false);

still_in_deck[pick] = false;
hold_button4.image_single = 1;

// Card 5

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

position_destroy(645,325);
instance_create(645,325,deck[pick]);

audio_play_sound(deal_card_snd,1,false);

still_in_deck[pick] = false;
hold_button5.image_single = 1;

// Once all the cards are dealt, check the value of the hand

analyze_hand();
  
