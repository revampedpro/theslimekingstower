// Draw borders
draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(room_width,0,room_width-border_margin_width,room_height,0);
draw_rectangle(0,0,border_margin_width,room_height,0);
draw_rectangle(0,0,room_width,border_margin_height,0);
draw_rectangle(0,room_height,room_width,room_height-border_margin_height,0);
draw_rectangle(-50,-50,room_width+50,0,0);
draw_rectangle(-50,room_height,room_width+50,room_height+50,0);
draw_rectangle(-50,-50,0,room_height+50,0);
draw_rectangle(50+room_width,-50,room_width,room_height+50,0);

draw_set_alpha(0.8 - time*.8);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_alpha(1);


