/// @description  Dibujarse
draw_self();
if(instance_exists(obj_Jugador)) {
    draw_set_font(font_Gold);
    draw_set_halign(fa_middle);
    draw_set_valign(fa_center);
    var cccolor = c_white;
    draw_text_outline_soft_ext(x, y + 28, lang(6506), 1, cccolor);
    draw_sprite(spr_UI_nGold,0,x, y + 16);
    draw_set_valign(fa_top);
    draw_set_halign(fa_right);
}

