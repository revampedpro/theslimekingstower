// Seleccionar subtexto
SubTexto = lang(70);

// Dibujar texto
if(!file_exists("temp3"))draw_set_alpha(0.4);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(font_SmallHitBox_Mid);
draw_text_outline_width_sombra( x+(sprite_width)/2, 188, SubTexto, 3 );
draw_set_valign(fa_top);
draw_set_alpha(1);

