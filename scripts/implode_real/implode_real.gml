/// @description implode_real(delimiter,array)
/// @param delimiter   delimiter character, string
/// @param array       group of elements, array
function implode_real(argument0, argument1) {
	//
	/// GMLscripts.com/license
	{
	    var del = argument0;
	    var arr = argument1;
	    var out = "";
	    var ind = 0;
	    var num = array_length_1d(arr);
	    repeat (num-1) {
	        out += string(arr[ind]) + del;
	        ind++;
	    }
	    out += string(arr[ind]);
	    return out;
	}


}
