{
    if(global.Cash <= 0)
    {
        // busted, no more cash
        show_message("You lost all your money. #Please Try again!");
        BtnNewGame.image_index = 1;
        BtnNewGame.Enabled = 1;
        ClearSpots(0);

    }
    else
    {
        //
        sound_play(BoardCleared);
        global.Cash -= global.Bet;
    }
}
