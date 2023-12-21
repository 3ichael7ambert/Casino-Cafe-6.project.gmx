if global.game<1 then global.game=4;
if global.game>4 then global.game=1;

if global.spintime=global.maxspintime*0.20 {audio_play_sound(snd_g0_bounce,1,false);audio_sound_gain(snd_g0_bounce, 3, 0);}
if global.spintime=global.maxspintime*0.40 { audio_play_sound(snd_g0_bounce,1,false);audio_sound_gain(snd_g0_bounce, 3, 0);}
if global.spintime=global.maxspintime*0.60 { audio_play_sound(snd_g0_bounce,1,false);audio_sound_gain(snd_g0_bounce, 3, 0);}
if global.spintime=global.maxspintime*0.80 { audio_play_sound(snd_g0_bounce,1,false);audio_sound_gain(snd_g0_bounce, 3, 0);}
if global.spintime=global.maxspintime*0.99 { audio_play_sound(snd_g0_bounce,1,false);audio_sound_gain(snd_g0_bounce, 3, 0);}

///Bets 
if global.betrange=1 then global.bet=1;
if global.betrange=2 then global.bet=5;
if global.betrange=3 then global.bet=10;
if global.betrange=4 then global.bet=25;
if global.betrange=5 then global.bet=50;
if global.betrange=6 then global.bet=100;
if global.betrange=7 then global.bet=250;
if global.betrange=8 then global.bet=500;
if global.betrange=9 then global.bet=1000;
if global.betrange=10 then global.bet=2500;
if global.betrange=11 then global.bet=5000;
if global.betrange=12 then global.bet=10000;
if global.betrange=13 then global.bet=15000;
if global.betrange=14 then global.bet=25000;
if global.betrange=15 then global.bet=50000;
if global.betrange=16 then global.bet=100000;
if global.betrange=17 then global.bet=150000;
if global.betrange=18 then global.bet=250000;
if global.betrange=19 then global.bet=500000;
if global.betrange=20 then global.bet=1000000;
if global.betrange=21 then global.bet=1500000;
if global.betrange=22 then global.bet=2500000;
if global.betrange=23 then global.bet=5000000;
if global.betrange=24 then global.bet=10000000;
if global.betrange=25 then global.bet=15000000;
if global.betrange=25 then global.bet=25000000;
if global.betrange=25 then global.bet=50000000;
if global.betrange=25 then global.bet=100000000;

if global.betrange<1 then global.bet=1;
if global.betrange>25 then global.betrange=25;
if global.money<global.bet then global.betrange-=1;


//////////////////SPINS PHASES
if global.spin=0
{ 

}
//1-spinning
if global.spin=1
{ 
w1=0;w2=0;w3=0;w4=0;w5=0;w6=0;w7=0;w8=0;w9=0;w10=0;w11=0;w12=0;
w13=0;w14=0;w15=0;w16=0;w17=0;w18=0;w19=0;w20=0;w21=0;w22=0;
w23=0;w24=0;w25=0;
wt1=0;wt2=0;wt3=0;wt4=0;wt5=0;wt6=0;wt7=0;wt8=0;wt9=0;wt10=0;
wt11=0;wt12=0;wt13=0;wt14=0;wt15=0;wt16=0;wt17=0;wt18=0;
wt19=0;wt20=0;wt21=0;wt22=0;wt23=0;wt24=0;wt25=0;

r1l1.show=1;r2l1.show=1;r3l1.show=1;r4l1.show=1;r5l1.show=1;
r1l2.show=1;r2l2.show=1;r3l2.show=1;r4l2.show=1;r5l2.show=1;
r1l3.show=1;r2l3.show=1;r3l3.show=1;r4l3.show=1;r5l3.show=1;

global.spintime+=1; 
if global.spintime>=global.maxspintime then global.spin=2; 
}

//2-Apply Specials
if global.spin=2 { global.spin=3}

//3-Checkwin
if global.spin=3  
{
checklines(0);
checklines(1);
checklines(2);
checklines(3);
checklines(4);
checklines(5);
checklines(6);
checklines(7);
checklines(8);
checklines(9);
checklines(10);
checklines(11);
checkjackpot();
if r1l1.type=11 { global.scatters+=1;}
if r2l1.type=11 { global.scatters+=1;}
if r3l1.type=11 { global.scatters+=1;}
if r4l1.type=11 { global.scatters+=1;}
if r5l1.type=11 { global.scatters+=1;}
if r1l2.type=11 { global.scatters+=1;}
if r2l2.type=11 { global.scatters+=1;}
if r3l2.type=11 { global.scatters+=1;}
if r4l2.type=11 { global.scatters+=1;}
if r5l2.type=11 { global.scatters+=1;}
if r1l3.type=11 { global.scatters+=1;}
if r2l3.type=11 { global.scatters+=1;}
if r3l3.type=11 { global.scatters+=1;}
if r4l3.type=11 { global.scatters+=1;}
if r5l3.type=11 { global.scatters+=1;}

if global.game=1 
{
if global.scatters>=3 and global.freespins=0 
{global.freespins+=(global.scatters+3);audio_play_sound(snd_g1_bonus,1,false);audio_play_sound(snd_g1_bonus,1,false);}
global.spin=4;
}

if global.game=2 
{
if global.scatters>=2 and global.freespins=0
{global.freespins+=(global.scatters);audio_play_sound(snd_g2_bonus,1,false);audio_play_sound(snd_g2_bonus,1,false);}
global.spin=4;
}

if global.game=3
{
if global.scatters>=3 and global.freespins=0
{global.freespins+=(global.scatters);audio_play_sound(snd_g3_bonus,1,false);}
global.spin=4;
}
}

//4- Payout
if global.spin=4
{
payout();
global.money+=global.totalbet;
instance_create(x,y,obj_showcash);
if global.totalbet>0 and global.totalbet<=10 {repeat (3) instance_create(random(room_width),760,obj_coin);audio_play_sound(snd_g0_coin,1,false);}
if global.totalbet>10 and global.totalbet<=20 {repeat (9) instance_create(random(room_width),760,obj_coin);audio_play_sound(snd_g0_coin,1,false);}
if global.totalbet>20 and global.totalbet<=50 {repeat (12) instance_create(random(room_width),760,obj_coin);audio_play_sound(snd_g0_coin,1,false);}
if global.totalbet>50 and global.totalbet<=100 {repeat (15) instance_create(random(room_width),760,obj_coin);audio_play_sound(snd_g0_coin,1,false);}
if global.totalbet>100 and global.totalbet<=250 {repeat (20) instance_create(random(room_width),760,obj_coin);audio_play_sound(snd_g0_coin,1,false);}
if global.totalbet>250 and global.totalbet<=500 {repeat (25) instance_create(random(room_width),760,obj_coin);audio_play_sound(snd_g0_coin,1,false);}
if global.totalbet>500 {repeat (50) instance_create(random(room_width),760,obj_coin);
}

if global.freespins=0 then global.lastwin=global.totalbet;
if global.freespins>0 then global.lastwin=global.totalbet;
global.totalbet=0
global.spintime=0;
showwintrans();
global.spin=0;
global.scatters=0;
}
