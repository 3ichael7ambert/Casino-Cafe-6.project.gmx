// ScriptCopyright: 2008 Jorge Joaquin Pareja, japreja@users.sourceforge.net
// ScriptLanguage:  English_US
// ScriptLicense:   GPL (GNU General Public License)
// LicenseURL:      http://www.gnu.org/copyleft/gpl.html
// ScriptAuthor:    Jorge J. Pareja
// ScriptName:      BtnBetDown_Click_Left.gml
// ThanksTo:        
//
{
    if(BtnBetDown.Enabled = 1)
    {
        if(global.Bet > 0)
        {
            BtnBetDown.image_index = 3;
            
            global.Bet -= 1;
            
            BtnBetDown.image_index = 2;
            
            if(global.Bet = 0)
            {
                BtnBetDown.Enabled = 0;
                BtnBetDown.image_index = 0;
                BtnStart.Enabled = 0;
                BtnStart.image_index = 0;
            }// endif
            
            if(global.Bet <= 39)
            {
                BtnBetUp.Enabled = 1;
                BtnBetUp.image_index = 1;
            }//endif
        }
        else
        {
            BtnBetDown.Enabled = 0;
            BtnBetDown.image_index = 0;
            show_message("Bet is already 0");
        }//endifelse
    }//endif
    
    UpdateInfo();

}
