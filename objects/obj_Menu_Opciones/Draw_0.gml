// Seleccionar subtexto
SubTexto = lang(4);

// Dibujar texto
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(font_SmallHitBox_Mid);
draw_text_outline_width_sombra( x+(sprite_width)/2, 316, SubTexto, 3 );
draw_set_valign(fa_top);

