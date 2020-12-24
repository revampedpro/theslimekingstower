/// @description  Dibujar item contenido
//if(ID == -1)exit;
/*
if(IDT != ID) {
    ItemIcon = get_item(ID,3);
    Precio = get_item(ID,5);
    IDT = ID;
}
*/

// Squish Animation
Squish++;
if(Squish > 359) Squish = 0;
var SquishA = abs(sin(degtorad(Squish)))*.1;
var SquishB = abs(cos(degtorad(Squish)))*.1;
var spr = sprPickupKey;
switch(type) {
	case pickup_chest.heart:
		spr = sprExtraHeart;
	break;
	case pickup_chest.bomb:
		spr = sprPickupBomb;
	break;
	case pickup_chest.rocket:
		spr = sprDisparoRocket;
	break;
}

// Draw sprite
gpu_set_fog(true,c_white,0,0);
	draw_sprite_ext(spr,0,x-1-1,y  -18-Item_Y/3,1-SquishA,1-SquishB,0,c_white,image_alpha );
	draw_sprite_ext(spr,0,x+1-1,y  -18-Item_Y/3,1-SquishA,1-SquishB,0,c_white,image_alpha );
	draw_sprite_ext(spr,0,x-1,  y-1-18-Item_Y/3,1-SquishA,1-SquishB,0,c_white,image_alpha );
	draw_sprite_ext(spr,0,x-1,  y+1-18-Item_Y/3,1-SquishA,1-SquishB,0,c_white,image_alpha );
gpu_set_fog(false,c_white,0,0);
draw_sprite_ext(spr,0,x-1,y-18-Item_Y/3,1-SquishA,1-SquishB,0,c_white,image_alpha );

// Item flotando
Item_Y += Item_V;
Item_V += Item_A*Item_D;
if( Item_V > +Item_L ) Item_D = - Item_D
if( Item_V < -Item_L ) Item_D = - Item_D

