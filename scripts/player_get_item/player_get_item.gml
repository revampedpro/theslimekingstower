/// @description player_get_item(id[,maptext])
/// @function player_get_item
/// @param id
/// @param [maptext]
/// @param [online] 
function player_get_item() {
	// The player gets an item
	// !! Si se hace algun cambio aqui, hay que modificar el script "change_build" tambien
	if(!instance_exists(obj_Jugador)) exit;

	// Get the ID of the iem
	var ID = argument[0];
	var online = true;
	var Return = false; // If the player gets the item from a chest, it's usable and he already has an item put your item on the chest

	// Check if the item_get request came from an online player
	if(argument_count > 2) {
		online = argument[2];
	}

	// Replace old map text
	if(argument_count > 1) {
	    if(instance_exists(fx_Letras_Mapa)) with(fx_Letras_Mapa) instance_destroy(); 
	}

	// If the item is passive
	if(get_item(ID,6) == false) {

	    // Add item effects
	    get_item(ID,0);
    
	    // Add the item to the matrix if it doesn't exist already
	    if(!array_exists(control_Dungeon.Jugador_Items,ID)) control_Dungeon.Jugador_Items[array_length_1d(control_Dungeon.Jugador_Items)] = ID;
    
	    // Show item
	    obj_Jugador.Show_Item_ID = ID;
		obj_Jugador.ShowItemID = -1;
    
	    // Create map text
	    if(argument_count > 1) {
	        if(argument[1] == true) create_map_text(room_width/2,-10,get_item(ID,2),get_item(ID,4));
	    }
    
	// If the item is active
	} else {
    
	    // If the player has more charges than the item, limit it
	    var _itemCharges = get_item(ID,7);
	    if(obj_Jugador.Cargas > _itemCharges) { 
	        obj_Jugador.Cargas = _itemCharges;
	    }
    
	    // Set the new max charges
	    obj_Jugador.Cargas_Max = _itemCharges;
    
	    // If the item isn't filled dont get charges
	    if(get_item(ID,14) == false) obj_Jugador.Cargas = 0; 
    
	    // Add the item to the matrix if it doesn't exist already
	    if(!array_exists(control_Dungeon.Jugador_Items,ID)) control_Dungeon.Jugador_Items[array_length_1d(control_Dungeon.Jugador_Items)] = ID;
    
	    // Put the item on the chest
	    if(global.Jugador_Item_Usable != -1) Return = global.Jugador_Item_Usable;
    
	    // Set the active item to the new one
	    global.Jugador_Item_Usable = ID;
    
	    // Show item
	    obj_Jugador.Show_Item_ID = ID;
		obj_Jugador.ShowItemID = -1;
    
	    // Create map text
	    if(argument_count > 1) {
	        if(argument[1] == true) create_map_text(room_width/2,-10,get_item(ID,2),get_item(ID,4));
	    }
    
	}

	// Get item effects
	audio_stop_sound(snd_Get_Item_Big);
	audio_play_sound(snd_Get_Item_Big, 1, 0);
	obj_Jugador.alarm[4] = 120;

	// Tell your partner that you've picked an item
	if(network_is_online()) and (online == true) {
		if(argument_count > 1)  pack_send_multi("pickedUpItem","itemid",ID,"maptext",argument[1]);	
					else		pack_send_multi("pickedUpItem","itemid",ID,"maptext","");	
		with(obj_Jugador_Networking) {
			alarm[4] = 120;
			Show_Item_ID = ID;
			ShowItemID = -1;
		}
	}

	// Return the item
	return Return;



}
