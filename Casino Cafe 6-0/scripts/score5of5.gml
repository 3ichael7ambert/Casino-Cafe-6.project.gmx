{
    if(global.Cash >= 1)
    {
        global.Cash += (global.Bet * global._5_outof_5);
    }
    else
    {
        // busted, no more cash
        show_message("You lost all your money. #Please Try again!");
        BtnNewGame.image_index = 1;
        BtnNewGame.Enabled = 1;
        ClearSpots(0);
    }
}
