/// @description  Dibujarse
draw_sprite_ext( spr_Sombras, 2, x, y+6, xscale * (miniboss*.5)*1.6 * (1-(Altura/80)), yscale * (miniboss*.5)*1.3 * (1-(Altura/80)), 0, c_black, 0.3 );
draw_sprite_ext( sprite_index, image_index, x, y-Altura, xscale * (miniboss*.5), yscale * (miniboss*.5), 0, image_blend, image_alpha );

// Flash de golpe
if(alarm[2] > 0) {
    d3d_set_fog( 1, make_color_rgb(255,100,100), 0, 0 );
    draw_sprite_ext( sprite_index, image_index, x, y-Altura, xscale * (miniboss*.5), yscale * (miniboss*.5), 0, image_blend, image_alpha );
    d3d_set_fog( 0, c_white, 0, 0 );
}



