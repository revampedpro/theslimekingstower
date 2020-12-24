/// @description count_boss_items()
/// @function count_boss_items
function count_boss_items() {

	// Devuelve el numero de items de la base de datos
	//for( i = 0; i < 99999; i++ ) {
	//    if( string(get_item( i, 1 )) == "FIN") return i;
	//}

	// Devuelve el numero de rooms de la base de datos
	if(global.BOSS_ITEMS[0] != -1) return true;
	var j = 0;
	for(i = 0; i < count_items(); i++) {
	    if(get_item(i,10) == true) {
	        global.BOSS_ITEMS[j] = i; 
	        j++;
	    }
	}
	return false;



}
