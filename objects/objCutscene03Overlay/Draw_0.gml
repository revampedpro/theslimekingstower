a += 4;
if(a > 359) a = 0;
c = abs(sin(degtorad(a)));
draw_set_color(make_color_hsv(100+c*50,255,255));
draw_set_alpha(0.1 + 0.2*c);
draw_rectangle(-20,-20,room_width+20,room_height+20,0);
draw_set_alpha(1);

