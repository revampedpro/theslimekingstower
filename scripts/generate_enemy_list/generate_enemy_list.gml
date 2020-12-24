/// @description Generate an enemy list
/// @param mobid
function generate_enemy_list() {
	// Prepare vars
	var _ar = "";
	for(var i = 0; i < argument_count; i++) {
		_ar += string(argument[i])+"|";	
	}
	return _ar;


}
