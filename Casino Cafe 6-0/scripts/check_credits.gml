// This script is called once each step by the credits controller object
// It checks the number of credits the player has remaining, and sets
// the bet buttons accordingly.

if (credits < 10)
{
    bet10_button.image_single = 0;
}

if (credits < 5)
{
    bet5_button.image_single = 0;
}

if (credits == 0)
{
    bet1_button.image_single = 0;
}
