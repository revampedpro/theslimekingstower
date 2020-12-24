/// @description Sync player's health
function network_player_sync_health() {
	// Setup vars
	var _HP			= obj_Jugador.HP;
	var _HP_Max		= obj_Jugador.HP_Max;
	var _HP_Extra_S = obj_Jugador.HP_Extra_S;
	var _HP_Extra	= "";
	var _HP_Extra_Q = "";
				
	// Prepare arrays
	_HP_Extra   = implode_real("?",obj_Jugador.HP_Extra);
	_HP_Extra_Q = implode_real("?",obj_Jugador.HP_Extra_Q);
				
	// Send pack
	pack_send_multi("syncHealth","hp",_HP,"hpmax",_HP_Max,"hpextra",_HP_Extra,"hpextraq",_HP_Extra_Q,"hpextras",_HP_Extra_S);


}
