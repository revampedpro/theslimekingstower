// Wait for transitions
if(instance_exists(fxTransition2)) {
	alarm[0]++;
	exit;
}

// Draw rectangle
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fontChat2);
var str  = string_copy(string_wrap(text_to,width_max),1,pos);
var str2 = string_copy(string_wrap(text_to,width_max),1,min(pos+1,string_length(text_to)));
var s = string_height(text_to);
if(started == true) {
	/*if(width  < (string_width_ext( str2,s,width_max)+margin+1)) */width_to  = (string_width_ext( str2,s,width_max)+margin+1);
	/*if(height < (string_height_ext(str2,s,width_max)+margin+1)) */height_to = (string_height_ext(str2,s,width_max)+margin+1);
} else {
	str = "";	
}
width  = tween_to(width,  scale*width_to,  (expand_speed)*(1+(4*!started)));
height = tween_to(height, scale*height_to, (expand_speed)*(1+(4*!started)));

// Reposition
xx = x - width/2;
yy = y - height/2;

// Widh black border
draw_set_alpha(scale);
draw_set_color(c_black);
draw_rectangle(xx-2,yy-2,xx+2+width,yy+2+height,0);

// White borders
draw_set_color(c_white);
draw_rectangle(xx-border_width,yy,xx+width+border_width,yy+height,0);
draw_rectangle(xx,yy-border_width,xx+width,yy+height+border_width,0);

// Black rectangle
draw_set_color(c_black);
draw_rectangle(xx,yy,xx+width,yy+height,0);

// Draw text
var w = 0;
var h = 0;
var l = string_length(text);
draw_set_color(c_white);

draw_set_alpha(scale);
draw_text_transformed(xx+margin,yy+margin,str,scale,scale,0);

// Close
if(destroy == true) {
	scale = tween_to(scale,0,10);	
	if(scale == 0) instance_destroy();
}

draw_set_alpha(1);
