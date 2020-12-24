/// @description count_pets()
/// @function count_pets
function count_pets() {

	// Devuelve el numero de rooms de la base de datos
	if(global.Numero_De_Pets != -1) return global.Numero_De_Pets;
	for(i = 1; i < 99999; i++) {
	    var Script = get_pet(i,-1);
	    if(Script == -1) { 
	        global.Numero_De_Pets = i-1;
	        return i-1;
	    }
	}



}
