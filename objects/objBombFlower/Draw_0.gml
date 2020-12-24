draw_sprite_ext(sprite_index, 1, x, y, xscale*bomb, yscale*bomb, 0, -1, 1);
draw_sprite_ext(sprite_index, 0, x, y, xscale, yscale, 0, -1, 1);

// Flash de golpe
if(alarm[1] > 0) {
    d3d_set_fog( 1, c_white, 0, 0 );
	draw_sprite_ext(sprite_index, 1, x, y, xscale*bomb, yscale*bomb, 0, -1, 1);
	draw_sprite_ext(sprite_index, 0, x, y, xscale, yscale, 0, -1, 1);
    d3d_set_fog( 0, c_white, 0, 0 );
}

