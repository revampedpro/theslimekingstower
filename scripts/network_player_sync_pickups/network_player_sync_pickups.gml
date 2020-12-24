/// @description Sync pickups between players
function network_player_sync_pickups() {
	// Prepare vars
	var _coins		= global.Jugador_Monedas;
	var _keys		= obj_Jugador.keys;
	var _bombs		= obj_Jugador.bombs;
	var _bosskey	= obj_Jugador.bosskey;

	// Send pack
	pack_send_multi("pickupSync","coins",_coins,"keys",_keys,"bombs",_bombs,"bosskey",_bosskey);


}
