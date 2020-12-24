/// @description  Dibujar item contenido
if( ID == -1 )exit;

var SquishA = abs(sin(degtorad(Squish)))*.1;
var SquishB = abs(cos(degtorad(Squish)))*.1;
draw_sprite_ext(spr_Random_Item, -1, x-1, y - 24 - Item_Y/3, 1-SquishA, 1-SquishB, 0, c_white, image_alpha );

// Item flotando
Item_Y += Item_V;
Item_V += Item_A*Item_D;
if( Item_V > +Item_L ) Item_D = - Item_D
if( Item_V < -Item_L ) Item_D = - Item_D

