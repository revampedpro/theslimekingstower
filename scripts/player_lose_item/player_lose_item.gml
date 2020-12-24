/// @description player_lose_item(id)
/// @function player_lose_item
/// @param id
function player_lose_item(argument0) {
	// Player loses an item (if he has it)
	for(gg = 0; gg < array_length_1d(control_Dungeon.Jugador_Items); gg++) {
	    if(control_Dungeon.Jugador_Items[gg] == argument0) {
	        obj_Jugador.Show_Item_ID = argument0;
	        obj_Jugador.alarm[4] = 60;
	        get_item(argument0,9);
	        control_Dungeon.Jugador_Items[gg] = 0;
	        if(global.Jugador_Item_Usable == argument0) global.Jugador_Item_Usable = -1;
	        return true;
	    }
	}
	return false;



}
