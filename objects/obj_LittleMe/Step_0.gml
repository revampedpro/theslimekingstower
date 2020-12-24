// Position
depth = -y;
if(instance_exists(obj_Jugador)) {
    direction = point_direction(x,y,obj_Jugador.x,obj_Jugador.y);
    if(distance_to_object(obj_Jugador)>(8+(8*pos))) {
        speed = tween_to(speed, spd, 5);
    } else {
        speed = tween_to(speed, 0, 5);
    }
    speed *= .95;
}
if(instance_exists(obj_Jugador)) {
    image_speed = obj_Jugador.image_speed;
    if(alarm[1] > 0) {
        switch(shootDirection) {
            case "right": sprite_index = obj_Jugador.spr_Disparando_Caminando_Derecha; break;
            case "left":  sprite_index = obj_Jugador.spr_Disparando_Caminando_Izquierda; break;
            case "up":    sprite_index = obj_Jugador.spr_Disparando_Caminando_Arriba; break;
            case "down":  sprite_index = obj_Jugador.spr_Disparando_Caminando_Abajo; break;
        }
    } else {
        sprite_index = obj_Jugador.sprite_index;
    }
}

