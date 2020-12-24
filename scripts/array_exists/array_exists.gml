/// @description array_exists(array, value)
/// @function array_exists
/// @param array
/// @param  value
function array_exists(argument0, argument1) {
	//params: array, value
	//returns: count of how many of value exists in array
	var array = argument0;
	var value = argument1;
	var height = array_height_2d(array);
	for(var h = 0; h < height; ++h) {
	    var length = array_length_2d(array, h);
	    for(var n = 0; n < length; ++n) {
	        if(array[@h, n] == value) return true;
	    }
	}
	return false;



}
