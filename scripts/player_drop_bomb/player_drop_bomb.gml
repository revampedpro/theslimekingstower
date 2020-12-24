/// @description Player drops a bomb
/// @param [x]
/// @param [y]
function player_drop_bomb() {

	// In online, ask the host for permission
	if(network_is_online()) and (global.NETWORK_HOST == false) {
		pack_quick("throwBomb");
		return false;
	}

	// Vars
	var _x = obj_Jugador.x;
	var _y = obj_Jugador.y;
	if(argument_count > 0) _x = argument[0];
	if(argument_count > 1) _y = argument[1];

	// Drop the bomb
	if(obj_Jugador.bombs > 0) {
	    obj_Jugador.bombs--;
	    audio_play_sound(sndBombDrop,0,0);
	    instance_create(_x, _y, objBomb);
	}

	// Success
	return true;


}
