instance_destroy();

if(!instance_exists(obj_Jugador))exit;

// Turbo Mode
if(player_has_item(221)) value *= 2;

obj_Jugador.Experience+=value;
if(obj_Jugador.alarm[2] < 0) obj_Jugador.alarm[2] = 2;
audio_sound_pitch(sndExperienceOrb, 0.9 + random(2)/10);
audio_stop_sound(sndExperienceOrb);
if(room != room_Transicion_Jefe) audio_play_sound(sndExperienceOrb,0,0);
obj_Jugador.flashColor = choose(c_lime,c_yellow);

// level up
if(obj_Jugador.Experience >= obj_Jugador.ExperienceMax) {
    player_level_up();
}

