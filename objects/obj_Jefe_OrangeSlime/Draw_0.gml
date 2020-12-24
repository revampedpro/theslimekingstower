/// @description  Dibujarse
draw_sprite_ext( spr_Sombras, 1, x, y+8, image_xscale * xscale, image_yscale * yscale, 0, c_black, 0.3 );
draw_sprite_ext( sprite_index, image_index, x+1, y+1, image_xscale * xscale, image_yscale * yscale, 0, make_color_rgb(20,12,28), image_alpha );
draw_sprite_ext( sprite_index, image_index, x+1, y-1, image_xscale * xscale, image_yscale * yscale, 0, make_color_rgb(20,12,28), image_alpha );
draw_sprite_ext( sprite_index, image_index, x-1, y+1, image_xscale * xscale, image_yscale * yscale, 0, make_color_rgb(20,12,28), image_alpha );
draw_sprite_ext( sprite_index, image_index, x-1, y-1, image_xscale * xscale, image_yscale * yscale, 0, make_color_rgb(20,12,28), image_alpha );
draw_sprite_ext( sprite_index, image_index, x,   y-1, image_xscale * xscale, image_yscale * yscale, 0, make_color_rgb(20,12,28), image_alpha );
draw_sprite_ext( sprite_index, image_index, x,   y+1, image_xscale * xscale, image_yscale * yscale, 0, make_color_rgb(20,12,28), image_alpha );
draw_sprite_ext( sprite_index, image_index, x-1, y,   image_xscale * xscale, image_yscale * yscale, 0, make_color_rgb(20,12,28), image_alpha );
draw_sprite_ext( sprite_index, image_index, x+1, y,   image_xscale * xscale, image_yscale * yscale, 0, make_color_rgb(20,12,28), image_alpha );
draw_sprite_ext( sprite_index, image_index, x, y, image_xscale * xscale, image_yscale * yscale, 0, image_blend, image_alpha );

// Flash de golpe
if(alarm[2] > 0) {
    d3d_set_fog( 1, make_color_rgb(255,100,100), 0, 0 );
    draw_sprite_ext( sprite_index, image_index, x, y-Altura, image_xscale * xscale, image_yscale * yscale, 0, image_blend, image_alpha );
    d3d_set_fog( 0, c_white, 0, 0 );
}

