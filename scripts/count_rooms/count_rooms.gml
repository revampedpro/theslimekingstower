/// @description count_rooms()
/// @function count_rooms
function count_rooms() {

	// Devuelve el numero de rooms de la base de datos
	for( i = 1; i < 99999; i++ ) {
	    var Script = asset_get_index("pr_Sala_" + string(i));
	    if( Script = -1 ) return i-1;
	}



}
