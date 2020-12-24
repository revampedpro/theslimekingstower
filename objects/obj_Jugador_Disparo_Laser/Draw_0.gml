// Parar sonido del laser
if(!instance_exists(Parent)) and (Parent != -1) {
    instance_destroy();
    exit;
}

// Dibujar laser
if(Parent != -1) {
	x = Parent.x;
	y = Parent.y;
} else {
	x = x2;
	y = y2;
}
{

    draw_set_blend_mode(bm_add);
    
    // Calcula la distancia y LAngulo
    if(Parent != -1) LAngulo = Parent.Laser_Direction + random(1);
    Distancia = 300;
    var X1 = x; 
    var X2 = x + cos(degtorad(LAngulo))*(Distancia+1);
    var Y1 = y; 
    var Y2 = y - sin(degtorad(LAngulo))*(Distancia+1);
    
    // Si colisiona
    if(Distancia != -1) {
        
        // Modificar el sprite del jugador
		if(Parent != -1) {
	        if(Parent.Laser_Direction != -1) {
	            if(LAngulo > 315 or  LAngulo <= 45)  { sprite_index = Parent.spr_Disparando_Caminando_Derecha; }
	            if(LAngulo > 135 and LAngulo <= 225) { sprite_index = Parent.spr_Disparando_Caminando_Izquierda; }
	            if(LAngulo > 225 and LAngulo <= 315) { sprite_index = Parent.spr_Disparando_Caminando_Abajo; }
	            if(LAngulo > 45  and LAngulo <= 135) { sprite_index = Parent.spr_Disparando_Caminando_Arriba; }
	        }
		}
        
        // Dibuja el laser
        var Lazer_Color = c_aqua;
        
        // Rainbow Shots
        if(player_has_item(137)) {
            Lazer_Color = make_color_hsv(random(255), 255, 255);
        }
        
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
        
        // Crea particulas de choque
        instance_create(X2, Y2, fx_Laser_Particle);
        shake_camera(1,1);
        
        // Destruir enemigos
        var EnemigoList = _collision_line_list(X1, Y1, X2, Y2, parent_Enemigo, 1, 1);
        if(EnemigoList != noone) {
            for(ee = 0; ee < ds_list_size(EnemigoList); ee++) {
                var Enemigo = ds_list_find_value(EnemigoList,ee);
                if(Enemigo != noone) and (instance_exists(Enemigo)) { 
                
                    if(Enemigo.alarm[2]<0) {
                        Enemigo.alarm[2] = 4;
                        bullet_hit_enemy(Enemigo);
                    }

                }
            }
            ds_list_destroy(EnemigoList);
        }
        
        // Destruir destructibles
        if(collision_line(X1, Y1, X2, Y2, parent_Destruible, 0, 1) != noone) {
            var Destruible = collision_line(X1, Y1, X2, Y2, parent_Destruible, 0, 1);
            if(Destruible) bullet_hit_destructable(Destruible);
        }
    
        if(player_has_item(53)) {
            if(collision_line(X1, Y1, X2, Y2, obj_Pinchos, 0, 1) != noone) {
            var Destruible = collision_line(X1, Y1, X2, Y2, obj_Pinchos, 0, 1);
            if(Destruible) bullet_hit_spikes(Destruible);
            }
        }
        
    }
    
    draw_set_blend_mode(bm_normal);
    draw_set_alpha(1);
}
