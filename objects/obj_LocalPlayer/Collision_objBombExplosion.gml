/// @description  Hurt player
if(player_has_item(277) or player_has_item(285))exit;
with(obj_Jugador) {
    scr_jugador_common_hurt(other.Fuerza);
}

