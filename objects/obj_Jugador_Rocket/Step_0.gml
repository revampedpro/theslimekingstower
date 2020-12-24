// Change target
if(global.Pausado) exit;
if(instance_exists(fxTransition2))exit;
if(!instance_exists(obj_Jugador)) { instance_destroy(); exit;  }
depth = -(y);
if(instance_exists(obj_Jugador)) {
    if(instance_exists(parent_Enemigo)) {
        target = instance_nearest(x,y,parent_Enemigo);
    } else {
        target = obj_Jugador;
		if(network_is_online()) {
			target = instance_nearest(x,y,parent_Jugador);	
		}
    }
}

// Follow target
if(target != -1) {
    Angulo  = direction;
    Angulo2 = point_direction(x,y,target.x,target.y);
    
    if(target != obj_Jugador) or (target == obj_Jugador and distance_to_object(obj_Jugador)>10) {
        if(choose(0,0,0,1)) create_effect(x,y,sprSmallSmoke,0.2 + random(2)/10);
        speed = tween_to(speed, spd, 20);
        if(abs(angle_difference(Angulo,Angulo2))>5) AnguloSPD -= 1*sign(angle_difference(Angulo,Angulo2));
        Angulo += AnguloSPD;
        AnguloSPD *= .9;
        direction = Angulo;
        image_angle = direction;
    }
    
    if(target != obj_Jugador) {
        if(choose(0,0,0,1)) create_effect(x,y,sprSmallSmoke,0.2 + random(2)/10);
        var Enemigo = instance_place(x, y, parent_Enemigo);
        if(instance_place(x, y, parent_Enemigo)) {
            preMask = mask_index;
            EnemigoList = _instance_place_list(x, y, parent_Enemigo);
            for(ee = 0; ee < ds_list_size(EnemigoList); ee++) {
                var Enemigo = ds_list_find_value(EnemigoList,ee);
                if(instance_exists(Enemigo)) {
                    bullet_hit_enemy(Enemigo);
                    instance_destroy();
                    obj_Jugador.Rockets--;
                }
                mask_index = preMask;
            }
        }
    }

}

