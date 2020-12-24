/// @description get_random_item_from_pool(pool)
/// @function get_random_item_from_pool
/// @param pool
function get_random_item_from_pool() {
	// Retrieve a random item from the array and discard it
	var _c = -1;
	var _ID = 0;
	var _s = global.Items_All;
	switch(argument[0]) {

	    case "all": // All items
	        _s = global.Items_All;
	        break;

	    case "treasure": // All items
	        _s = global.Items_Treasure;
	        break;

	    case "boss": // All items
	        _s = global.Items_Bosses;
	        break;

	    case "arcade": // All items
	        _s = global.Items_Arcade;
	        break;

	    case "passive": // Passive items
	        _s = global.Items_Passive;
	        break;

	    case "shop": // Shop items
	        _s = global.Items_Shop;
	        break;

	}

	// Explode the string and retrieve the item
	string_explode(_s,",");
	_c = string_count(",",_s) - 1;
	if(_c > 1) {
	    _ID = string(level[1+(irandom(_c-1))]);
	} else {

	    // If pool is exhausted get damage up
	    _ID = 1;
    
	}

	// Delete the item from all the arrays
	if(_c > 1) {
	    global.Items_All      = string_replace(global.Items_All,","+_ID+",",",");
	    global.Items_Treasure = string_replace(global.Items_Treasure,","+_ID+",",",");
	    global.Items_Bosses   = string_replace(global.Items_Bosses,","+_ID+",",",");
	    global.Items_Arcade   = string_replace(global.Items_Arcade,","+_ID+",",",");
	    global.Items_Passive  = string_replace(global.Items_Passive,","+_ID+",",",");
	    global.Items_Shop     = string_replace(global.Items_Shop,","+_ID+",",",");
	}

	// Return the ID
	return real(_ID);




}
