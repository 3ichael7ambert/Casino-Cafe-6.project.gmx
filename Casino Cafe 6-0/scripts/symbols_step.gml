if global.game=1 {sprite_index=spr_g1_symbols};
if global.game=2 {sprite_index=spr_g2_symbols};
if global.game=3 {sprite_index=spr_g3_symbols};

if animate=0 then image_xscale=1;
if animate=1 
{
  if image_xscale=1 then grow=1;
  if image_xscale=0 then grow=2;
  if grow=1 then image_xscale-=0.2;
  if grow=2 then image_xscale+=0.2;
}

if image_xscale=0 then symb_random()

if global.spin=1 
{
  if object_index=r1l1 xor object_index=r1l2 xor object_index=r1l3 
    {if global.spintime=global.maxspintime*0.20 {r1l1.animate=0;r1l2.animate=0;r1l3.animate=0;}}
  if object_index=r2l1 xor object_index=r2l2 xor object_index=r2l3 
    {if global.spintime=global.maxspintime*0.40 {r2l1.animate=0;r2l2.animate=0;r2l3.animate=0;}}
  if object_index=r3l1 xor object_index=r3l2 xor object_index=r3l3 
    {if global.spintime=global.maxspintime*0.60 {r3l1.animate=0;r3l2.animate=0;r3l3.animate=0;}}
  if object_index=r4l1 xor object_index=r4l2 xor object_index=r4l3 
    {if global.spintime=global.maxspintime*0.80 {r4l1.animate=0;r4l2.animate=0;r4l3.animate=0;}}
  if object_index=r5l1 xor object_index=r5l2 xor object_index=r5l3 
    {if global.spintime>=global.maxspintime*0.96 {r5l1.animate=0;r5l2.animate=0;r5l3.animate=0;}}
}

image_index=type;
