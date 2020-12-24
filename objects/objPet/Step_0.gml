// Visible
if(room == room_Transicion_Jefe) visible = false; else visible = global.PetVisible;;

// Follow player
depth = -y;
if(instance_exists(obj_Jugador)) {
    if(distance_to_object(obj_Jugador) > 4) {
        r = point_distance(x, y, obj_Jugador.x, obj_Jugador.y);
        d = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
        x += (Speed + r/50) * cos(degtorad(d));
        y -= (Speed + r/50) * sin(degtorad(d));
    }

    // Change sprite
    if(d <= 45  or d >= 315) sprite_index = sprRight;
    if(d >= 45  && d <= 135) sprite_index = sprUp;
    if(d >= 135 && d <= 225) sprite_index = sprLeft;
    if(d >= 225 && d <= 315) sprite_index = sprDown;
    
}

