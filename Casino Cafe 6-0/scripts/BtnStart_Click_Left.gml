// ScriptCopyright: 2008 Jorge Joaquin Pareja, japreja@users.sourceforge.net
// ScriptLanguage:  English_US
// ScriptLicense:   GPL (GNU General Public License)
// LicenseURL:      http://www.gnu.org/copyleft/gpl.html
// ScriptAuthor:    Jorge J. Pareja
// ScriptName:      BtnStart_Click_Left.gml
// ThanksTo:        
//
{
    if(BtnStart.Enabled = 1)
    {
        BtnStart.sprite_index = Button_Start;
        BtnStart.image_index = 3;
        BtnStart.image_speed = 0;
        
        if(global.Bet > global.Cash)
        {
            show_message("You cannot bet more than you have! # # Please Bet Down!");
            exit;
        }
        
        DrawBalls();
    }
}
