var w = wave(-0.1,0.1,0.5,0);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * xscale + w, image_yscale * yscale - w, 0, -1, 1);

