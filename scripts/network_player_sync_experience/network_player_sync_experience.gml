/// @description Sync pickups between players
function network_player_sync_experience() {
	// Prepare vars
	var _exp   = obj_Jugador.Experience;
	var _level = obj_Jugador.Level;

	// Send pack
	pack_send_multi("playerExp","exp",_exp,"level",_level);


}
