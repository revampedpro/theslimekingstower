/// @description player_lose_item_random([seed],[online])
/// @function player_lose_item_random
/// @param seed
/// @param online
function player_lose_item_random() {
	// Player loses a random item

	// Set the seed
	if(argument_count > 0) {
		random_set_seed(argument[0]);	
	}

	// Send online
	var online = true;
	if(argument_count > 1) {
		online = argument[1];
	}

	// Tell your partner to lose the same item
	if(network_is_online()) and (online == true) {
		pack_send_multi("loseItem","seed",random_get_seed());
	}

	// Perform the item deletion
	var __list = ds_list_create();
	for(gg = 0; gg < array_length_1d(control_Dungeon.Jugador_Items); gg++) {
	    if(control_Dungeon.Jugador_Items[gg] != 0) {
	        ds_list_add(__list, control_Dungeon.Jugador_Items[gg]);
	        control_Dungeon.Jugador_Items[gg] = 0;
	    }
	}
	ds_list_shuffle(__list);
	var __itemID = ds_list_find_value(__list, 0);
	for(gg = 0; gg < ds_list_size(__list); gg++) {
	    var __v = ds_list_find_value(__list, gg);
	    if(__v != __itemID) control_Dungeon.Jugador_Items[gg] = __v;
	}
	ds_list_destroy(__list);
	if(!is_undefined(__itemID)) {
	    obj_Jugador.Show_Item_ID = __itemID;
	    if(get_item(__itemID,6) == true) global.Jugador_Item_Usable = -1;
	    obj_Jugador.alarm[4] = 60;
	    get_item(__itemID,9);
	    return true;
	} else {
	    return false;
	}





}
