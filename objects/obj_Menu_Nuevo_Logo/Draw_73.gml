// Dibujarse
var w  = wave(0.99,1.01,1,0);
var w2 = wave(1.01,0.99,1,0);
var a = wave(-2,2,1.2,0);
draw_sprite_ext(sprite_index, image_index, x, y+a,1,1,0,-1,1);

