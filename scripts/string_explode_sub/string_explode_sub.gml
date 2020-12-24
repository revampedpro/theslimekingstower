/// @desc explode
/// @param string
/// @param delimiter
function string_explode_sub(argument0, argument1) {
	var c, i, j, k, s;
	s = "";
	i = 0;
	k = string_length(argument0);

	for (j = 1; j <= k; j += 1)
	{
	    c = string_char_at(argument0, j);
	    if (c == argument1)
	    {
	        _level[i] = s;
	        s = "";
	        i += 1;
	        continue;
	    }
	    s = s + c;
	}
	if (s != "")
	   _level[i] = s;



}
