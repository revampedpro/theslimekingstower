/// @description draw_text_outline_soft(x,y,string)
/// @function draw_text_outline_soft
/// @param x
/// @param y
/// @param string
function draw_text_outline_soft(argument0, argument1, argument2) {
	draw_set_color(c_black);
	ik = 2;
	draw_text(argument0+ik,argument1,string_hash_to_newline(argument2));
	draw_text(argument0-ik,argument1,string_hash_to_newline(argument2));
	draw_text(argument0,argument1+ik,string_hash_to_newline(argument2));
	draw_text(argument0,argument1-ik,string_hash_to_newline(argument2));
	draw_set_color(c_white);
	draw_text(argument0,argument1,string_hash_to_newline(argument2));



}
