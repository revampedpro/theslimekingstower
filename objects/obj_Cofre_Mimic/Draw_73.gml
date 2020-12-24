/// @description  Dibujar item contenido
if( ID == -1 )exit;

// Item flotando
Item_Y += Item_V;
Item_V += Item_A*Item_D;
if( Item_V > +Item_L ) Item_D = - Item_D
if( Item_V < -Item_L ) Item_D = - Item_D

