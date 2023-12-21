// ScriptCopyright: 2008 Jorge Joaquin Pareja, japreja@users.sourceforge.net
// ScriptLanguage:  English_US
// ScriptLicense:   GPL (GNU General Public License)
// LicenseURL:      http://www.gnu.org/copyleft/gpl.html
// ScriptAuthor:    Jorge J. Pareja
{
    // if no arguments have been entered or if the arg0 is zero
    // clear all spots to a normal color and unmark the selected
    // ones.
    // If argument0 is set to one, we will keep the player
    // selections
    if(argument0 = 0)
    {
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
    }
    else if(argument0 = 1)
    {
        global.NumHits = 0;
        for(i=1; i<=80; i+=1)
        {
            Spot[i].Hit = 0;
            if(Spot[i].Selected > 0)
            {
                Spot[i].sprite_index = KenoSpots_Selected;
                Spot[i].image_index = i;
            }
            else
            {
                Spot[i].sprite_index = KenoSpots_Normal;
                Spot[i].image_index = i;
            } // end if else
        } // end for
    } // end if else if
    
    UpdateInfo();
} // end script
