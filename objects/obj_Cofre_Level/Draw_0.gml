/// @description  Dibujarse
draw_self();

// Dibujar precio
if( ID > -1 ) {
    draw_set_font(fontCharacterDescription8);
    draw_set_halign(fa_middle);
    var cccolor = c_white;
    if(obj_Jugador.Level < control_Dungeon.God_Shop_Price[My_ID]) and (control_Dungeon.God_Shop_Price[My_ID]>0) cccolor = c_red;
    draw_text_outline_color(x, y + 18, string(control_Dungeon.God_Shop_Price[My_ID]) + "LVL", cccolor);
}

