action_inherited();
// Variables de image
if(global.characterSelected == 6) { alarm[1] = 1; instance_create(x,y,obj_Moneda); }

// Change to halfheart
if(choose(0,0,1)) { 
	if(!network_is_online()	or global.NETWORK_HOST == true) {
		alarm[1] = 1; 
		instance_create(x,y,obj_HalfHeart); 
	}
}

image_speed = 0.25;
image_xscale = 1;
image_yscale = 1;
Valor = 1;

// Obtener variables para guardado
Posicion_i = global.Posicion_i;
Posicion_j = global.Posicion_j;

// Appear
appeared = false;
visible = false;

