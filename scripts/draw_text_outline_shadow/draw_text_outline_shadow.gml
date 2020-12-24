/// @description draw_text_outline(x,y,string)
/// @function draw_text_outline
/// @param x
/// @param y
/// @param string
function draw_text_outline_shadow(argument0, argument1, argument2) {
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
	    draw_set_alpha( 0.3 );
	    draw_text(argument0+2,argument1+2,string_hash_to_newline(argument2));
	    draw_set_alpha( 1 );
	draw_set_color(c_white);
	draw_text(argument0,argument1,string_hash_to_newline(argument2));



}
