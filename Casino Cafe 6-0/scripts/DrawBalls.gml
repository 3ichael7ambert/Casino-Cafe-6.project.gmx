// ScriptCopyright: 2008 Jorge Joaquin Pareja, japreja@users.sourceforge.net
// ScriptLanguage:  English_US
// ScriptLicense:   GPL (GNU General Public License)
// LicenseURL:      http://www.gnu.org/copyleft/gpl.html
// ScriptAuthor:    Jorge J. Pareja
// ThanksTo:        Mnementh for the help with this script
//                      http://gmc.yoyogames.com/index.php?showuser=82251
{
    var myRand;
    // clear the currently hit spots while keeping the users selections
    ClearSpots(1);
    
    // start picking balls if Bet is greater than 0
    // and NumSpotsSelected is greater than 2
    if((global.NumSpotsSelected > 1)& (global.Bet > 0))
    {
        // we will need a list
        myList = ds_list_create();
        
        // Mnementh helped here with this do/while/until statement
        // Start picking balls untill we have 20
        do
        {
            var tmp;
            // store a random number between 1 and 80
            tmp = round(random(79)) + 1;
            // add the number to the list ONLY if it is NOT
            // akready there
            while(ds_list_find_index(myList, tmp) < 0)
            {
                ds_list_add(myList, tmp);
            } // end while
        }
        until(ds_list_size(myList) = 20) // keep going till we have 20 numbers
        
        //Now we need to convert the list to our numRandom array and set our spots
        // accordingly!
        // We have 20 numbers to pick
        for(i=0; i<=19; i+=1)
        {
            // get the current pick from the list and put it in the current numRandom
            global.numRandom[i] = ds_list_find_value(myList, i);
            // update the current Balls image index to the coresponding random number
            Ball[i].image_index = global.numRandom[i];
            
            // declair a variable for use as our current spot (there are 80
            // and they corespond to the current numRandom
            var a;
            a = global.numRandom[i];
            
            // If our spot is selected
            if(Spot[a].Selected = 1)
            {
                // we have a hit!
                // Update the spots sprite,
                Spot[a].sprite_index = KenoSpots_HitSelected;
                // set the new sprites image index,
                Spot[a].image_index = a;
                // Set the spot to hit,
                Spot[a].Hit = 1;
                // and finaly incriment the current number of hits!
                global.NumHits = global.NumHits + 1;
            }
            // if our spot is NOT selected
            else
            {
                // we need to still display a hit at that spot, just with
                // a different sprite
                Spot[a].sprite_index = KenoSpots_BallHit;
                Spot[a].image_index = a;
            } // end if else
        } // end for

        // we need to destroy the list
        ds_list_destroy(myList);
        
    } // end if
    
    // calculate the payout or loss
    PayOuts(global.NumBallsSelected,global.NumHits,global.Bet,global.Cash);
    // update the rooms caption
    UpdateInfo();
} // end script
