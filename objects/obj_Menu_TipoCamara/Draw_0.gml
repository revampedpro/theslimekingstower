// Seleccionar subtexto
if( global.Camara_Modo == 0 ) SubTexto = lang(19);
if( global.Camara_Modo == 1 ) SubTexto = lang(20);
if( global.Camara_Modo == 2 ) SubTexto = lang(21);

// Dibujar texto
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(font_SmallHitBox_Mid);
draw_text_outline_width_sombra( 96, 240,lang(22), 3 );
draw_set_font(font_SmallHitBox_Small);
draw_text_outline_width_sombra( 96, 324, SubTexto, 3 );
draw_set_valign(fa_top);

