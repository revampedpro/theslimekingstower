/// @description draw_text_outline_color(x,y,string,color)
/// @function draw_text_outline_color
/// @param x
/// @param y
/// @param string
/// @param color
function draw_text_outline_color(argument0, argument1, argument2, argument3) {
	draw_set_color(c_black);
	for(i=0;i<3;i++) {
	    draw_text(argument0+i,argument1+i,string_hash_to_newline(argument2));
	    draw_text(argument0+i,argument1-i,string_hash_to_newline(argument2));
	    draw_text(argument0-i,argument1+i,string_hash_to_newline(argument2));
	    draw_text(argument0-i,argument1-i,string_hash_to_newline(argument2));
	    draw_text(argument0+i,argument1,string_hash_to_newline(argument2));
	    draw_text(argument0-i,argument1,string_hash_to_newline(argument2));
	    draw_text(argument0,argument1+i,string_hash_to_newline(argument2));
	    draw_text(argument0,argument1-i,string_hash_to_newline(argument2));
	}
	draw_set_color(argument3);
	draw_text(argument0,argument1,string_hash_to_newline(argument2));



}
