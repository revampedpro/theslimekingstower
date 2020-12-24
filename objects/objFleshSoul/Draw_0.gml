// Draw life line
if(!instance_exists(obj_Jugador)) exit;
draw_set_color(c_red);
draw_set_alpha(0.2);
draw_line_width(x, y, obj_Jugador.x, obj_Jugador.y, 5);
draw_line_width(x, y, obj_Jugador.x, obj_Jugador.y, 4);
draw_line_width(x, y, obj_Jugador.x, obj_Jugador.y, 2.5);
draw_set_alpha(1);
draw_line(x, y, obj_Jugador.x, obj_Jugador.y);

// Draw self
draw_self();

