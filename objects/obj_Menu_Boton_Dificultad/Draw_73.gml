// Seleccionar subtexto
draw_self();

// Seleccionar el texto
switch(Seleccion) {
    case 0: SubTexto = lang(78); break;
    case 1: SubTexto = lang(79); break;
    case 2: SubTexto = lang(80); break;
}

// Dibujar texto
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(font_SmallHitBox_Smaller);
var Color = c_white;
if(Seleccion == 1) Color = c_red;
if(Seleccion == 2) Color = c_purple;
draw_text_outline_width_sombra_color( x+(sprite_width)/2, y + sprite_height - 16, SubTexto, 3, Color );
//draw_text_outline_width_sombra( x + (sprite_width)/2, y - 10, lang(81), 3 );
draw_set_valign(fa_top);

