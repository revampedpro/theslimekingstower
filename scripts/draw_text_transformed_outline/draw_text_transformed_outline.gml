/// @description draw_text_transformed_outline(x, y, string, xscale, yscale, angle, outline, color[,width]);
/// @function draw_text_transformed_outline
/// @param x
/// @param  y
/// @param  string
/// @param  xscale
/// @param  yscale
/// @param  angle
/// @param  outline
/// @param  color[
/// @param width]
function draw_text_transformed_outline() {
	var _oo = 3;
	if(argument_count > 8) _oo = argument[8];
	for(t = 0; t < _oo; t++) {
	    draw_set_color(argument[6]);
	    draw_text_transformed(argument[0]+t, argument[1], string_hash_to_newline(argument[2]), argument[3], argument[4], argument[5]);
	    draw_text_transformed(argument[0]-t, argument[1], string_hash_to_newline(argument[2]), argument[3], argument[4], argument[5]);
	    draw_text_transformed(argument[0], argument[1]+t, string_hash_to_newline(argument[2]), argument[3], argument[4], argument[5]);
	    draw_text_transformed(argument[0], argument[1]-t, string_hash_to_newline(argument[2]), argument[3], argument[4], argument[5]);   
	}
	draw_set_color(argument[7]);
	draw_text_transformed(argument[0], argument[1], string_hash_to_newline(argument[2]), argument[3], argument[4], argument[5]);



}
