/// @description get_item_from_pool(id)
/// @function get_item_from_pool
/// @param id
function get_item_from_pool() {
	// Retrieve an item and then discard it
	var _ID = string(argument[0]);
	var _exists = false;

	// Delete the item from all the arrays
	if(string_count(","+_ID+",",global.Items_All))      { global.Items_All        = string_replace(global.Items_All,","+_ID+",",",");       _exists = true; }
	if(string_count(","+_ID+",",global.Items_Treasure)) { global.Items_Treasure   = string_replace(global.Items_Treasure,","+_ID+",",",");  _exists = true; }
	if(string_count(","+_ID+",",global.Items_Bosses))   { global.Items_Bosses     = string_replace(global.Items_Bosses,","+_ID+",",",");    _exists = true; }
	if(string_count(","+_ID+",",global.Items_Arcade))   { global.Items_Arcade     = string_replace(global.Items_Arcade,","+_ID+",",",");    _exists = true; }
	if(string_count(","+_ID+",",global.Items_Shop))     { global.Items_Shop       = string_replace(global.Items_Shop,","+_ID+",",",");    _exists = true; }
	if(string_count(","+_ID+",",global.Items_Passive))  { global.Items_Passive    = string_replace(global.Items_Passive,","+_ID+",",",");   _exists = true; }

	// If the item isn't in any pool, get damage up
	if(_exists == false) _ID = 1;

	// Return the ID
	return real(_ID);




}
