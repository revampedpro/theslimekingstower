// Profundidad
if(Abierto == 1) {
    depth = -(y+0);
} else {
    depth = 180;
}

// Abrirse
if(Abierto == 1 and image_index == 4) {
    image_speed -= 0.3;
}
if(Abierto == 0 and image_index == 0) {
    image_speed = 0.3;
}

if(Abierto == 1 and image_index <= 0.2) {
    image_index = 0;
    image_speed = 0;
    if(destroy_on_animation_end) {
        create_effect(x, y, sprSmoke, 0.2 + random(5)/10);
        instance_destroy();
    }
}

if(Abierto == 0 and image_index >= 3.8) {
    image_index = 4;
    image_speed = 0;
}

// Si el jugador tiene Get Down mantenerse abajo
if(instance_exists(obj_Jugador)) {
    if(player_has_item(133)) {
        Damage = false;
        Abierto = 0;
        image_index = 4;
    }
}

