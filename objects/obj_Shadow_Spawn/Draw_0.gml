
// Dibujar cuerpo
var Blend = image_blend;
if(alarm[11] > 0 ) Blend = c_gray; // Congelado
if(champion_xscale > 1) Blend = champion_color;

// Dibujar sombra
shadow_size2 = 4/2;
draw_set_colour(c_black);
draw_set_alpha(0.25);
draw_ellipse(x-4, y+10-shadow_size2, x+4, y+10+shadow_size2, false);
draw_set_alpha(1);
draw_set_colour(c_white);

// Dibujar cuerpo
draw_sprite_ext( sprite_index, image_index, x, y, champion_xscale * xscale * image_xscale, champion_yscale * yscale * image_yscale, image_angle, Blend, .5 );

// Flash de golpe
if(alarm[2] > 0) {
    d3d_set_fog( 1, make_color_rgb(255,100,100), 0, 0 );
    draw_sprite_ext( sprite_index, image_index, x, y, champion_xscale * xscale * image_xscale, champion_yscale * yscale * image_yscale, image_angle, Blend, 1 );
    d3d_set_fog( 0, c_white, 0, 0 );
}

action_inherited();
