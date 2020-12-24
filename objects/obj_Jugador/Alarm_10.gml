/// @description  Disparos enanos
if(Cantidad_Disparos > 0) {
    audio_play_sound(snd_Grito_01, 0, 0);
        audio_sound_pitch(snd_Grito_01, 0.9 + random(2)/10);
    audio_play_sound(snd_Grito_02, 0, 0);
        audio_sound_pitch(snd_Grito_02, 0.9 + random(2)/10);
    audio_play_sound(snd_Grito_03, 0, 0);
        audio_sound_pitch(snd_Grito_03, 0.9 + random(2)/10);
    audio_play_sound(snd_Grito_04, 0, 0);
        audio_sound_pitch(snd_Grito_04, 0.9 + random(2)/10);
    audio_play_sound(snd_Grito_05, 0, 0);
        audio_sound_pitch(snd_Grito_05, 0.9 + random(2)/10);
    audio_play_sound(snd_Grito_06, 0, 0);
        audio_sound_pitch(snd_Grito_06, 0.9 + random(2)/10);
    repeat(6) {
		var _b = bullet_spawn(x,y,2+random(2),2+random(2),random(360));
		_b.sprite_index = sprBulletDwarf;
        //scr_jugador_common_disparo(random(360), 2+random(2), sprBulletDwarf);
    }
    Cantidad_Disparos--;
    alarm[10] = 10;
}

