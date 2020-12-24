/// @description explode_real(delimiter,string)
/// @param delimiter   delimiter character, string
/// @param string      group of elements, string
function explode_real(argument0, argument1) {
	//
	/// GMLscripts.com/license
	{
	    var arr;
	    var del = argument0;
	    var str = argument1 + del;
	    var len = string_length(del);
	    var ind = 0;
	    repeat (string_count(del, str)) {
	        var pos = string_pos(del, str) - 1;
	        arr[ind] = real(string_copy(str, 1, pos));
	        str = string_delete(str, 1, pos + len);
	        ind++;
	    }
	    return arr;
	}


}
