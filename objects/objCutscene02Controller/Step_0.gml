// Control time
if(time < 1) time += time_speed;
if(time > 1) time = 1;
time_speed = clamp(time_speed, 0.001, 0.1);

// Character
if(time < 1) {
    objCutscene02SlimekingBig.x = objCutscene02SlimekingBig.xstart -1+random(2);
    objCutscene02SlimekingBig.y = objCutscene02SlimekingBig.ystart -1+random(2);
    if(choose(0,0,1)) instance_create(random(room_width),random(room_height),objCutscene02Particles);
    if(!audio_is_playing(sndCutsceneMoustacheBeam)) audio_play_sound(sndCutsceneMoustacheBeam,0,0);
    sn+=6;
    if(sn > 359) sn = 0;
    sns = abs(sin(degtorad(sn)));
    audio_sound_pitch(bgmCutscenes,0.95 + 0.1*sns);
} else {
    objCutscene02SlimekingBig.x = objCutscene02SlimekingBig.xstart;
    objCutscene02SlimekingBig.y = objCutscene02SlimekingBig.ystart;
    audio_sound_pitch(bgmCutscenes,1);
}
if(time == 1) and (!flashy) {
    var f  = instance_create(0,0,objCutscene03Flash);
    f.spd /= 2;
    flashy = true;
    audio_play_sound(sndCutsceneSuperMoustache,0,0);
}

