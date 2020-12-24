instance_destroy();
if(!instance_exists(obj_Jugador)) exit;
if(room != room_Transicion_Jefe) create_effect( x, y, spr_FX_Hit, 0.5 );

// Turbo Mode
if(player_has_item(221)) value *= 2;

// Ghost slimeking pet bonus
if(player_has_pet(51)) value *= 1.5;

obj_Jugador.Experience+=value;
if(other.alarm[2] < 0) other.alarm[2] = 2;
audio_sound_pitch(sndExperienceOrb, 0.9 + random(2)/10);
audio_stop_sound(sndExperienceOrb);
if(room != room_Transicion_Jefe) audio_play_sound(sndExperienceOrb,0,0);
obj_Jugador.flashColor = choose(c_lime,c_yellow);

// level up
if(obj_Jugador.Experience >= obj_Jugador.ExperienceMax) {
    player_level_up();
}

