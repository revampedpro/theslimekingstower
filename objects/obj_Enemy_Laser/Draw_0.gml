// Parar sonido del laser
if(!instance_exists(obj_Jugador)) {
    instance_destroy();
    exit;
}
if(Parent != -10) {
	if(!instance_exists(Parent)) {
	    instance_destroy();
	    exit;
	} else {
		x = Parent.x;
		y = Parent.y;
		depth = Parent.depth+2;	
	}
} else {
	x = x2;
	y = y2;
}

// Dibujar laser
{

    draw_set_blend_mode(bm_add);
    
    // Calcula la distancia y angulo
    var Angulo = Direction;
    Distancia = 300;
    var X1 = x; 
    var X2 = x + cos(degtorad(Angulo))*(Distancia+1);
    var Y1 = y; 
    var Y2 = y - sin(degtorad(Angulo))*(Distancia+1);
    
    // Si colisiona
    if(Distancia != -1) {
        
        // Dibuja el laser
        var Lazer_Color = c_aqua;
        
        draw_set_color(Lazer_Color);
        draw_set_alpha(0.1);
        draw_line_width(X1, Y1, X2, Y2, 20);
        draw_circle(X1,Y1,18,0);
        draw_set_alpha(0.2);
        draw_line_width(X1, Y1, X2, Y2, 16);
        draw_circle(X1,Y1,17,0);
        draw_set_alpha(0.2);
        draw_line_width(X1, Y1, X2, Y2, 12);
        draw_circle(X1,Y1,16,0);
        draw_set_color(choose(Lazer_Color, c_white, c_white));
        draw_set_alpha(0.3);
        draw_line_width(X1, Y1, X2, Y2, 8);
        draw_circle(X1,Y1,13,0);
        draw_set_alpha(0.3);
        draw_line_width(X1, Y1, X2, Y2, 5);
        draw_circle(X1,Y1,10,0);
        
        // Hit player
        if(collision_line(X1,Y1,X2,Y2,parent_Jugador,false,true)) {
            with(obj_Jugador) event_perform(ev_other, ev_user4);
        }
                
    }
    
    draw_set_blend_mode(bm_normal);
    draw_set_alpha(1);
}

