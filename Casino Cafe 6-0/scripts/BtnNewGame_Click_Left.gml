// ScriptCopyright: 2008 Jorge Joaquin Pareja, japreja@users.sourceforge.net
// ScriptLanguage:  English_US
// ScriptLicense:   GPL (GNU General Public License)
// LicenseURL:      http://www.gnu.org/copyleft/gpl.html
// ScriptAuthor:    Jorge J. Pareja
// ScriptName:      BtnNewGame_Click_Left.gml
// ThanksTo:        
//
{
    //
    
    for(i=1; i<=80; i+=1)
    {
        Spot[i].Hit = 0;
        Spot[i].Selected = 0;
        Spot[i].sprite_index = KenoSpots_Normal;
        Spot[i].image_index = i;
    } // end for
    global.NumHits = 0;
    global.NumSpotsSelected = 0;
    BtnClearBoard.image_index = 0;
    BtnClearBoard.Enabled = 0;
    BtnStart.image_index = 0;
    BtnStart.Enabled = 0;
    global.NumSpotsSelected = 0;
    global.Bet = 0;
    global.Cash = 500;
    
    UpdateInfo();
    
    // stop scrolling through the images on the 9 buttons
    BtnStart.image_index = 0;
    BtnStart.image_speed = 0;
    BtnStart.index = 0;
    BtnStart.Enabled = 1;
    BtnBetUp.image_index = 1; // this needs to display that it is enabled 
    BtnBetUp.image_speed = 0;
    BtnBetUp.index = 1;
    BtnBetUp.Enabled = 1;     // We need to keep this enabled at start
    BtnBetDown.image_index = 0;
    BtnBetDown.image_speed = 0;
    BtnBetDown.index = 2;
    BtnBetDown.Enabled = 0;
    BtnClearBoard.image_index = 0;
    BtnClearBoard.image_speed = 0;
    BtnClearBoard.index = 3;
    BtnClearBoard.Enabled = 0;
    BtnExit.image_speed = 0;
    BtnExit.image_index = 1;
    BtnExit.index = 4;
    BtnOptions.image_index = 0;
    BtnOptions.image_speed = 0;
    BtnOptions.index = 5;
    BtnSaveGame.image_index = 0;
    BtnSaveGame.image_speed = 0;
    BtnSaveGame.index = 6;
    BtnLoadGame.image_index = 0;
    BtnLoadGame.image_speed = 0;
    BtnLoadGame.index = 7;
    BtnNewGame.image_index = 0;
    BtnNewGame.image_speed = 0;
    BtnNewGame.index = 8;
    BtnNewGame.Enabled = 0;
}
