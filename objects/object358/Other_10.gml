// Calculate autotile.
var left      = -1;
var right     = -1;
var up        = -1;
var down      = -1;
var details  = -1;
Tileset_H     = 16;
if(position_meeting(x+16+8,y+00+8,obj_Block))right=1;
if(position_meeting(x-16+8,y+00+8,obj_Block))left=1;
if(position_meeting(x+00+8,y+16+8,obj_Block))down=1;
if(position_meeting(x+00+8,y-16+8,obj_Block))up=1;
if(!right  && !left  && !down &&  !up)  { Tileset_X = 4; Tileset_Y = 1; details = choose(7,7); }
if( !right &&  !left &&  down &&  !up ) { Tileset_X = 0; Tileset_Y = 0; details = choose(3,3); }
if( !right &&  !left &&  down &&   up ) { Tileset_X = 0; Tileset_Y = 1; }
if( !right &&  !left && !down &&   up ) { Tileset_X = 0; Tileset_Y = 2; }
if(  right &&  !left &&  down &&  !up ) { Tileset_X = 1; Tileset_Y = 0; details = choose(0,0); }
if(  right &&  !left &&  down &&   up ) { Tileset_X = 1; Tileset_Y = 1; }
if(  right &&  !left && !down &&   up ) { Tileset_X = 1; Tileset_Y = 2; }
if(  right &&   left &&  down &&  !up ) { Tileset_X = 2; Tileset_Y = 0; details = choose(1,1); }
if(  right &&   left &&  down &&   up ) { Tileset_X = 2; Tileset_Y = 1; }
if(  right &&   left && !down &&   up ) { Tileset_X = 2; Tileset_Y = 2; }
if( !right &&   left &&  down &&  !up ) { Tileset_X = 3; Tileset_Y = 0; details = choose(2,2); }
if( !right &&   left &&  down &&   up ) { Tileset_X = 3; Tileset_Y = 1; }
if( !right &&   left && !down &&   up ) { Tileset_X = 3; Tileset_Y = 2; }
if(  right &&  !left && !down &&  !up ) { Tileset_X = 4; Tileset_Y = 0; details = choose(4,4); }
if(  right &&   left && !down &&  !up ) { Tileset_X = 5; Tileset_Y = 0; details = choose(5,5); }
if( !right &&   left && !down &&  !up ) { Tileset_X = 6; Tileset_Y = 0; details = choose(6,6); }

// Change the tile if it has details.
if(details = 0) { Tileset_X = 4; Tileset_Y = 2; Tileset_H = 32; }
if(details = 1) { Tileset_X = 5; Tileset_Y = 2; Tileset_H = 32; }
if(details = 2) { Tileset_X = 6; Tileset_Y = 2; Tileset_H = 32; }
if(details = 3) { Tileset_X = 0; Tileset_Y = 3; Tileset_H = 32; }
if(details = 4) { Tileset_X = 1; Tileset_Y = 3; Tileset_H = 32; }
if(details = 5) { Tileset_X = 2; Tileset_Y = 3; Tileset_H = 32; }
if(details = 6) { Tileset_X = 3; Tileset_Y = 3; Tileset_H = 32; }
if(details = 7) { Tileset_X = 7; Tileset_Y = 2; Tileset_H = 32; }

