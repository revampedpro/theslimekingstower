// Burning place
if(instance_exists(obj_Jugador) and player_has_item(167)) {
    HP -= 1;
    alarm[2] = 4;
}

