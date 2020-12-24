// Get vars
var x1 = x-100;
var y1 = y-8;
var x2 = x+100;
var y2 = y+14;

// Draw box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(x1+8,y1+8,x2+8,y2+8,0);
draw_set_alpha(1);
draw_rectangle(x1-2,y1-2,x2+2,y2+2,0);
draw_set_color(c_white);
draw_rectangle(x1,y1,x2,y2,0);

// Change text
if(mouse_over(x1,y1,x2,y2)) {
	if(mouse_check_button_pressed(mb_left)) {
		get_string_async("","");	
	}
}

// Draw text
var _text = text;
if(encrypted) {
	_text = "";
	repeat(string_length(text)) _text += "*";
}
draw_set_font(fontTextbox);
draw_set_color(c_black);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_alpha(0.5);
//draw_text(x+1,y+3,_text);
draw_set_alpha(1);
draw_text_outline(x,y+3,_text);