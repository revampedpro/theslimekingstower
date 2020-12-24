// Draw
draw_set_font(fontCharacterTitle);
draw_set_halign(fa_left);

if(global.Modo_Dificultad == "Normal") draw_text_outline_color(x, y+4, string_upper(string(lang(4000))+string(level)), c_white);
if(global.Modo_Dificultad == "Hard")   draw_text_outline_color(x, y+4, string_upper(string(lang(4000))+string(level)), c_red);
if(global.Modo_Dificultad == "Insane") draw_text_outline_color(x, y+4, string_upper(string(lang(4000))+string(level)), c_purple);

draw_set_font(fontCharacterName);
draw_text_outline_color(x, y+4+26, string_upper(string(lang(4001))), c_white);


