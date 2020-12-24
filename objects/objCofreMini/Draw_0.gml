// Draw shadow
draw_sprite_ext(spr_Sombras, 1, x, y+8, 1, 1, 0, c_black, 0.3);

// Draw self
draw_sprite_ext(sprite_index, image_index, x, y+Y+8, xScale, ease("easeoutbounce",yScale), 0, c_white, 1);

