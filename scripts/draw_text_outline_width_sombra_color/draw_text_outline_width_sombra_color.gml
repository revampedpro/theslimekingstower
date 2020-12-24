/// @description draw_text_outline_width_sombra_color(x,y,string,width,color)
/// @function draw_text_outline_width_sombra_color
/// @param x
/// @param y
/// @param string
/// @param width
/// @param color
function draw_text_outline_width_sombra_color(argument0, argument1, argument2, argument3, argument4) {
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
	draw_set_color(argument4);
	draw_text(argument0,argument1-sss,string_hash_to_newline(argument2));



}
