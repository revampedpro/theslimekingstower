/// @description new_game()
/// @function new_game
function new_game() {
	// Prepares data for a new game

	// Prepare bosses data
	global.Bosses_Tower			= "-1,0,1,2,3,4,5,6,7,8,9,10,11,17,18,19,20,21,22,23,24,25,26,26,27,28,29,31";
	global.Bosses_Basement		= "-1,12,13,14,15,16,17,18,19,22,23,24,24,27,29,30,31";
	global.Mini_Bosses_Tower	= "-1,0,1,2,4,5,6,10,17,19,20,29,";
	global.Mini_Bosses_Basement = "16,15,14,13,12,17,19,21,22,23,24,29,";
	global.Mini_Bosses_All		= "0,1,2,4,5,6,10,12,13,14,15,16,17,19,20,21,22,23,23,24,29,29"; // Repetir el ultimo por si acaso

	// Prepare items data
	// >> If new items arrays are added, add it to script "get_random_item_from_pool" and "get_item_from_pool"
	global.Items_All      = global.ITEMS_ALL;
	global.Items_Treasure = global.ITEMS_TREASURE;
	global.Items_Bosses   = global.ITEMS_BOSSES;
	global.Items_Arcade   = global.ITEMS_ARCADE;
	global.Items_Passive  = global.ITEMS_PASSIVE;
	global.Items_Shop     = global.ITEMS_SHOP;

	// Common
	global.GameCompleted			= false;
	global.ARCADE_RONDAS			= 0;
	global.Modo_Challenge			= -1;
	global.Modo_Challenge_Activo	= false;
	if(!ds_exists(global.Dungeon_Map,ds_type_list)) {
		global.Dungeon_Map = ds_list_create();
	} else {
		var _ss = ds_list_size(global.Dungeon_Map);
		for(var i = 0; i < _ss; i++) {
			ds_map_destroy(global.Dungeon_Map[| i]);	
		}
		ds_list_clear(global.Dungeon_Map);
	}

	// Controller's control
	global.controllerID[0]  = false;
	global.controllerID[1]  = false;
	global.controllerID[2]  = false;
	global.controllerID[3]  = false;
	global.controllerID[4]  = false;
	global.controllerID[5]  = false;
	global.controllerID[6]  = false;
	global.controllerID[7]  = false;
	global.controllerID[8]  = false;
	global.controllerID[9]  = false;
	global.controllerID[10] = false;
	global.controllerID[11] = false;

	// Update global player names list
	if(!instance_exists(objPlayerNamesUpdate)) instance_create(0,0,objPlayerNamesUpdate);


}
