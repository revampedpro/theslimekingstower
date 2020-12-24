// Dibujar cuerpo
var Blend = image_blend;
if(alarm[11] > 0 ) Blend = c_gray; // Congelado
if(champion_xscale > 1) Blend = champion_color;

/// Dibujarse
draw_sprite_ext( spr_Sombras, 1, x, y, xscale * (1-(Altura/80)), yscale * (1-(Altura/80)), 0, c_black, 0.3 );
draw_sprite_ext( sprite_index, image_index, x, y-Altura, champion_xscale * xscale, champion_yscale * yscale, 0, Blend, image_alpha );

// Flash de golpe
if(alarm[2] > 0) {
    d3d_set_fog( 1, make_color_rgb(255,100,100), 0, 0 );
    draw_sprite_ext( sprite_index, image_index, x, y-Altura, champion_xscale * xscale, champion_yscale * yscale, 0, Blend, image_alpha );
    d3d_set_fog( 0, c_white, 0, 0 );
}

action_inherited();
