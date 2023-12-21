wins = 0; //A number for keeping track of how big the win is (5 in a row = 8, 4 in a row = 4, 3 in a row = 2 (can be changed to whatever you want)).
gold = 0; //Sets the ammount of gold won this spin to 0.

//----- lines

for (i = 1; i >= max(0, 2 - lines); i--;) { //Repeats for the ammount straight lines in play.
    if (reel1w[i] == reel2w[i] && reel2w[i] == reel3w[i] && reel3w[i] == reel4w[i] && reel4w[i] == reel5w[i]) { //If all 5 spots match.
        wins += 8; //Adds to how big the win is.
        scr_get_reward(reel1w[i], 5); //Runs the script to get the reward for the spesific item (argument0 = the index of the item, argument1 = how many in a row).
        for (n = 0; n <= 4; n++) { //This loop sets each of the spots involved to winners.
            if (i == 0) {
                row1w[n] = 1;
            } else if (i == 1) {
                row2w[n] = 1;
            } else if (i == 2) {
                row3w[n] = 1;
            }
        }
        linew[i] = 1; //Sets the varible that states if a line has won to true.
    } else if (reel1w[i] == reel2w[i] && reel2w[i] == reel3w[i] && reel3w[i] == reel4w[i]) { //If we didn't match 5 symbols in a row, we will check if there are 4 in a row.
        wins += 4;
        scr_get_reward(reel1w[i], 4);
        for (n = 0; n <= 3; n++) {
            if (i == 0) {
                row1w[n] = 1;
            } else if (i == 1) {
                row2w[n] = 1;
            } else if (i == 2) {
                row3w[n] = 1;
            }
        }
        linew[i] = 1;
    } else if (reel1w[i] == reel2w[i] && reel2w[i] == reel3w[i]) { //If we didn't match 4 symbols in a row, we will check if there are 3 in a row.
        wins += 2;
        scr_get_reward(reel1w[i], 3);
        for (n = 0; n <= 2; n++) {
            if (i == 0) {
                row1w[n] = 1;
            } else if (i == 1) {
                row2w[n] = 1;
            } else if (i == 2) {
                row3w[n] = 1;
            }
        }
        linew[i] = 1;
    }
}
if (lines >= 3) { //Same as above.
    if (reel1w[2] == reel2w[2] && reel2w[2] == reel3w[2] && reel3w[2] == reel4w[2] && reel4w[2] == reel5w[2]) {
        wins += 8;
        scr_get_reward(reel1w[2], 5);
        for (n = 0; n <= 4; n++) {
            row3w[n] = 1;
        }
        linew[2] = 1;
    } else if (reel1w[2] == reel2w[2] && reel2w[2] == reel3w[2] && reel3w[2] == reel4w[2]) {
        wins += 4;
        scr_get_reward(reel1w[2], 4);
        for (n = 0; n <= 3; n++) {
            row3w[n] = 1;
        }
        linew[2] = 1;
    } else if (reel1w[2] == reel2w[2] && reel2w[2] == reel3w[2]) {
        wins += 2;
        scr_get_reward(reel1w[2], 3);
        for (n = 0; n <= 2; n++) {
            row3w[n] = 1;
        }
        linew[2] = 1;
    }
}

//"-,-" lines

for (i = -1; i <= min(1, (lines - 4) * 2); i+=2;) { //Same as above.
    if (reel1w[1 + i] == reel2w[1] && reel2w[1] == reel3w[1 - i] && reel3w[1 - i] == reel4w[1] && reel4w[1] == reel5w[1 + i]) {
        wins += 8;
        scr_get_reward(reel1w[1 + i], 5);
        row2w[1] = 1;
        row2w[3] = 1;
        if (i = 1) {
           row1w[2] = 1; 
           row3w[0] = 1; 
           row3w[4] = 1;
           linew[4] = 1;
        } else {
           row3w[2] = 1; 
           row1w[0] = 1; 
           row1w[4] = 1; 
           linew[3] = 1;
        }
    } else if (reel1w[1 + i] == reel2w[1] && reel2w[1] == reel3w[1 - i] && reel3w[1 - i] == reel4w[1]) {
        wins += 4;
        scr_get_reward(reel1w[1 + i], 4);
        row2w[1] = 1;
        row2w[3] = 1;
        if (i = 1) {
           row1w[2] = 1; 
           row3w[0] = 1; 
           linew[4] = 1;
        } else {
           row3w[2] = 1; 
           row1w[0] = 1; 
           linew[3] = 1;
        }
    } else if (reel1w[1 + i] == reel2w[1] && reel2w[1] == reel3w[1 - i]) {
        wins += 2;
        scr_get_reward(reel2w[1], 3);
        row2w[1] = 1;
        if (i = 1) {
           row1w[2] = 1; 
           row3w[0] = 1; 
           linew[4] = 1;
        } else {
           row3w[2] = 1; 
           row1w[0] = 1; 
           linew[3] = 1;
        }
    }
}

