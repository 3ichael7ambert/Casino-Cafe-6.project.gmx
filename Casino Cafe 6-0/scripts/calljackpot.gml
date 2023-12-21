//4- Payout
if global.game=1
{
global.money+=global.jackpot_g1;global.lastwon=global.jackpot_g1;global.jackpot_g1=0;
repeat (75) instance_create(random(room_width),760,obj_coin);audio_play_sound(snd_g0_coin,1,false);
}

if global.game=2
{
global.money+=global.jackpot_g2;global.lastwon=global.jackpot_g2;global.jackpot_g2=0;
repeat (75) instance_create(random(room_width),760,obj_coin);audio_play_sound(snd_g0_coin,1,false);
}

if global.game=3
{
global.money+=global.jackpot_g3;global.lastwon=global.jackpot_g3;global.jackpot_g3=0;
repeat (75) instance_create(random(room_width),760,obj_coin);audio_play_sound(snd_g0_coin,1,false);
}
