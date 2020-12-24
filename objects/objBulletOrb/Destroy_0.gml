// Death effects
var ss = audio_play_sound(snd_Interruptor,0,0);
audio_sound_pitch(ss,1.7 + random(4)/10);
audio_play_sound(snd_Eye_Die,0,0);

// Create smokes
repeat(irandom_range(4,8)) {
	var s = create_effect(x,y,sprSmoke,0.2 + random(4)/10);
	s.vspeed = -(0.1+random(5)/10);
}