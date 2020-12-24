// Calcula la distancia y angulo
var X1 = x;
var Y1 = y;
    
// Dibuja el laser
var Lazer_Color = c_fuchsia;

draw_set_color(Lazer_Color);
draw_set_alpha(0.2);
draw_line_width(X1, Y1, X2, Y2, 12);
draw_circle(X1,Y1,16,0);
draw_set_alpha(0.3);
draw_line_width(X1, Y1, X2, Y2, 8);
draw_circle(X1,Y1,13,0);
draw_set_color(choose(Lazer_Color, c_white, c_white));
draw_set_alpha(0.3);
draw_line_width(X1, Y1, X2, Y2, 5);
draw_circle(X1,Y1,10,0);

