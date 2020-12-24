/// @description  Dibujarse
draw_sprite_ext(spr_Sombras, 1, x, y+8, 1, 1, 0, c_black, 0.3);

// Draw self
var idx = image_index;
if(locked) idx = 2;
draw_sprite_ext(sprite_index, idx, x, y+Y+8, xScale, ease("easeoutbounce",yScale), 0, c_white, 1);