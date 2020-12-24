/// @description  Dibujar item contenido
if(Fase > 0) exit;
if( control_Dungeon.Dungeon_Tesoro == -1 )exit;
if(IDT != ID) {
    ItemIcon = get_item(control_Dungeon.Dungeon_Tesoro,3);
    IDT = ID;
}
draw_sprite_ext(ItemIcon, -1, x-1, y - 24 - Item_Y, 1, 1, 0, c_white, image_alpha );

// Item flotando
Item_Y += Item_V;
Item_V += Item_A*Item_D;
if( Item_V > +Item_L ) Item_D = - Item_D
if( Item_V < -Item_L ) Item_D = - Item_D

