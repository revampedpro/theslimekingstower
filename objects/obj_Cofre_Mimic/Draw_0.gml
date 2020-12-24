/// @description  Dibujarse
draw_self();

if(instance_exists(obj_Jugador)) {
    draw_set_font(font_Gold);
    draw_set_halign(fa_right);
    draw_set_valign(fa_center);
    var cccolor = c_white;
    if(global.Jugador_Monedas < 1) cccolor = c_red;
    draw_text_outline_soft_ext(x - 4, y + 17, "1", 1, cccolor);
    draw_sprite(spr_UI_nGold,0,x - 1 + string_width(string_hash_to_newline("" + string(1))), y + 19);
    draw_set_valign(fa_top);
}

