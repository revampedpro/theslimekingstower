// Dibujarse
draw_self();

// Dibujar efecto de luz
if(global.Quality == 0)exit;
F_1 = tween_to(F_1, Flicker_1, 5);
F_2 = tween_to(F_2, Flicker_2, 5);
//draw_set_blend_mode(bm_add);
//draw_set_alpha(0.1);
//draw_set_color(c_white);
//draw_sprite_ext(spr_Antorcha_Luz, 0, x+12, y+12, F_1, F_1, 0, c_white, 0.1);
draw_sprite_ext(spr_Antorcha_Luz, 1, x+12, y+12, F_2, F_2, 0, c_white, 0.1);
//draw_set_alpha(1);
//draw_set_blend_mode(bm_normal);

// Crear efectos de pixeles
/*
var FX = create_effect(x+8+random(6), y+8+random(4), spr_FX_Pixel, 0.8 + random(3)/10);
FX.vspeed -= 0.5 + random(1);
FX.image_xscale = 0.5 + random(1);
FX.image_yscale = 0.5 + random(1);
*/

/* */
/*  */
