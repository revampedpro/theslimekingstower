/// @description count_passive_items()
/// @function count_passive_items
function count_passive_items() {
	// Devuelve el numero de items pasivos de la base de datos
	if(global.PASSIVE_ITEMS[0] != -1) return true;
	var j = 0;
	for(i = 0; i < count_items(); i++) {
	    if(get_item(i,6) == false) {
	        global.PASSIVE_ITEMS[j] = i; 
	        j++;
	    }
	}
	return false;



}
