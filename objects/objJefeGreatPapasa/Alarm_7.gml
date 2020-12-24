// Shoot
repeat(4) {
    var Fire = instance_create(x, y, obj_Jefe_Fuego);
    Fire.Direction = offset;
    Fire.image_angle = offset + 90;
    offset += 360/4;
    offset += 1;
}

audio_stop_sound(sndFireball);
audio_play_sound(sndFireball,0,0);

