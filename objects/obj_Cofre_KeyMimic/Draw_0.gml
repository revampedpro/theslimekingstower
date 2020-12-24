/// @description  Dibujarse
draw_self();
if(instance_exists(obj_Jugador)) {
    draw_set_font(font_Gold);
    draw_set_halign(fa_right);
    draw_set_valign(fa_center);
    var cccolor = c_white;
    if(obj_Jugador.keys < control_Dungeon.KeyMimic_Value) cccolor = c_red;
    draw_text_outline_soft_ext(x - 2, y + 18, string(control_Dungeon.KeyMimic_Value), 1, cccolor);
    draw_sprite(spr_UI_Key,0,x - 1 + string_width(string_hash_to_newline("" + string(control_Dungeon.KeyMimic_Value))), y + 18);
    draw_set_valign(fa_top);
}

