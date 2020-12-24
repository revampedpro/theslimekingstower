// Seleccionar subtexto
if( global.Control_Modo == 0 ) SubTexto = lang(23);
if( global.Control_Modo == 1 ) SubTexto = lang(24);

// Dibujar texto
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(font_SmallHitBox_Mid);
draw_text_outline_width_sombra( 244, 240, lang(25), 3 );
draw_set_font(font_SmallHitBox_Small);
draw_text_outline_width_sombra( 244, 324, SubTexto, 3 );
draw_set_valign(fa_top);

