// Position
depth = -y;
if(instance_exists(obj_Jugador)) {
	if(stone == false) {
		if(right) {
		    x = obj_Jugador.x + 24;
		    y = obj_Jugador.y;
		} else {
		    x = obj_Jugador.x - 24;
		    y = obj_Jugador.y;
		}
	}
} else {
    instance_destroy();
}
if(instance_exists(obj_Jugador)) {
    image_speed = obj_Jugador.image_speed;
    if(alarm[1] > 0) {
        switch(shootDirection) {
            case "right": sprite_index = obj_Jugador.spr_Disparando_Caminando_Derecha; break;
            case "left":  sprite_index = obj_Jugador.spr_Disparando_Caminando_Izquierda; break;
            case "up":    sprite_index = obj_Jugador.spr_Disparando_Caminando_Arriba; break;
            case "down":  sprite_index = obj_Jugador.spr_Disparando_Caminando_Abajo; break;
            default: sprite_index = obj_Jugador.sprite_index; break;
        }
    } else {
        sprite_index = obj_Jugador.sprite_index;
    }
}

