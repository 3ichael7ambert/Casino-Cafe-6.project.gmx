// ScriptCopyright: 2008 Jorge Joaquin Pareja, japreja@users.sf.net
// ScriptLanguage:  English_US
// ScriptLicense:   GPL (GNU General Public License)
// LicenseURL:      http://www.gnu.org/copyleft/gpl.html
// ScriptAuthor:    Jorge J. Pareja
//
// ScriptName:      Create_Keno_Layout.gml
// ScriptPurpose:   This script lays out all of our keno spots and
//                  keno balls in their proper locations.

{
    //ToDo: Maybee show a process indicator, the sprite speed should be
    //      zero.
    //ToDoEnd:
    //
    //      There are 80 spots in a keno game, our sprite is 32x32 pixels
    //      we need code to create each spot 32 pixels apart from eacher
    //      in 4 rows of 10 columns for the top half, and the same for the
    //      bottom half, while leaving a space of 32 pixels between rows
    //      4 and 5.
    //
    //      In the following for loop, we start off by declairing i=1
    //      Don't set it to zero, we are going to use it to set the
    //      image_index of each object instance of the KenoSpot and
    //      for an array, this will help us create more functionality
    //      in our scripts by writing less code. Our spites are
    //      actualy strips of 81 images with the first one blank.
    //

    // declair 2 variable to keep track of where we are placing the objects
    // and set them to a value of 0 (zero).  We will need these again for
    // the placement of the 20 keno balls
    var myX, myY;
    myX = 0;
    myY = 0;
    for(i=1; i<=80; i+=1)
    {
        // Create an instance of our KenoSpot at our current myX and myY
        Spot[i] = instance_create(myX,myY,KenoSpot);

        // Set the image speed on the instance so it is not looping
        Spot[i].image_speed = 0;
        
        // now set the image index equal to the current spot number we are on
        Spot[i].image_index = i;
        
        // we are going to set some variables on each spot to see if the user
        // has selected it, if it has been hit, and if it has been both hit and
        // selected.
        Spot[i].Selected = 0;
        Spot[i].Hit = 0;
        
        // now setup the events we need on each instance! They will differ 
        // slightly
        Spot[i].index = i;
        
        // increment myX to equal myX + 32
        myX += 32;
        // if myX=320 (10 multiplied by our image width)
        // and
        // if myY is less than 96 (our third row(32X3)
        if ((myX=320) && (myY<96))
        {
            // we will only get here when we have 10 sprites each in 3 rows
            // set myX to 0 to start placing the instances at the left of the screen
            myX = 0;
            // as long as we are less than 96 for myY we will incriment it each
            // time myX hits 320
            myY += 32;
        }
        // as long as myX is 320 (the 10th column) and myY is 96 (were on the
        // fourth row, we now need to skip 64 pixels in our Y direction to leave
        // a gap of 32 pixels between rows 4 and 5,  We will end up drawing text
        // in that gap later so the player can see his/her current settings.
        else if((myX=320) && (myY=96))
        {
            myX = 0;
            myY += 64;
        }
        else if((myX=320) && (myY>=160))
        {
            myX = 0;
            myY += 32;
        } // end if
    } // end for
    
    // Now we can use simalar code to draw the keno balls, we need to set
    // myX and myY to values where we want to place the keno balls. We
    // will need 4 rows with 5 balls each.  There are no gaps between
    // rows here so it will make things a little easier.
    // One of the main differances is, we will not be using a particular
    // image_index on the ball since we didnt create random draws yet, so
    // we can keep image_index set to zero.
    myX = 352;
    myY = 48;
    for(i=1; i<=20; i+=1)
    {
        Ball[i] = instance_create(myX,myY,KenoBall);
        Ball[i].image_speed = 0;
        Ball[i].image_index = 0;
        Ball[i].index = i;
        myX += 32;
        if(myX=512)
        {
            myX = 352;
            myY += 32;
        }
    }
}
