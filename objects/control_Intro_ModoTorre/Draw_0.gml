/// @description  Dibujar texto de intro del modo torre
draw_set_font(font_SmallHitBox_Small);
draw_set_halign(fa_left);

// Dibujar descripcion
var Texto = "Escala los distintos pisos de la torre y acaba con todos los enemigos para llegar hasta la sala del rey slime.";
draw_set_color(c_black);
for( i = 0; i < 3; i++ ) {
    draw_text_ext( x+i, y, string_hash_to_newline(Texto), string_height(string_hash_to_newline("ACB"))+6, 600 );
    draw_text_ext( x-i, y, string_hash_to_newline(Texto), string_height(string_hash_to_newline("ACB"))+6, 600 );
    draw_text_ext( x, y+i, string_hash_to_newline(Texto), string_height(string_hash_to_newline("ACB"))+6, 600 );
    draw_text_ext( x, y-i, string_hash_to_newline(Texto), string_height(string_hash_to_newline("ACB"))+6, 600 );
    draw_text_ext( x+i, y+i, string_hash_to_newline(Texto), string_height(string_hash_to_newline("ACB"))+6, 600 );
    draw_text_ext( x+i, y-i, string_hash_to_newline(Texto), string_height(string_hash_to_newline("ACB"))+6, 600 );
    draw_text_ext( x-i, y+i, string_hash_to_newline(Texto), string_height(string_hash_to_newline("ACB"))+6, 600 );
    draw_text_ext( x-i, y-i, string_hash_to_newline(Texto), string_height(string_hash_to_newline("ACB"))+6, 600 );
}
draw_set_color(c_white);
draw_text_ext( x, y, string_hash_to_newline(Texto), string_height(string_hash_to_newline("ACB"))+6, 600 );

// Dibujar nombre modo
draw_set_font(font_SmallHitBox_Big);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
var Modo = "Modo#Torre";
draw_text_outline_width( 166, 90, Modo, 3 );
draw_set_valign(fa_top);

