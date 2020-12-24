
// HP bar
draw_set_color(c_black);
draw_roundrect(bbox_left, bbox_bottom, bbox_right, bbox_bottom+3,0);
draw_set_color(c_red);
draw_roundrect(bbox_left, bbox_bottom+1, bbox_left + (bbox_right-bbox_left)*(HP/Max_HP), bbox_bottom+2,0);

