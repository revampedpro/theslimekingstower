/// @description absorb_item(id)
/// @function absorb_item
/// @param id
function absorb_item() {
	// Absorbs an item
	if(argument[0] != 268) {
	    if(obj_Jugador.AbsorbedItems[0] == -1) {
	        obj_Jugador.AbsorbedItems[0] = argument[0];
	    } else {
	        obj_Jugador.AbsorbedItems[array_length_1d(obj_Jugador.AbsorbedItems)] = argument[0];
	    }
	}



}
