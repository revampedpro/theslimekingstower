/// @description draw_text_outline_width_sombra(x,y,string,width)
/// @function draw_text_outline_width_sombra
/// @param x
/// @param y
/// @param string
/// @param width
function draw_text_outline_width_sombra(argument0, argument1, argument2, argument3) {
	draw_set_color(c_black);
	var sss = 1;
	for(i=0;i<argument3;i++) {
	    draw_text(argument0+i,argument1-sss+i,string_hash_to_newline(argument2));
	    draw_text(argument0+i,argument1-sss-i,string_hash_to_newline(argument2));
	    draw_text(argument0-i,argument1-sss+i,string_hash_to_newline(argument2));
	    draw_text(argument0-i,argument1-sss-i,string_hash_to_newline(argument2));
	    draw_text(argument0+i,argument1-sss,string_hash_to_newline(argument2));
	    draw_text(argument0-i,argument1-sss,string_hash_to_newline(argument2));
	    draw_text(argument0  ,argument1-sss+i,string_hash_to_newline(argument2));
	    draw_text(argument0  ,argument1-sss-i,string_hash_to_newline(argument2));
	}
	for(i=0;i<argument3;i++) {
	    draw_text(argument0+i,argument1+i,string_hash_to_newline(argument2));
	    draw_text(argument0+i,argument1-i,string_hash_to_newline(argument2));
	    draw_text(argument0-i,argument1+i,string_hash_to_newline(argument2));
	    draw_text(argument0-i,argument1-i,string_hash_to_newline(argument2));
	    draw_text(argument0+i,argument1,string_hash_to_newline(argument2));
	    draw_text(argument0-i,argument1,string_hash_to_newline(argument2));
	    draw_text(argument0  ,argument1+i,string_hash_to_newline(argument2));
	    draw_text(argument0  ,argument1-i,string_hash_to_newline(argument2));
	}
	draw_set_color(c_white);
	draw_text(argument0,argument1-sss,string_hash_to_newline(argument2));



}
