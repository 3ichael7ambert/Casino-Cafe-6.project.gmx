// ScriptCopyright: 2008 Jorge Joaquin Pareja, japreja@users.sourceforge.net
// ScriptLanguage:  English_US
// ScriptLicense:   GPL (GNU General Public License)
// LicenseURL:      http://www.gnu.org/copyleft/gpl.html
// ScriptAuthor:    Jorge J. Pareja
// ScriptName:      BtnClearBoard_Click_Left.gml
// ThanksTo:        
//
{

    if(BtnClearBoard.Enabled = 1)
    {
        BtnClearBoard.sprite_index = Button_ClearBoard;
        BtnClearBoard.image_index = 3;
        BtnClearBoard.image_speed = 0;
        
        ClearSpots(0);
        
        BtnClearBoard.sprite_index = Button_ClearBoard;
        BtnClearBoard.image_index = 0;
        BtnClearBoard.image_speed = 0;
        BtnClearBoard.Enabled = 0;
    }
}
