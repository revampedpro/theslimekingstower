var f = fontMenuOptions;
if(object_index == obj_Menu_Nuevo_Play) f = fontCharacterTitle;
if(object_index == obj_Menu_Nuevo_Continuar) f = fontCharacterTitle;
if(room == room_Biblioteca or room == room_Pets) and (object_index == obj_Menu_Nuevo_Back) { image_xscale = 1; image_yscale = 1; }
if(sprite_index > -1) and (room != room_Login) and (sprite_index != spr_Menu_Nuevo_Continuar) and (object_index != obj_Biblioteca_Nuevo_Buy) draw_sprite_ext(sprite_index, image_index, x2, y2, image_xscale, image_yscale, giro, image_blend, image_alpha);
var color = c_white
if(object_index == obj_Menu_Nuevo_Dificultad) {
    switch(global.Modo_Dificultad) {
        case "Normal": color = c_white; break;
        case "Hard":   color = c_red; break;
        case "Insane": color = c_purple; break;
    }
}
if(object_index == obj_Menu_Nuevo_Boton_Dificultad) {
    switch(string_upper(menu_text)) {
        case "NORMAL": color = c_white; break;
        case "HARD":   color = c_red; break;
        case "INSANE": color = c_purple; break;
    }
}

draw_set_font(f);
draw_set_halign(fa_middle);
draw_set_color(c_black);
draw_set_alpha(0.85);
draw_text_transformed(2+x2,2+y2+24,string_hash_to_newline(menu_text),1,1,giro);
draw_set_alpha(image_alpha);
if(!save) and (sprite_index == spr_Menu_Nuevo_Continuar) draw_set_alpha(0.4);
draw_set_color(color);
draw_text_transformed(x2,y2+24,string_hash_to_newline(menu_text),1,1,giro);

