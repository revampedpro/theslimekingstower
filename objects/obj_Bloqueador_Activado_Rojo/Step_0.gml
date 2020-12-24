// Profundidad
if(!instance_exists(obj_Jugador)) exit;
if(image_index != 4) {
    depth = -(y+0);
} else {
    depth = 180;
}

// Abrirse
if(Abierto == 1 and image_index == 4) {
    image_speed -= 0.2;
}
if(Abierto == 0 and image_index == 0) {
    image_speed = 0.2;
}

if(Abierto == 1 and image_index <= 0.2) {
    image_index = 0;
    image_speed = 0;
}

if(Abierto == 0 and image_index >= 3.8) {
    image_index = 4;
    image_speed = 0;
}

// Si el jugador tiene Get Down mantenerse abajo
if(player_has_item(133)) or (pushed) {
    Abierto = 0;
    solid = false;
    image_index = 4;
}

