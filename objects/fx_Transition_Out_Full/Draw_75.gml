// Dibujar el rectangulo y desaparecer
Alpha += Aumento;
if(Alpha >= 1) instance_destroy();
var Post_Alpha = clamp(Alpha,0,1);
draw_set_alpha(Post_Alpha);
draw_set_color(c_black);
draw_rectangle(0,0,640,360,0);
draw_set_alpha(1);

