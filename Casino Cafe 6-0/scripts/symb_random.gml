randomize()
if global.game=1 and global.freespins=0 {type=choose(0,1,1,2,2,3,3,4,4,5,6,7,8,9,10,11);}
if global.game=1 and global.freespins>0 {type=choose(0,1,1,2,2,3,3,4,4,5,6,7,8,9,10);}
if global.game=2 and global.freespins=0 {type=choose(0,1,1,2,2,3,3,4,4,5,6,7,8,9,10,11);}
if global.game=2 and global.freespins>0 {type=choose(0,1,2,3,4,5,6,7,8,9,10);}
if global.game=3 and global.freespins=0 {type=choose(0,1,1,2,2,3,3,4,4,5,6,7,8,9,10,11);}
if global.game=3 and global.freespins>0 {type=choose(5,6,7,8,9,5,6,7,8,9,10);}
