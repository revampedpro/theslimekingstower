// Dibujar el rectangulo y desaparecer
Alpha -= Decrecimiento;
if(Alpha <= 0) instance_destroy();
var Post_Alpha = clamp(Alpha,0,1);
draw_set_alpha(Post_Alpha);
draw_set_color(c_white); 
draw_rectangle(__view_get( e__VW.XView, 0 )-20,__view_get( e__VW.YView, 0 )-20,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+20,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+20,0);
draw_set_alpha(1);

