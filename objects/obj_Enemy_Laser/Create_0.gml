// Create lazer
s = -1;
if(instance_exists(obj_Jugador)) {
    audio_stop_sound(snd_Laser);
    s = audio_play_sound(snd_Laser, 0, 0);
    audio_sound_gain(snd_Laser, 1, 200);
    alarm[9] = 60;
    Direction = 0;
    Parent = -1;
} else {
    instance_destroy();
}
x2 = x;
y2 = y;

// Networking
netid = network_generate_id();