// Mode
draw_set_blend_mode(bm_add);
    
// Calcula la distancia y angulo
var X1 = x1; 
var X2 = x2;
var Y1 = y1; 
var Y2 = y2;
    
                
// Dibuja el laser
var Lazer_Color = c_aqua;
draw_set_color(Lazer_Color);
draw_set_alpha(0.1*alarm[0]/10);
draw_line_width(X1, Y1, X2, Y2, 5);
draw_circle(X1,Y1,8,0);
draw_set_alpha(0.2*alarm[0]/10);
draw_line_width(X1, Y1, X2, Y2, 4);
draw_circle(X1,Y1,7,0);
draw_set_alpha(0.2*alarm[0]/10);
draw_line_width(X1, Y1, X2, Y2, 3);
draw_circle(X1,Y1,6,0);
draw_set_color(choose(Lazer_Color, c_white, c_white));
draw_set_alpha(0.3*alarm[0]/10);
draw_line_width(X1, Y1, X2, Y2, 2);
draw_circle(X1,Y1,5,0);
draw_set_alpha(0.3*alarm[0]/10);
draw_line_width(X1, Y1, X2, Y2, 1);
draw_circle(X1,Y1,4,0); 
draw_set_blend_mode(bm_normal);
draw_set_alpha(1);