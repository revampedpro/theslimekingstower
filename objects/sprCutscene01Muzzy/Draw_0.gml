
draw_set_alpha(1);

switch(alarm[0]) {
    case 0: 
    case 1: 
        draw_set_color(c_lime); 
    break;
    case 2: 
    case 3: 
        draw_set_color(c_black); 
    break;
    case 4: 
    case 5: 
        draw_set_color(c_white); 
    break;
}
draw_circle(x,y,30,0);

