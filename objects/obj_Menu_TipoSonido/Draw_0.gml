// Seleccionar subtexto
if( global.Control_Sonido == 0 ) SubTexto = lang(26);
if( global.Control_Sonido == 1 ) SubTexto = lang(27);

// Dibujar texto
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(font_SmallHitBox_Mid);
draw_text_outline_width_sombra( 387, 240, lang(28), 3 );
draw_set_font(font_SmallHitBox_Small);
draw_text_outline_width_sombra( 387, 324, SubTexto, 3 );
draw_set_valign(fa_top);

