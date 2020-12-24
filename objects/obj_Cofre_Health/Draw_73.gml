/// @description  Dibujar item contenido
if(ID == -1)exit;
if(IDT != ID) {
    ItemIcon = get_item(ID,3);
    IDT = ID;
}

// Squish Animation
Squish++;
if(Squish > 359) Squish = 0;
var SquishA = abs(sin(degtorad(Squish)))*.1;
var SquishB = abs(cos(degtorad(Squish)))*.1;
draw_sprite_ext(ItemIcon, -1, x-1, y - 24 - Item_Y/3, 1-SquishA, 1-SquishB, 0, c_white, image_alpha );

// Item flotando
Item_Y += Item_V;
Item_V += Item_A*Item_D;
if(Item_V > +Item_L) Item_D = - Item_D
if(Item_V < -Item_L) Item_D = - Item_D

