// draw shadow
draw_sprite_ext(spr_Sombras, 1, x, y, 1, 1, 0, c_black, 0.5);

// draw itself
draw_sprite(sprite_index, image_index, x, y2);

y2 += spd;
if(y2 >= y) instance_destroy();

