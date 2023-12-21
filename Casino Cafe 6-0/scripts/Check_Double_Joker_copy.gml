//Script for Checking Double Joker hands
var i,j,GP1=0,GP2=0,JK=0,HC=0,TA=0,dups=0,flush=false,dbl=false,fourofakind=false,fiveofakind=false,pr=0;
var ST=ds_list_create(),SA=ds_list_create(),LV=ds_list_create(),LS=ds_list_create();

for(i=0;i<11;i++) {HA[i]   = false;} //reset every hands 
for(i=0;i<5;i++)  {hand[i] = false;}
for(i=0;i<5;i++)  {hand[i] = ds_list_find_value(obj_control.hand_list,i);}

ds_list_add(LV,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0); // prepare list (2,3,4,5,6,7,8,9,10,J,Q,K,A) - position 0 are number of wild/2s 
ds_list_add(LS,0,0,0,0,0); //prepare list/filled with 0s at beginning 1,2,3,4 - four suits - position 0 is the number of wild/2s

//count amount of each type of cards 
for(i=0;i<5;i++) {   //go through all cards in hand[i]
  if hand[i].card_face == 52 or hand[i].card_face == 53 { //if joker
   JK += 1; //add to jokers
   HC +=1;  //add to high cards
   for(j=0;j<ds_list_size(LV);j++) {ds_list_replace(LV,j,ds_list_find_value(LV,j)+1);} //add to every card type
   for(j=0;j<ds_list_size(LS);j++) {ds_list_replace(LS,j,ds_list_find_value(LS,j)+1);} //add to every suit type
  } else { //else if card is not joker
     if ds_list_find_index(ST,hand[i].value) == -1 { //if card is not already in list
      ds_list_add(ST,hand[i].value); //add if not already in list 
     } else dups +=1; //number of (non-wild 2s) duplicates
     ds_list_replace(LV,hand[i].value,ds_list_find_value(LV,hand[i].value)+1); //else +1 for each card in hand[i]
     ds_list_replace(LS,hand[i].suit,ds_list_find_value(LS,hand[i].suit)+1); //else +1 for each suit in hand[i]
    }
  if hand[i].value > 9 {HC +=1;} //add to high cards if value of card is higher than 9 (for wild royal hands etc)
}

ds_list_sort(ST,false); //sort ST list (with Ace=14)
ds_list_copy(SA,ST);    //copy original straight list
if ds_list_find_index(SA,14) != -1 {ds_list_replace(SA,0,1);} //replace Ace=14 with Ace=1 (for "wheel" type hands (A/1,2,3,4,5)
ds_list_sort(SA,false); //sort straight list (with Ace=1)

for(i=0;i<ds_list_size(LV);i++) {if ds_list_find_value(LV,i) == 2 {pr+=1;} }//how many pair
if ds_list_find_index(LV,5) != -1 {fiveofakind = true;}                     //five of a kind present
if ds_list_find_index(LV,4) != -1 {fourofakind = true;}                     //four of a kind present
if ds_list_find_index(LV,2) != -1 {dbl=true;}                               //double/pair present
if ds_list_find_index(LS,5) != -1 {flush=true;}                             //flush present
for(i=0;i<ds_list_size(LV);i++) {if ds_list_find_value(LV,i) == 3 {TA +=1;}}//number of triples
for(i=0;i<ds_list_size(ST)-1;i++) {GP1 += (ds_list_find_value(ST,i) - ds_list_find_value(ST,i+1))-1;}//find how many gaps there is (aces=value14)
for(i=0;i<ds_list_size(SA)-1;i++) {GP2 += (ds_list_find_value(SA,i) - ds_list_find_value(SA,i+1))-1;}//find how many gaps there is (aces=value1)

//
                                                                         {for(i=0;i<12;i++){HA[i]=false; HA[0]=true;}}  //(nothing) High Card
if JK or pr == 1                                                         {for(i=0;i<12;i++){HA[i]=false; HA[1]=true;}}  //one pair
if pr == 2                                                               {for(i=0;i<12;i++){HA[i]=false; HA[2]=true;}}  //two pair
if TA > 0                                                                {for(i=0;i<12;i++){HA[i]=false; HA[3]=true;}}  //three of a kind
if (GP1 <= JK and !dups) or (GP2 <= JK and !dups)                        {for(i=0;i<12;i++){HA[i]=false; HA[4]=true;}}  //straight
if flush                                                                 {for(i=0;i<12;i++){HA[i]=false; HA[5]=true;}}  //flush
if (!JK and TA == 1 and dbl) or (JK and TA == 2)                         {for(i=0;i<12;i++){HA[i]=false; HA[6]=true;}}  //fullhouse
if fourofakind                                                           {for(i=0;i<12;i++){HA[i]=false; HA[7]=true;}}  //four of a kind
if (GP1 <= JK and !dups and flush) or (GP2 <= JK and !dups and flush)    {for(i=0;i<12;i++){HA[i]=false; HA[8]=true;}}  //straight flush
if HC == 5 and flush                                                     {for(i=0;i<12;i++){HA[i]=false; HA[9]=true;}}  //Royal
if fiveofakind                                                           {for(i=0;i<12;i++){HA[i]=false; HA[10]=true;}} //five of a kind

for(i=0;i<12;i++) {if HA[i] {HM[i] +=1;}  } //+1 to type of hand made

ds_list_destroy(ST); ds_list_destroy(SA); ds_list_destroy(LV); ds_list_destroy(LS); //destroy all lists created in script
