// Burning place
if(other.Damage == false)exit;
if(instance_exists(obj_Jugador) and (player_has_item(174) or other.hit_enemies == true)) {
    HP -= 1;
    alarm[2] = 4;
}

