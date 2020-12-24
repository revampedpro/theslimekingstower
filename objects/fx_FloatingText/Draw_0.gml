//y-=.5;
y = tween_to(y,ystart-16,15);
draw_set_color(color);
draw_set_font(font_Gold);
draw_set_halign(fa_middle);
if(global.Quality < 2) {
	if(!outline) draw_text_transformed(x,y,string_hash_to_newline(text),1,1,0);
	if( outline) draw_text_transformed_outline(x,y,text,1,1,0,c_black,color,2);
}
draw_set_halign(fa_left);

if(destroy) {
	scale = tween_to(scale,0,10);	
} else {
	scale = tween_to(scale,1,10);
}
if(destroy) and (scale == 0) instance_destroy();

if(global.Quality == 2) {
	var _t = string_hash_to_newline(text);
	var _x = x - string_width(_t)/2;
	var _y = y;
	var _w = 0;
	var sl = string_length(_t);
	for(var i = 1; i <= sl; i++) {
		var c = string_char_at(_t,i);
		draw_set_color(c_black);
		draw_text_transformed(_x+1+_w,_y+3  +wave(-1,1,1,i/10),c,scale,scale,0);	
		draw_text_transformed(_x-1+_w,_y+3  +wave(-1,1,1,i/10),c,scale,scale,0);	
		draw_text_transformed(_x+_w  ,_y-1+3+wave(-1,1,1,i/10),c,scale,scale,0);	
		draw_text_transformed(_x+_w  ,_y+1+3+wave(-1,1,1,i/10),c,scale,scale,0);	
	
		draw_text_transformed(_x+_w,_y+3+wave(-1,1,1,i/10),c,scale+.1*scale,scale+.1*scale,0);	
	
		draw_set_color(color);
		draw_text_transformed(_x+_w,_y+3+wave(-1,1,1,i/10),c,scale,scale,0);	
		_w += string_width(c);
	}
}