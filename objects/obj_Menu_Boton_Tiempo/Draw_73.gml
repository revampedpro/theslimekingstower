// Seleccionar subtexto
draw_self();

// Seleccionar el texto
switch(Seleccion) {
    case 0: SubTexto = lang(52); break;
    case 1: SubTexto = lang(53); break;
    case 2: SubTexto = lang(55); break;
}

// Dibujar texto
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(font_SmallHitBox_Smaller);
draw_text_outline_width_sombra( x+(sprite_width)/2, y + sprite_height - 16, SubTexto, 3 );
draw_set_valign(fa_top);

