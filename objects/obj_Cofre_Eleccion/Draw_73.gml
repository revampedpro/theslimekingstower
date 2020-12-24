/// @description  Dibujar item contenido
if( ID == -1 )exit;
//draw_sprite(spr_FX_Burbuja,1,x-10,y-16);
//draw_sprite_ext( get_item( ID, 3 ), -1, x-1, y - 24 - Item_Y, 1, 1, 0, c_white, image_alpha );

// Item flotando
Item_Y += Item_V;
Item_V += Item_A*Item_D;
if( Item_V > +Item_L ) Item_D = - Item_D
if( Item_V < -Item_L ) Item_D = - Item_D

