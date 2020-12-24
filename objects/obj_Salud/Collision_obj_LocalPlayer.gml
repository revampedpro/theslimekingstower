/// @description  Desaparecer
if( alarm[0] > 0 ) exit;
if(!instance_exists(obj_Jugador)) exit;
if(obj_Jugador.HP < obj_Jugador.HP_Max) {
    global.DEBUG_SALUD++;
    obj_Jugador.HP = min(obj_Jugador.HP+2,obj_Jugador.HP_Max);
    control_UI.alarm[1] = 10;
    audio_play_sound( snd_Heal, 0, 0 );
    create_effect(obj_Jugador.x, obj_Jugador.y, sprMagicEffect1, 0.5);
    floating_text(obj_Jugador.x, obj_Jugador.y, "+2 hp", c_red, 2);
    instance_destroy();
} else {

    // Moverse en contra del jugador
    if(player_has_item(60) == false) {
        var dd = point_direction(x, y, other.x, other.y);
        var cs = 2;
        var cx = cos(degtorad(dd))*cs;
        var cy = sin(degtorad(dd))*cs;
        if(place_free(x - cx, y)) x -= cx;
        if(place_free(x, y + cy)) y += cy;
    }

}

