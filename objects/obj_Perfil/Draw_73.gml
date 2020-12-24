/// @description  Dibujarse
draw_self();

// Dibujar nombre
draw_set_halign(fa_right);
draw_set_alpha(1);
draw_set_valign(fa_center);
draw_set_font(font_UI);
//draw_text_outline_width_sombra( x+147, y+9, lang(8), 3 );
draw_set_font(font_UI);

var Texto = global.Nombre;
if( global.Nombre = "" ) Texto = lang(9);

draw_set_color(c_white);
draw_text(x+127, y+12, string_hash_to_newline(Texto));
draw_set_color(c_orange);
draw_text(x+117, y+24, string_hash_to_newline(string_comma(string(global.Monedas_General))));
draw_set_valign(fa_top);

