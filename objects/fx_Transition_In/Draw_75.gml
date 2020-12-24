// Dibujar el rectangulo y desaparecer
Alpha -= Decrecimiento;
if(Alpha <= 0) instance_destroy();
if(instance_exists(fxTransition2))exit;
var Post_Alpha = clamp(Alpha,0,1);
draw_set_alpha(Post_Alpha);
draw_set_color(c_black); 
draw_rectangle(0,0,display_get_gui_width(),display_get_gui_width(),0);
draw_set_alpha(1);