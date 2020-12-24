/// @description  Dibujarse
draw_self();

// Dibujar precio
if(ID > -1) and (control_Dungeon.Dungeon_HealthShop_Price[My_ID]>0) {
    draw_set_font(font_UI);
    draw_set_halign(fa_middle);
    draw_set_color(c_white);
    draw_sprite(sprExtraHeart, 0, x, y+20);
}

