/// @description player_has_item(id)
/// @function player_has_item
/// @param id
function player_has_item() {
	// Check if the player has an specific item
	if(instance_exists(control_Dungeon)) {
		var al = array_length_1d(control_Dungeon.Jugador_Items);
	    for(pl = 0; pl < al; pl++) {
	        if(control_Dungeon.Jugador_Items[pl] == argument[0]) return true;
	    }
	}
	return false;

	/// @description player_has_item(id)
	/// @function player_has_item
	/// @param id
	// Check if the player has an specific item
	/*
	if(instance_exists(control_Dungeon)) {
	

		if(variable_instance_exists(control_Dungeon,"_item"+string(argument[0]))) {
			variable_instance_get(control_Dungeon,"_item"+string(argument[0]));
		} else {
			var al = array_length_1d(control_Dungeon.Jugador_Items);
		    for(pl = 0; pl < al; pl++) {
		        if(control_Dungeon.Jugador_Items[pl] == argument[0]) {
					variable_instance_set(control_Dungeon,"_item"+string(argument[0]),true);
					return true;
				}
		    }
			return false;
		}
	
	}

/* end player_has_item */
}
