/// @description charge_item(amount)
/// @function charge_item
/// @param amount
function charge_item() {
	// Charge you active item
	if(instance_exists(obj_Jugador)) {
	    obj_Jugador.Cargas += argument[0];
	    if(obj_Jugador.Cargas > obj_Jugador.Cargas_Max) {
	        obj_Jugador.Cargas = obj_Jugador.Cargas_Max;
	    }
	    return true;
	}
	return false;
        



}
