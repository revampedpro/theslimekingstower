/// @description get_random_boss_from_pool(pool)
/// @function get_random_boss_from_pool
/// @param pool
function get_random_boss_from_pool() {
	// Retrieve a random boss from the array and discard it
	var _c = -1;
	var _ID = 0;
	var _s = global.BOSS_ALL;
	switch(argument[0]) {

	    case "all": // All bosses
	        _s = global.BOSS_ALL;
	        break;

	    case "rush": // Rush boss
	        _s = global.BOSS_RUSH;
	        break;

	}

	// Retrieve the boss
	ds_list_shuffle(_s);
	_ID = ds_list_find_value(_s,0);
	if(is_undefined(_ID)) _ID = 1;

	// Return the ID
	return real(_ID);




}
