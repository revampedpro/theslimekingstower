/// @description count_items()
/// @function count_items
function count_items() {

	// Devuelve el numero de items de la base de datos
	//for( i = 0; i < 99999; i++ ) {
	//    if( string(get_item( i, 1 )) == "FIN") return i;
	//}

	// Devuelve el numero de rooms de la base de datos
	if(global.Numero_De_Items != -1) return global.Numero_De_Items;
	for( i = 1; i < 99999; i++ ) {
    
	    var Script = asset_get_index("spr_Item_" + string(i));
	    if( Script = -1 ) { 
	        global.Numero_De_Items = i-1;
	        return i-1;
	    }
    
	}



}
