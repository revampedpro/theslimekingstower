// Parar sonido del laser
if(instance_exists(fxTransition2))exit;
if(!instance_exists(obj_Jugador)) {
    instance_destroy();
    exit;
}

// Dibujar dedo
x = obj_Jugador.x;
y = obj_Jugador.y;
visible = obj_Jugador.visible;
sprite_index = sprDisparoFinger;
if(instance_exists(controlador_Disparo)) {
    if(controlador_Disparo.A != 0) and (controlador_Disparo.Device != -1) {
        Angulo2 = controlador_Disparo.A + random(1);
    } else {
        if(controlador_Movimiento.A != 0) {
            Angulo2 = controlador_Movimiento.A + random(1);
        }
    } 
    if(controlador_Disparo.Device == -1) and (controlador_Movimiento.Device == -1) {
        if(obj_Jugador.image_Direction == 1) Angulo2 = 0;
        if(obj_Jugador.image_Direction == 2) Angulo2 = 180;
        if(obj_Jugador.image_Direction == 3) Angulo2 = 90;
        if(obj_Jugador.image_Direction == 4) Angulo2 = 270;
    }
} else {
    Angulo2 = 0;
}
if(abs(angle_difference(Angulo,Angulo2))>5) AnguloSPD -= 1*sign(angle_difference(Angulo,Angulo2));
Angulo += AnguloSPD;
AnguloSPD *= .9;
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,Angulo,image_blend,image_alpha);

{

    draw_set_blend_mode(bm_add);
    
    // Calcula la distancia y angulo
    var Distancia = range_finder(x, y, Angulo, 600, parent_Solid, true, true);
    Distancia = 300;
    var X1 = x; 
    var X2 = x + cos(degtorad(Angulo))*(Distancia+1);
    var Y1 = y; 
    var Y2 = y - sin(degtorad(Angulo))*(Distancia+1);
    
    // Si colisiona
    if(Distancia != -1) {
                
        // Dibuja el laser
        var Lazer_Color = c_aqua;
                
        // Destruir enemigos
        var EnemigoList = _collision_line_list(X1, Y1, X2, Y2, parent_Enemigo, 1, 1);
        if(EnemigoList != noone) {
            for(ee = 0; ee < ds_list_size(EnemigoList); ee++) {
                var Enemigo = ds_list_find_value(EnemigoList,ee);
                if(Enemigo != noone) { 
                    if(Enemigo.alarm[2]<0) {
                        Enemigo.alarm[2] = 10;
                        bullet_hit_enemy(Enemigo);
                        if(instance_exists(Enemigo)) Enemigo.alarm[2] = 10;
                        shake_camera(1,1);
                    }
                }
            }
            ds_list_destroy(EnemigoList);
        }
        
        // Destruir destructibles
        if(collision_line(X1, Y1, X2, Y2, parent_Destruible, 0, 1)) {
            var Destruible = collision_line(X1, Y1, X2, Y2, parent_Destruible, 0, 1);
            if(Destruible) bullet_hit_destructable(Destruible);
        }
    
        if(player_has_item(53)) {
            if(collision_line(X1, Y1, X2, Y2, obj_Pinchos, 0, 1)) {
            var Destruible = collision_line(X1, Y1, X2, Y2, obj_Pinchos, 0, 1);
            if(Destruible) bullet_hit_spikes(Destruible);
            }
        }
        
    }
    
    draw_set_blend_mode(bm_normal);
    draw_set_alpha(1);
}

