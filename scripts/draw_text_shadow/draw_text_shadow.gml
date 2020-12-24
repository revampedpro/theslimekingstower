/// @description draw_text_shadow(x,y,string,shadow_sep)
/// @function draw_text_shadow
/// @param x
/// @param y
/// @param string
/// @param shadow_sep
function draw_text_shadow() {
	// Draw text with shadow
	draw_set_color(c_black);
	draw_set_alpha(0.77);
	draw_text(argument[0]+argument[3],argument[1]+argument[3],string_hash_to_newline(argument[2]));
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(argument[0],argument[1],string_hash_to_newline(argument[2]));



}
