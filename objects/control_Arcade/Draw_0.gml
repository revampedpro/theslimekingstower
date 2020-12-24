/// @description
draw_self();

// Draw bar
if(counter > 0) {

	draw_set_color(c_white);
	draw_rectangle(bbox_left-2,bbox_bottom-2+3,bbox_right+2,bbox_bottom+2+6,0);

	draw_set_color(c_black);
	draw_rectangle(bbox_left-1,bbox_bottom-1+3,bbox_right+1,bbox_bottom+1+6,0);

	draw_set_color(make_color_rgb(255-(255*counter/60),(255*counter/60),0));
	draw_rectangle(bbox_left,bbox_bottom+3,bbox_left + (bbox_right-bbox_left)*(counter/60),bbox_bottom+6,0);

}
