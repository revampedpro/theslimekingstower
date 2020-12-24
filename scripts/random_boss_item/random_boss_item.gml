/// @description random_boss_item()
/// @function random_boss_item
function random_boss_item() {
	// Returns the ID of a random boss item

	var __bossList = ds_list_create();

	for(__b = 0; __b < array_length_1d(global.BOSS_ITEMS); __b++) {
	    ds_list_add(__bossList, global.BOSS_ITEMS[__b]);
	}

	// Elimina todos los items de la matriz de items del personaje
	if(instance_exists(control_Dungeon)) {
	    for( m = 0; m < array_length_1d(control_Dungeon.Jugador_Items); m++) {
	        var Index = ds_list_find_index(__bossList, control_Dungeon.Jugador_Items[m]);
	        if(Index != -1) ds_list_delete(__bossList, Index);
	    }
	}

	ds_list_shuffle(__bossList);
	var __bossItem = ds_list_find_value(__bossList, 0);
	ds_list_destroy(__bossList);
	return __bossItem;


	/* OLD
	var __bossList = ds_list_create();

	for(__b = 0; __b < global.Numero_De_Items; __b++) {
	    if(get_item(__b, 10) == true) {
	        ds_list_add(__bossList, __b);
	    }
	}
	ds_list_shuffle(__bossList);
	var __bossItem = ds_list_find_value(__bossList, 0);
	ds_list_destroy(__bossList);
	return __bossItem;


/* end random_boss_item */
}
