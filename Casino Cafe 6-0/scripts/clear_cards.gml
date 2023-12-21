// ----------
// This script clears out all of the old card objects
// and creates new cards which only show the card backs
//
// This is used to reset the card objects in between deals
// ----------

// Get rid of the old cards

position_destroy(5,325);
position_destroy(165,325);
position_destroy(325,325);
position_destroy(485,325);
position_destroy(645,325);

// Create 5 card back instances ... these are used as placeholders
// to give the deal script somthing to convert into 'real' cards

instance_create(5,325,card_back);
instance_create(165,325,card_back);
instance_create(325,325,card_back);
instance_create(485,325,card_back);
instance_create(645,325,card_back);



