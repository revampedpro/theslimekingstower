/// @description  Dibujarse
draw_self();

// Dibujar precio
if(ID > -1) {

    
    if(instance_exists(obj_Jugador)) {
        draw_set_font(font_Gold);
        draw_set_halign(fa_right);
        draw_set_valign(fa_center);
        var cccolor = c_white;
        var price = (1-Free)*(control_Dungeon.Dungeon_Shop_Price[My_ID])/(player_has_item(78)+1);
        if(global.Jugador_Monedas < price) and (price > 0) cccolor = c_red;
        draw_text_outline_soft_ext(x - 2, y + 17, string(price), 1, cccolor);
        draw_sprite(spr_UI_nGold,0,x + 4, y + 19);
        draw_set_valign(fa_top);
    }
    
}
