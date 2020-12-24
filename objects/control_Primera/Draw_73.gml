// Oscurecer
if(global.Comprobar_Primera_Vez = false)exit;
draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(0,0,640,360,0);
draw_set_alpha(1);

// Dibujar flecha
draw_self();

