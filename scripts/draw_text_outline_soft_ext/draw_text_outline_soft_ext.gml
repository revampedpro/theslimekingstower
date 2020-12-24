/// @description draw_text_outline_soft_ext(x,y,string,width,color)
/// @function draw_text_outline_soft_ext
/// @param x
/// @param y
/// @param string
/// @param width
/// @param color
function draw_text_outline_soft_ext(argument0, argument1, argument2, argument3, argument4) {
	draw_set_color(c_black);
	ik = argument3;
	draw_text(argument0+ik,argument1,string_hash_to_newline(argument2));
	draw_text(argument0-ik,argument1,string_hash_to_newline(argument2));
	draw_text(argument0,argument1+ik,string_hash_to_newline(argument2));
	draw_text(argument0,argument1-ik,string_hash_to_newline(argument2));
	draw_set_color(argument4);
	draw_text(argument0,argument1,string_hash_to_newline(argument2));



}
