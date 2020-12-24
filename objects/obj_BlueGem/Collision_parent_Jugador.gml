/// @description  Desaparecer
if( alarm[0] > 0 ) exit;
if(network_is_online() and global.NETWORK_HOST == false) exit;
if(global.Jugador_Monedas < 99) {

global.DEBUG_MONEDAS++;
if(player_has_item(34)) Valor *= 2;
global.Jugador_Monedas += Valor;
control_UI.alarm[0] = 10;
audio_play_sound( snd_Moneda, 0, 0 );
create_effect(other.x, other.y, sprMagicEffect1, 0.5);
floating_text(other.x, other.y, "+"+string(Valor) + " " + lang(7500), c_yellow, 2);

// Challenge#08: Greed
if(challenge_check(7)) {
    with(obj_Jugador) {
        scr_jugador_common_hurt(1);
        alarm[3] = 1;
    }
}

// P2W Item
if(player_has_item(220)) charge_item(2);

instance_destroy();
if(global.Jugador_Monedas > 99) global.Jugador_Monedas = 99;

} else {

    // Moverse en contra del jugador
    if(player_has_item(60) == false) {
        var dd = point_direction(x, y, other.x, other.y);
        var cs = 0.5;
        var cx = cos(degtorad(dd))*cs;
        var cy = sin(degtorad(dd))*cs;
        if(place_free(x - cx, y)) x -= cx;
        if(place_free(x, y + cy)) y += cy;
    }

}

