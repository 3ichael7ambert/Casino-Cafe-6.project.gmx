/////////////// line w1
//11111
//00000
//00000
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
and (r5l1.type=argument0 xor r5l1.type=0)
{w1=3;wt1=argument0;}
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
{w1=2;wt1=argument0;}
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
{w1=1;wt1=argument0;r1l1.show=1;r2l1.show=1;r3l1.show=1;}

/////////////// Line w2
//00000
//11111
//00000
if (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
and (r5l2.type=argument0 xor r5l2.type=0)  
{w2=3; wt2=argument0}
else
if (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0)   
{w2=2; wt2=argument0}
else
if (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0)
{w2=1; wt2=argument0}

/////////////// Line w3
//00000
//00000
//11111
if (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
and (r5l3.type=argument0 xor r5l3.type=0)
{w3=3; wt3=argument0;} 
else
if (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
{w3=2; wt3=argument0;} 
else
if (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
{w3=1; wt3=argument0;} 

/////////////// Line w4
//10001
//01010
//00100
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
and (r5l1.type=argument0 xor r5l1.type=0)  
{w4=3;wt4=argument0} 
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0)  
{w4=2;wt4=argument0} 
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0)  
{w4=1;wt4=argument0} 

/////////////// Line w5
//00100
//01010
//10001
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
and (r5l3.type=argument0 xor r5l3.type=0)  
{w5=3;wt5=argument0} 
else
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
{w5=2;wt5=argument0} 
else
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
{w5=1;wt5=argument0} 

/////////////// Line w6
//10001
//01110
//00000
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
and (r5l1.type=argument0 xor r5l1.type=0)
{w6=3;wt6=argument0} 
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
{w6=2;wt6=argument0} 
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
{w6=1;wt6=argument0} 

/////////////// Line w7
//00000
//01110
//10001
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
and (r5l3.type=argument0 xor r5l3.type=0)  
{w7=3;wt7=argument0} 
else
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
{w7=2;wt7=argument0} 
else
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0)  
{w7=1;wt7=argument0;} 

/////////////// Line w8
//01110
//10001
//00000
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
and (r5l2.type=argument0 xor r5l2.type=0)
{w8=3;wt8=argument0} 
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
{w8=2;wt8=argument0} 
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
{w8=1;wt8=argument0} 

/////////////// Line w9
//00000
//10001
//01110
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
and (r5l2.type=argument0 xor r5l2.type=0)
{w9=3;qt9=argument0} 
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
{w9=2;qt9=argument0} 
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
{w9=1;qt9=argument0} 


/////////////// Line w10
//10101
//01010
//00000
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
and (r5l1.type=argument0 xor r5l1.type=0)  
{w10=3;wt10=argument0} 
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0)  
{w10=2;wt10=argument0} 
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0)  
{w10=1;wt10=argument0} 
else

/////////////// Line w11
//00000
//01010
//10101
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
and (r5l3.type=argument0 xor r5l3.type=0)
{w11=3;wt11=argument0} 
else
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
{w11=2;wt11=argument0} 
else
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
{w11=1;wt11=argument0} 

/////////////// Line w12
//01010
//10101
//00000
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
and (r5l2.type=argument0 xor r5l2.type=0)
{w12=3;wt12=argument0} 
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
{w12=2;wt12=argument0} 
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
{w12=1;wt12=argument0} 

/////////////// Line w13
//00000
//10101
//01010
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
and (r5l2.type=argument0 xor r5l2.type=0)
{w13=3;wt13=argument0} 
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
{w13=2;wt13=argument0} 
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
{w13=1;wt13=argument0} 

/////////////// Line w14
//11011
//00100
//00000
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
and (r5l1.type=argument0 xor r5l1.type=0) 
{w14=3;wt14=argument0} 
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0)  
{w14=2;wt14=argument0} 
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
{w14=1;wt14=argument0} 

/////////////// Line w15
//00000
//00100
//11011
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
and (r5l3.type=argument0 xor r5l3.type=0)
{w15=3;wt15=argument0} 
else
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
{w15=2;wt15=argument0} 
else
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
{w15=1;wt15=argument0} 

/////////////// Line w16
//00000
//11011
//00100
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
and (r5l2.type=argument0 xor r5l2.type=0)
{w16=3;wt16=argument0} 
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
{w16=2;wt16=argument0} 
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
{w16=1;wt16=argument0} 

/////////////// Line w17
//00100
//11011
//00000
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
and (r5l2.type=argument0 xor r5l2.type=0)
{w17=3;wt17=argument0} 
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l2.type=argument0 xor r4l2.type=0) 
{w17=2;wt17=argument0} 
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l2.type=argument0 xor r2l2.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
{w17=1;wt17=argument0}


/////////////// Line w18
//01000
//10101
//00010
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
and (r5l1.type=argument0 xor r5l1.type=0)
{w18=3;wt18=argument0}
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
{w18=2;wt18=argument0}

/////////////// Line w19
//00010
//10101
//01000
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
and (r5l3.type=argument0 xor r5l3.type=0)
{w19=3;wt19=argument0} 
else
if  (r1l2.type=argument0 xor r1l2.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
{w19=2;wt19=argument0} 

/////////////// Line w20
//10001
//00000
//01110
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
and (r5l1.type=argument0 xor r5l1.type=0)
{w20=3;wt20=argument0} 
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
{w20=2;wt20=argument0} 
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
{w20=1;wt20=argument0} 


/////////////// Line w21
//01110
//00000
//10001
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
and (r5l3.type=argument0 xor r5l3.type=0)
{w21=3;wt21=argument0} 
else
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
{w21=1;wt21=argument0} 
else
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
{w21=3;wt21=argument0} 

/////////////// Line w22
//11011
//00000
//00100
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
and (r5l1.type=argument0 xor r5l1.type=0)
{w22=3;wt22=argument0} 
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
{w22=2;wt22=argument0} 
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l3.type=argument0 xor r3l3.type=0) 
{w22=1;wt22=argument0} 

/////////////// Line w23
//00100
//00000
//11011
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
and (r5l3.type=argument0 xor r5l3.type=0)
{w23=3;wt23=argument0} 
else
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
{w23=2;wt23=argument0} 
else
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l1.type=argument0 xor r3l1.type=0) 
{w23=1;wt23=argument0} 

/////////////// Line w24
//11000
//00100
//00011
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
and (r5l3.type=argument0 xor r5l3.type=0)
{w24=3;wt24=argument0} 
else
if  (r1l1.type=argument0 xor r1l1.type=0) 
and (r2l1.type=argument0 xor r2l1.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l3.type=argument0 xor r4l3.type=0) 
{w24=2;wt24=argument0} 

/////////////// Line w25
//00011
//00100
//11000
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0) 
and (r5l1.type=argument0 xor r5l1.type=0)
{w25=3;wt25=argument0} 
else
if  (r1l3.type=argument0 xor r1l3.type=0) 
and (r2l3.type=argument0 xor r2l3.type=0) 
and (r3l2.type=argument0 xor r3l2.type=0) 
and (r4l1.type=argument0 xor r4l1.type=0)
{w25=2;wt25=argument0}



