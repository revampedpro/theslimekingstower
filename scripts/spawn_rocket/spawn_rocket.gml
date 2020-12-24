/// @description spawn_rocket(amount)
/// @function spawn_rocket
/// @param amount
function spawn_rocket() {
	// Creates rockets for the player
	if(network_is_online() and !network_is_host()) exit;
	if(instance_exists(obj_Jugador)) {
	    obj_Jugador.Rockets += argument[0];
	    obj_Jugador.Rockets = min(7,obj_Jugador.Rockets);
	    repeat(argument[0]) {
	        if(instance_number(obj_Jugador_Rocket)<7) instance_create(obj_Jugador.x, obj_Jugador.y, obj_Jugador_Rocket);
	    }
	}
	return false;



}
