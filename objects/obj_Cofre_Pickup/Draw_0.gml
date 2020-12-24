/// @description  Dibujarse
image_index = 1;
draw_self();

// Dibujar precio
{

    
    if(instance_exists(obj_Jugador)) {
        draw_set_font(font_Gold);
        draw_set_halign(fa_right);
        draw_set_valign(fa_center);
        var cccolor = c_white;
        var price2 = floor((1-Free)*(price)/(player_has_item(78)+1));
        if(global.Jugador_Monedas < price2) and (price2 > 0) cccolor = c_red;
        draw_text_outline_soft_ext(x - 2, y + 17, string(price2), 1, cccolor);
        draw_sprite(spr_UI_nGold,0,x + 4, y + 19);
        draw_set_valign(fa_top);
    }
    
}
