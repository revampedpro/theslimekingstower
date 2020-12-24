/// @description  Dibujar boton
draw_self();

// Dibujar texto
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(font_SmallHitBox_Small);
draw_text_outline_width( x, y-7, Texto, 3 );
draw_text_outline_width( x, y+7, SubTexto, 3 );
draw_set_valign(fa_top);

