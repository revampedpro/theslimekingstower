// Shoot
var Fire = instance_create(x, y, obj_Jefe_Fuego);
Fire.Direction = D;
Fire.image_angle = D+90;

audio_stop_sound(sndFireball);
audio_play_sound(sndFireball,0,0);

