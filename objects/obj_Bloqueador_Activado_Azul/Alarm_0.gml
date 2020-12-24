// Intercambiar
alarm[0] = 120;
if(Abierto == 1) {
    solid = false;
    Abierto = 0;
} else {
    solid = true;
    Abierto = 1;
}
if(!audio_is_playing(snd_Interruptor))
    audio_play_sound(snd_Interruptor, 0, 0);

