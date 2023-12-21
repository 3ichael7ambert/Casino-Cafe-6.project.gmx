// ScriptCopyright: 2008 Jorge Joaquin Pareja, japreja@users.sf.net
// ScriptLanguage:  English_US
// ScriptLicense:   GPL (GNU General Public License)
// LicenseURL:      http://www.gnu.org/copyleft/gpl.html
// ScriptAuthor:    Jorge J. Pareja
//
// ScriptName:      KenoSpot_Click_Left.gml
// ScriptPurpose:   To set and determine the state of the current
//                  spot.
//   
{
    // Clear All hit spots while keeping the selected spots by
    // passing an argument0 of 1 to ClearSpots()
    ClearSpots(1);
    
    // If the Spot is NOT yet selected
    if(Spot[argument0].Selected = 0)
    {
        // Check to see if we already reached the maximum
        // number of selected spots
        if(global.NumSpotsSelected = 10)
        {
            // if we did, alert the user
            show_message("Only a maximum of ten spots can be selected!");
            // and exit the script
            exit;
        }
        
        // if we havn't reached the maximum allowed Spots
        // set the spot to selected
        Spot[argument0].Selected = 1;
        // set the number of spots currently selected
        global.NumSpotsSelected += 1;
        // change the sprite of the Spot to alert the user
        Spot[argument0].sprite_index = KenoSpots_Selected;
        // set the index of the sprite
        Spot[argument0].image_index = Spot[argument0].index;
        
        // now check to see if the clear board button
        // is enabled
        if(BtnClearBoard.Enabled = 0)
        {
            // if it's disabled
            // set it to enabled
            BtnClearBoard.Enabled = 1;
            // and change the index of the sprites image
            BtnClearBoard.image_index = 1;
        }
    }
    else
    // If the spot IS selected
    {
        // deselect it,
        Spot[argument0].Selected = 0;
        // change the current number of spots selected accordingly,
        global.NumSpotsSelected -=1;
        // set the sprite of the spot to the normal sprite,
        Spot[argument0].sprite_index = KenoSpots_Normal;
        // and ensure the proper spot number is displayed!
        Spot[argument0].image_index = Spot[argument0].index;
        
        // If the number of spots is 0
        if(global.NumSpotsSelected < 1)
        {
            // Disable the clear button
            BtnClearBoard.Enabled = 0;
            // and set its image index accordingly
            BtnClearBoard.image_index = 0;
        }
    }
    
    // If there are 2 or more spots selected
    if(global.NumSpotsSelected > 1)
    {
        if(global.Bet > 0)
        {
            // enable the start button
            BtnStart.Enabled = 1;
            // set the propper image
            BtnStart.image_index = 1;
        }
    }
    else
    // if there is NOT 2 or more spots selected
    {
        // disable the start button
        BtnStart.Enabled = 0;
        // and set the propper image
        BtnStart.image_index = 0;
    }
    
    // set the rooms caption
    UpdateInfo();
}
