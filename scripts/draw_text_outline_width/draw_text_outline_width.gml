/// @description draw_text_outline_width(x,y,string,width)
/// @function draw_text_outline_width
/// @param x
/// @param y
/// @param string
/// @param width
function draw_text_outline_width(argument0, argument1, argument2, argument3) {
	draw_set_color(c_black);
	for(i=0;i<argument3;i++) {
	    draw_text(argument0+i,argument1+i,string_hash_to_newline(argument2));
	    draw_text(argument0+i,argument1-i,string_hash_to_newline(argument2));
	    draw_text(argument0-i,argument1+i,string_hash_to_newline(argument2));
	    draw_text(argument0-i,argument1-i,string_hash_to_newline(argument2));
	    draw_text(argument0+i,argument1,string_hash_to_newline(argument2));
	    draw_text(argument0-i,argument1,string_hash_to_newline(argument2));
	    draw_text(argument0,argument1+i,string_hash_to_newline(argument2));
	    draw_text(argument0,argument1-i,string_hash_to_newline(argument2));
	}
	draw_set_color(c_white);
	draw_text(argument0,argument1,string_hash_to_newline(argument2));



}
