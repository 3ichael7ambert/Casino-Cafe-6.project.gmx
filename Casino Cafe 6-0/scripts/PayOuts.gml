// ScriptCopyright: 2008 Jorge Joaquin Pareja, japreja@users.sourceforge.net
// ScriptLanguage:  English_US
// ScriptLicense:   GPL (GNU General Public License)
// LicenseURL:      http://www.gnu.org/copyleft/gpl.html
// ScriptAuthor:    Jorge J. Pareja
// ScriptName:      PayOuts.gml
//
// ScriptArguments: // using arguments is a work in proerss, currently not finctional
//                 argument0: Number of balls selected
//                 argument1: Number of balls hit
//                 argument2: current Bet amount
//                 argument3: current Cash
// ThanksTo:        
{
    var numBallsSelected;
    numBallsSelected = argument0;
    var numBallsHit;
    numBallsHit = argument1;
    var curBet;
    curBet = argument2;
    var curCash;
    curCash = argument3;
    
    // I made up a chart for a basic payout table as follows by multiplying
    // the number of hits by the number of spots selected,  which is not
    // a proper payout table!
    //
    //                  <--  Number of selected spots -->
    //      __|__2__|__3__|__4__|__5__|__6__|__7__|__8__|__9__|_10__|
    //     2__|__4__|__6__|__8__|_____|_____|_____|_____|_____|_____|
    //  H  3__|_____|__9__|_12__|_15__|_18__|_21__|_____|_____|_____|
    //  I  4__|_____|_____|_16__|_20__|_24__|_28__|_32__|_36__|_40__|
    //  T  5__|_____|_____|_____|_25__|_30__|_35__|_40__|_45__|_50__|
    //  S  6__|_____|_____|_____|_____|_36__|_42__|_48__|_54__|_60__|
    //     7__|_____|_____|_____|_____|_____|_49__|_56__|_63__|_70__|
    //     8__|_____|_____|_____|_____|_____|_____|_64__|_72__|_80__|
    //     9__|_____|_____|_____|_____|_____|_____|_____|_81__|_90__|
    //     10_|_____|_____|_____|_____|_____|_____|_____|_____|_100_|
    //
    //
    // since we have a general layout on how the table is to be setup, we
    // can change the payouts later using the following variables.
    /*
        Code moved to room creation code
    */
    // for a total of 36 possable multipliers

    // We now need to asign the appropriate values to them, this is done so you
    // can change the payouts by just changing the respective values below using
    // the above chart as a sample.  I could have used a grid to start, but chose
    // not to, to better show an alternate way how to do this!
    global._2_outof_2 = 1;
    global._2_outof_3 = 1;
    global._2_outof_4 = 1;
    global._3_outof_3 = 2;
    global._3_outof_4 = 2;
    global._3_outof_5 = 2;
    global._3_outof_6 = 2;
    global._3_outof_7 = 1;
    global._4_outof_4 = 4;
    global._4_outof_5 = 5;
    global._4_outof_6 = 10;
    global._4_outof_7 = 2;
    global._4_outof_8 = 2;
    global._4_outof_9 = 1;
    global._4_outof_10 = 1;
    global._5_outof_5 = 25;
    global._5_outof_6 = 20;
    global._5_outof_7 = 5;
    global._5_outof_8 = 5;
    global._5_outof_9 = 5;
    global._5_outof_10 = 5;
    global._6_outof_6 = 40;
    global._6_outof_7 = 40;
    global._6_outof_8 = 50;
    global._6_outof_9 = 50;
    global._6_outof_10 = 13;
    global._7_outof_7 = 100;
    global._7_outof_8 = 100;
    global._7_outof_9 = 100;
    global._7_outof_10 = 63;
    global._8_outof_8 = 200;
    global._8_outof_9 = 200;
    global._8_outof_10 = 150;
    global._9_outof_9 = 400;
    global._9_outof_10 = 400;
    global._10_outof_10 = 800;
    
    // now to get it all working
    
    switch(global.NumSpotsSelected)
    {
        case 2:
             //
             if(global.NumHits = 2)
             {
                score2of2();
                sound_play(BallSelected);
             }
             else
             {
                YouLose();
             }
             break;
        case 3:
             //
             if(global.NumHits = 2)
             {
                score2of3();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 3)
             {
                score3of3();
                sound_play(BallSelected);
             }
             else
             {
                YouLose();
             }
             break;
        case 4:
             //
             if(global.NumHits = 2)
             {
                score2of4();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 3)
             {
                score3of4();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 4)
             {
                score4of4();
                sound_play(BallSelected);
             }
             else
             {
                YouLose();
             }
             break;
        case 5:
             //
             if(global.NumHits = 3)
             {
                score3of5();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 4)
             {
                score4of5();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 5)
             {
                score5of5();
                sound_play(BallSelected);
             }
             else
             {
                YouLose();
             }
             break;
        case 6:
             //
             if(global.NumHits = 3)
             {
                score3of6();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 4)
             {
                score4of6();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 5)
             {
                score5of6();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 6)
             {
                score6of6();
                sound_play(BallSelected);
             }
             else
             {
                YouLose();
             }
             break;
        case 7:
             //
             if(global.NumHits = 3)
             {
                score3of7();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 4)
             {
                score4of7();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 5)
             {
                score5of7();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 6)
             {
                score6of7();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 7)
             {
                score7of7();
                sound_play(BallSelected);
             }
             else
             {
                YouLose();
             }
             break;
        case 8:
             //
             if(global.NumHits = 4)
             {
                score4of8();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 5)
             {
                score5of8();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 6)
             {
                score6of8();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 7)
             {
                score7of8();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 8)
             {
                score8of8();
                sound_play(BallSelected);
             }
             else
             {
                YouLose();
             }
             break;
        case 9:
             //
             if(global.NumHits = 4)
             {
                score4of9();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 5)
             {
                score5of9();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 6)
             {
                score6of9();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 7)
             {
                score7of9();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 8)
             {
                score8of9();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 9)
             {
                score9of9();
                sound_play(BallSelected);
             }
             else
             {
                YouLose();
             }
             break;
        case 10:
             //
             if(global.NumHits = 4)
             {
                score4of10();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 5)
             {
                score5of10();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 6)
             {
                score6of10();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 7)
             {
                score7of10();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 8)
             {
                score8of10();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 9)
             {
                score9of10();
                sound_play(BallSelected);
             }
             else if(global.NumHits = 10)
             {
                score10of10();
                sound_play(BallSelected);
             }
             else
             {
                YouLose();
             }
             break;
    }
    
}
