// Intercambiar
if(Abierto == 1) {
    Damage = false;
    alarm[0] = 120;
    Abierto = 0;
} else {
    Damage = true;
    alarm[0] = 30;
    Abierto = 1;
}
if(!audio_is_playing(snd_Interruptor))
    audio_play_sound(snd_Interruptor, 0, 0);

