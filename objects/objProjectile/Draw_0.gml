action_inherited();
///Draw
draw_self();

shadow_size2 = shadow_size/2;
draw_set_colour(c_black);
draw_set_alpha(0.25);
draw_ellipse(x-shadow_size, y+z-shadow_size2, x+shadow_size, y+z+shadow_size2, false);
draw_set_alpha(1);
draw_set_colour(c_white);


