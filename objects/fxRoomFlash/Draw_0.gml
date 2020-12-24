draw_set_color(color);
draw_set_alpha(length/lengthmax*.5);
length--;
draw_rectangle(0, 0, room_width, room_height, 0);
draw_set_alpha(1);
if(length <= 0) instance_destroy();

