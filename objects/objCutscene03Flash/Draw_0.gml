alpha -= spd;
if(alpha <= 0) instance_destroy();
draw_set_color(c_white);
draw_set_alpha(min(1,alpha));
draw_rectangle(0,0,room_width,room_height,0);
draw_set_alpha(1);

