{
    if((BtnBetUp.Enabled = 1)&& (global.Cash >=1))
    {
        // set the click image on the button
        BtnBetUp.image_index = 3;
        
        // if the current bet is 40 or less
        if(global.Bet <= 39)
        {
            if(global.Bet >= global.Cash)
            {
                show_message("You cannot bet more than you have!");
                exit;
            }
            // incriment the bet
            global.Bet += 1;
            
            if((BtnStart.Enabled = 0) && (global.NumSpotsSelected >= 2))
            {
                BtnStart.Enabled = 1;
                BtnStart.image_index = 1;
            }
            if(global.Bet = 40)
            {
                BtnBetUp.Enabled = 0;
                BtnBetUp.image_index = 0;
            }
        }
        // if the bet is already at 40
        else
        {
            // display a notification that the bet is already at max
            BtnBetUp.Enabled = 0;
            BtnBetUp.image_index = 0;
            show_message("Maximum bet is 40!");
        } // end if
    } // end if
    
    // Check to see if we need to enable the bet down button
    if(global.Bet > 0)
    {
        BtnBetDown.Enabled = 1;
        BtnBetDown.image_index = 1;
    }
    else
    {
        BtnBetDown.enabled = 0;
        BtnBetDown.image_index = 0;
    }
    
    // update the rooms caption
    UpdateInfo();
}
