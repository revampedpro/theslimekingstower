/// @description string_comma(string)
/// @function string_comma
/// @param string
function string_comma(argument0) {
	//script delimitstr
	//string = delimitstr(numberstring)
	//assumes a whole number passed as string
	//no 12345.6789
	//only this format allowed "12345"
	var s; s = argument0;
	var l; l = string_length(s);
	var p; p = l;
	var invs; invs = "";
	var cct; cct = 0;
	repeat(l)
	{
	invs += string_char_at(s,p);
	p-=1;
	cct+=1;
	if(cct==3 and p !=0) 
	{
	invs+=".";
	cct = 0;
	}
	}
	s = invs;
	l = string_length(s);
	p = l;
	invs = "";
	repeat(l)
	{
	invs += string_char_at(s,p);
	p-=1;
	}
	return invs;



}
