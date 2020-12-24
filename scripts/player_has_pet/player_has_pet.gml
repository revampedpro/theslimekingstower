/// @description player_has_pet(id)
/// @function player_has_pet
/// @param id
function player_has_pet() {
	// Checks if the player has a pet with lvl5 or more
	if(instance_exists(obj_Jugador)) {
	    if(obj_Jugador.myPet == argument[0]) {
	        return true;
	    } else {
	        return false;
	    }
	} else {
	    return false;
	}



}
