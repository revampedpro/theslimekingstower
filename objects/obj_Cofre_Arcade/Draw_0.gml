/// @description  Dibujarse
draw_self();

if(instance_exists(obj_Jugador)) {
    draw_set_font(font_Gold);
    draw_set_halign(fa_middle);
    draw_set_valign(fa_center);
    var cccolor = c_white;
    value2 = instance_number(parent_Enemigo);
    value2 = control_Arcade.Enemies_Per_Round;
    value  = control_Arcade.Enemies_This_Round - instance_number(parent_Enemigo);
    draw_text_outline_soft_ext(x, y + 17, string(value) + "/" + string(value2), 1, cccolor);
    draw_set_valign(fa_top);
}