// ""-,, lines

for (i = -1; i <= min(1, (lines - 6) * 2); i+=2;) { //Same as above.
    if (reel1w[1 + i] == reel2w[1 + i] && reel2w[1 + i] == reel3w[1] && reel3w[1] == reel4w[1 - i] && reel4w[1 - i] == reel5w[1 - i]) {
        wins += 8;
        scr_get_reward(reel3w[1], 5);
        row2w[2] = 1;
        if (i = 1) {
           row1w[3] = 1; 
           row1w[4] = 1; 
           row3w[0] = 1; 
           row3w[1] = 1;
           linew[6] = 1;
        } else {
           row1w[0] = 1; 
           row1w[1] = 1; 
           row3w[3] = 1; 
           row3w[4] = 1;
           linew[5] = 1;
        }
    } else if (reel1w[1 + i] == reel2w[1 + i] && reel2w[1 + i] == reel3w[1] && reel3w[1] == reel4w[1 - i]) {
        wins += 4;
        scr_get_reward(reel3w[1], 4);
        row2w[2] = 1;
        if (i = 1) {
           row1w[3] = 1; 
           row3w[0] = 1; 
           row3w[1] = 1;
           linew[6] = 1;
        } else {
           row1w[0] = 1; 
           row1w[1] = 1; 
           row3w[3] = 1; 
           linew[5] = 1;
        }
    } else if (reel1w[1 + i] == reel2w[1 + i] && reel2w[1 + i] == reel3w[1]) {
        wins += 2;
        scr_get_reward(reel3w[1], 3);
        row2w[2] = 1;
        if (i = 1) {
           row3w[0] = 1; 
           row3w[1] = 1;
           linew[6] = 1;
        } else {
           row1w[0] = 1; 
           row1w[1] = 1; 
           linew[5] = 1;
        }
    }
}

// -"-,- lines

for (i = -1; i <= min(1, (lines - 8) * 2); i+=2;) { //Same as above.
    if (reel1w[1] == reel2w[1 + i] && reel2w[1 + i] == reel3w[1] && reel3w[1] == reel4w[1 - i] && reel4w[1 - i] == reel5w[1]) {
        wins += 8;
        scr_get_reward(reel3w[1], 5);
        row2w[0] = 1;
        row2w[2] = 1;
        row2w[4] = 1;
        if (i = 1) {
           row1w[3] = 1; 
           row3w[1] = 1;
           linew[8] = 1;
        } else {
           row1w[1] = 1; 
           row3w[3] = 1; 
           linew[7] = 1;
        }
    } else if (reel1w[1] == reel2w[1 + i] && reel2w[1 + i] == reel3w[1] && reel3w[1] == reel4w[1 - i]) {
        wins += 4;
        scr_get_reward(reel3w[1], 4);
        row2w[0] = 1;
        row2w[2] = 1;
        if (i = 1) {
           row1w[3] = 1; 
           row3w[1] = 1;
           linew[8] = 1;
        } else {
           row1w[1] = 1; 
           row3w[3] = 1; 
           linew[7] = 1;
        }
    } else if (reel1w[1] == reel2w[1 + i] && reel2w[1 + i] == reel3w[1]) {
        wins += 2;
        scr_get_reward(reel3w[1], 3);
        row2w[0] = 1;
        row2w[2] = 1;
        if (i = 1) {
           row3w[1] = 1;
           linew[8] = 1;
        } else {
           row1w[1] = 1; 
           linew[7] = 1;
        }
    }
}


if (gold > 0) { //If the ammount won is bigger than 0.
    counter = instance_create(0, 0, obj_counter); //Create the object that counts up our win.
    counter.num = gold; //Tells the counter how much was won.
    global.gold += gold; //Adds how much was won to the gold varible.
}

if (wins >= 8) { //Threshold for a "HUGE" win.
    audio_play_sound(snd_5x, 1, 0);
} else if (wins >= 4) { //Threshold for a "BIG" win.
    audio_play_sound(snd_4x, 1, 0);
} else if (wins >= 2) { //Threshold for a "regular" win.
    audio_play_sound(snd_3x, 1, 0);
}
