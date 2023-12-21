// ----------
// Set up the global variables
// ----------

globalvar cards_by_rank;
globalvar cards_in_hand;
globalvar deck;
globalvar credits;
globalvar bet;
globalvar is_draw;
globalvar still_in_deck;



// This is an array of 52 elements that represents all the card objects in the virtual deck.  
// The array elements hold the names of the card objects.  The array is then used like an index
// by the deal_cards and draw_cards scripts. 


deck[0] = card_2c;
deck[1] = card_3c;
deck[2] = card_4c;
deck[3] = card_5c;
deck[4] = card_6c;
deck[5] = card_7c;
deck[6] = card_8c;
deck[7] = card_9c;
deck[8] = card_10c;
deck[9] = card_jc;
deck[10] = card_qc;
deck[11] = card_kc;
deck[12] = card_ac;

deck[13] = card_2d;
deck[14] = card_3d;
deck[15] = card_4d;
deck[16] = card_5d;
deck[17] = card_6d;
deck[18] = card_7d;
deck[19] = card_8d;
deck[20] = card_9d;
deck[21] = card_10d;
deck[22] = card_jd;
deck[23] = card_qd;
deck[24] = card_kd;
deck[25] = card_ad;

deck[26] = card_2h;
deck[27] = card_3h;
deck[28] = card_4h;
deck[29] = card_5h;
deck[30] = card_6h;
deck[31] = card_7h;
deck[32] = card_8h;
deck[33] = card_9h;
deck[34] = card_10h;
deck[35] = card_jh;
deck[36] = card_qh;
deck[37] = card_kh;
deck[38] = card_ah;

deck[39] = card_2s;
deck[40] = card_3s;
deck[41] = card_4s;
deck[42] = card_5s;
deck[43] = card_6s;
deck[44] = card_7s;
deck[45] = card_8s;
deck[46] = card_9s;
deck[47] = card_10s;
deck[48] = card_js;
deck[49] = card_qs;
deck[50] = card_ks;
deck[51] = card_as;

deck[52] = card_joker;
  
