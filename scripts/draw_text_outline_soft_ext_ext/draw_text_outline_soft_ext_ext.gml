/// @description draw_text_outline_soft_ext_ext(x,y,string,outlinewidth,color,width)
/// @function draw_text_outline_soft_ext_ext
/// @param x
/// @param y
/// @param string
/// @param outlinewidth
/// @param color
/// @param width
function draw_text_outline_soft_ext_ext(argument0, argument1, argument2, argument3, argument4, argument5) {
	draw_set_color(c_black);
	ik = argument3;
	draw_text_ext(argument0+ik,argument1,string_hash_to_newline(argument2),string_height(string_hash_to_newline("ABC")),argument5);
	draw_text_ext(argument0-ik,argument1,string_hash_to_newline(argument2),string_height(string_hash_to_newline("ABC")),argument5);
	draw_text_ext(argument0,argument1+ik,string_hash_to_newline(argument2),string_height(string_hash_to_newline("ABC")),argument5);
	draw_text_ext(argument0,argument1-ik,string_hash_to_newline(argument2),string_height(string_hash_to_newline("ABC")),argument5);
	draw_set_color(argument4);
	draw_text_ext(argument0,argument1,string_hash_to_newline(argument2),string_height(string_hash_to_newline("ABC")),argument5);



}
