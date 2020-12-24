function change_build() {
	// Count items
	var _nn = 0;
	_nn = array_length_1d(control_Dungeon.Jugador_Items);

	// Lose al items
	repeat(_nn) {
	    player_lose_item_random();
	}
	var _cc = 0;

	// Get new random items
	repeat(_nn) {
	    var ID = get_random_item_from_pool("all");
		player_get_item(ID);
	
		/*
	    if(get_item(ID,6) == false) {
	        obj_Jugador.Show_Item_ID = ID;
	        get_item(ID,0);
	        control_Dungeon.Jugador_Items[_cc] = ID;
	    } else {
	        if(obj_Jugador.Cargas > get_item(ID,7)) { obj_Jugador.Cargas = get_item(ID,7); }
	        obj_Jugador.Cargas_Max = get_item(ID, 7);
	        obj_Jugador.Show_Item_ID = ID;
	        control_Dungeon.Jugador_Items[_cc] = ID;
	        global.Jugador_Item_Usable = ID;
	    }
		*/
	    _cc++;
	
		// Tell your partner to get this item
	
	}



}
