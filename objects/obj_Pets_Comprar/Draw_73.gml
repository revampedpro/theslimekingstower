// Seleccionar subtexto
draw_self();

var Precio = (100 * real(control_Pets.level[control_Pets.Item])) + 100;

ini_open("save.ini");
var myPetCounter = ini_read_real("S", "PUNC"+string(real(control_Pets.Item)), 0);
ini_close();

// Seleccionar el texto
SubTexto = lang3000;
if(real(control_Pets.level[control_Pets.Item]) <= 0) SubTexto = lang3002;
var Descripcion = lang3001;
if(real(control_Pets.level[control_Pets.Item]) <= 0) Descripcion = lang3003 + " ("+string(10-myPetCounter)+" "+lang3007+")";

// Dibujar texto
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(fontCharacterName);
draw_text_outline_width_sombra( x+(sprite_width)/2, y + sprite_height - 32, SubTexto, 3 );
draw_set_valign(fa_top);
draw_set_halign(fa_left);

// Dibujar descripcion
draw_set_font(fontCharacterDescription);
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_roundrect(x + sprite_width + 10, y + 8, x + sprite_width + 10 + 460, y + sprite_height - 16, 0);
draw_set_alpha(1);
if(real(control_Pets.level[control_Pets.Item]) == 0) {
    draw_text_outline_width_sombra_color( x + 0 + sprite_width + 16, y+8 + sprite_height - 42, Descripcion, 3, c_orange );
} else if(real(control_Pets.level[control_Pets.Item]) < 5) {
    if(global.Monedas_General <  Precio) draw_text_outline_width_sombra_color( x + sprite_width + 16, y+8 + sprite_height - 42, "("+string(Precio)+"$) ", 3, c_red );
    if(global.Monedas_General >= Precio) draw_text_outline_width_sombra_color( x + sprite_width + 16, y+8 + sprite_height - 42, "("+string(Precio)+"$) ", 3, c_lime );
    draw_text_outline_width_sombra( x + 53 + sprite_width + 16, y+8 + sprite_height - 42, Descripcion, 3 );
} else if(real(control_Pets.level[control_Pets.Item]) == 5) {
    draw_text_outline_width_sombra_color( x + 0 + sprite_width + 16, y+8 + sprite_height - 42, lang3004, 3, c_red );
}



