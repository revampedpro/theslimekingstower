/// @description bullet_spawn(x,y,hspeed,vspeed,angle)
/// @function bullet_spawn
/// @param x
/// @param y
/// @param hspeed
/// @param vspeed
/// @param angle
/// @param [type] opt
/// @param [sprite] opt
function bullet_spawn() {
	// spawns a bullet
	var __disp = obj_Jugador.Tipo_Municion;
	if(argument_count > 5) __disp = argument[5];
	var ___Disparo = instance_create(argument[0], argument[1], __disp);
	if(argument[4] < 1000) {
	    ___Disparo.H_SPEED = argument[2] *  cos(degtorad(argument[4]));
	    ___Disparo.V_SPEED = argument[3] * -sin(degtorad(argument[4]));
	} else {
	    ___Disparo.H_SPEED = argument[2];
	    ___Disparo.V_SPEED = argument[3];
	}
	var __spr = ___Disparo.sprite_index;
	if(argument_count > 6) {
		___Disparo.sprite_index = argument[6];
		__spr = argument[6];
	}
	___Disparo.image_angle = argument[4];
	___Disparo.LAngulo = argument[4];
	___Disparo.Delay_Antes_De_Caer = obj_Jugador.Caida_Disparo;
	___Disparo.alarm[0] = obj_Jugador.Caida_Disparo;
	___Disparo.image_xscale += obj_Jugador.Bullet_Size + 6*obj_Jugador.temp_Strike -1;
	___Disparo.image_yscale += obj_Jugador.Bullet_Size + 6*obj_Jugador.temp_Strike -1;
	___Disparo.alarm[5] = -1;

	// Tell partner
	if(network_is_online() and network_is_host()) {
		pack_send_multi("bulletSpawn","x",argument[0],"y",argument[1],"hspeed",argument[2],"vspeed",argument[3],"angle",argument[4],"type",__disp,"sprite",__spr);
	}

	return ___Disparo;



}
