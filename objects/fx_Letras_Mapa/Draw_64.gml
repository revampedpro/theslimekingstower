// Moverse
if( y < 20 ) { y += abs( y - 20)/10; }

// Dibujar texto
var Post_Alpha = min(1,Alpha);
Alpha -= 0.025;
if(Alpha <= 0) instance_destroy();
draw_set_halign(fa_middle);
draw_set_alpha(Post_Alpha);
draw_set_font(fontCharacterTitle);
draw_text_shadow(x, y, Texto,3);
draw_set_font(fontMapTextDescription);
draw_text_shadow(x, y+26, Sub_Texto,2);
draw_set_alpha(1);

