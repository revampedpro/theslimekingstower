
// Dibujar cuerpo
var Blend = image_blend;
if(alarm[11] > 0 ) Blend = c_gray; // Congelado

draw_sprite_ext( sprite_index, image_index, x, y, xscale * image_xscale, yscale * image_yscale, image_angle, Blend, image_alpha );

// Flash de golpe
if(alarm[2] > 0) {
    d3d_set_fog( 1, make_color_rgb(255,100,100), 0, 0 );
    draw_sprite_ext( sprite_index, image_index, x, y, xscale * image_xscale, yscale * image_yscale, image_angle, Blend, image_alpha );
    d3d_set_fog( 0, c_white, 0, 0 );
}

action_inherited();
