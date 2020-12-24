// Seleccionar subtexto
draw_self();

// Seleccionar el texto
SubTexto = lang(71);
if(real(control_Biblioteca.level[control_Biblioteca.Item]) <= 0) SubTexto = lang(73);
var Descripcion = lang(72);
if(real(control_Biblioteca.level[control_Biblioteca.Item]) <= 0) Descripcion = lang(74);

// Dibujar texto
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(font_SmallHitBox_Small);
draw_set_font(fontCharacterName);
draw_text_outline_width_sombra( x+4+(sprite_width)/2, y+10 + sprite_height - 32, SubTexto, 3 );
draw_set_valign(fa_top);
draw_set_halign(fa_left);


draw_set_valign(fa_top);
draw_set_halign(fa_left);

// Dibujar descripcion
draw_set_font(font_Ranking);
draw_set_font(fontCharacterDescription);
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_roundrect(x + sprite_width + 10, y + 8, x + sprite_width + 10 + 460, y + 12 + sprite_height - 16, 0);
draw_set_alpha(1);
if(real(control_Biblioteca.level[control_Biblioteca.Item]) <= 0) {
    if(global.Monedas_General <  50) draw_text_outline_width_sombra_color( x + sprite_width + 16, y+24 + sprite_height - 42, "(50$) ", 3, c_red );
    if(global.Monedas_General >= 50) draw_text_outline_width_sombra_color( x + sprite_width + 16, y+24 + sprite_height - 42, "(50$) ", 3, c_lime );
    draw_text_outline_width_sombra( x + sprite_width + 16, y+12 + sprite_height - 42, Descripcion, 3 );
} else {
    if(global.Monedas_General <  50) draw_text_outline_width_sombra_color( x + sprite_width + 16, y+24 + sprite_height - 42, "(100$) ", 3, c_red );
    if(global.Monedas_General >= 50) draw_text_outline_width_sombra_color( x + sprite_width + 16, y+24 + sprite_height - 42, "(100$) ", 3, c_lime );
    draw_text_outline_width_sombra( x + sprite_width + 16, y+12 + sprite_height - 42, Descripcion, 3 );
}

