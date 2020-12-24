/// @description  Dibujar puntuaciones

// Coords
var MX = 0;
var MY = -20;

// Titulo
draw_set_font(font_SmallHitBox_MidBig);
draw_set_font(fontCharacterTitle);
draw_set_halign(fa_left);
draw_set_color(c_black);
draw_text(18, MY + 22 + 56, string_hash_to_newline(lang(2)));
draw_text(22, MY + 22 + 56, string_hash_to_newline(lang(2)));
draw_text_outline(20, MY + 17 + 56, lang(2));

// Fondo
draw_set_color(c_black);
draw_set_alpha( 0.3 );
draw_roundrect( 12, MY + 72+60, 628, MY + 276+66, 0 );
draw_set_alpha( 1 );

// Encabezados
draw_set_font(fontCharacterName);
draw_set_halign(fa_left);
draw_text_outline_width_sombra(60,  MY + 120    + 60 - 30 , lang(10), 3 );
//draw_set_halign(fa_middle);

var Text_11 = lang(11);
if(Modo == 3) Text_11 = lang(90);
if(Modo == 2) Text_11 = lang(90);
if(Modo == 1) Text_11 = lang(91);

draw_text_outline_width_sombra(220, MY + 120    + 60 - 30 , Text_11, 3 );
draw_text_outline_width_sombra(342, MY + 120    + 60 - 30 , lang(12), 3 );
draw_set_halign(fa_left);
draw_text_outline_width_sombra(525, MY + 120 + 60 - 30 , lang(13), 3 );

// Nombres
if(Cargado = true) {
    var Sep = 15;
    draw_set_font(fontCharacterDescription);
    for( j = 0; j < 10; j++ ) {
        var Color = c_white;
        if(Nombre[j] == global.Nombre) Color = c_orange;
        draw_set_halign(fa_right);
        draw_text_outline_color(38,  MY + 120    + 55  + (Sep*j), string(j+1), Color);
        draw_set_halign(fa_left);
        draw_text_outline_color(45,  MY + 120    + 55  + (Sep*j), Nombre[j], Color);
        draw_set_halign(fa_middle);
        draw_text_outline_color(240, MY + 120    + 55 + (Sep*j), string_upper(Mapa[j]), Color);
        draw_text_outline_color(380, MY + 120    + 55 + (Sep*j), string_upper(Enemigos[j]), Color);
        draw_set_halign(fa_right);    
        draw_text_outline_color(550+13, MY + 120 + 55 + (Sep*j), Tiempo[j], Color);
    }
} else {
    draw_set_halign(fa_middle);
    draw_set_font(fontCharacterName);
    draw_text_outline_width_sombra(room_width/2,  MY + room_height/2 + 60, lang(14), 3);
    draw_set_halign(fa_left);
}

// Volver
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(font_SmallHitBox_Smaller);
//draw_text_outline( 592, MY + 54 + 55, lang(5) );
draw_set_halign(fa_left);
draw_set_valign(fa_top);


