// Control time
if(time < 1) time += time_speed;
if(time > 1) time = 1;

if(time == 1 and time2 < 1) time2 += time_speed;
if(time2 > 1) time2 = 1;
time_speed = clamp(time_speed, 0.001, 0.1);

// audio
if(room == cutscene01_02)or(room == cutscene01_03) {
    if(!audio_is_playing(bgmBarambienceLofi)) {
        audio_sound_gain(bgmBarambienceLofi,0.5,100);
        audio_play_sound(bgmBarambienceLofi,0,0);
    }
}

// Foreground
objCutscene01Foreground.x = objCutscene01Foreground.xstart - 110*time;
if(room == cutscene01_02) {
    objCutscene01Foreground.x = objCutscene01Foreground.xstart - 110;
    objCutscene01Tower.x = objCutscene01Tower.xstart - 110;
    objCutscene01Tower.y = objCutscene01Tower.ystart - 300*time2;
    if(time == 1) {
        __view_set( e__VW.XView, 0, objCutscene01Tower.shakeX );
        __view_set( e__VW.YView, 0, objCutscene01Tower.shakeY );
    }
}
if(room == cutscene01_03) {
    time = 1;
    time2 = 1;
    objCutscene01Tower.prelazer = 60;
    objCutscene01Foreground.x = objCutscene01Foreground.xstart - 110;
    objCutscene01Tower.x = objCutscene01Tower.xstart - 110;
    objCutscene01Tower.y = objCutscene01Tower.ystart - 300*1;
    if(time == 1) {
        __view_set( e__VW.XView, 0, objCutscene01Tower.shakeX );
        __view_set( e__VW.YView, 0, objCutscene01Tower.shakeY );
    }
}
if(room == cutscene01_04) {
    time = 1;
    time2 = 1;
    objCutscene01Tower.prelazer = 60;
    objCutscene01Foreground.x = objCutscene01Foreground.xstart - 110;
    objCutscene01Tower.x = objCutscene01Tower.xstart - 110;
    objCutscene01Tower.y = objCutscene01Tower.ystart - 300*1;
    if(time == 1) {
        __view_set( e__VW.XView, 0, objCutscene01Tower.shakeX );
        __view_set( e__VW.YView, 0, objCutscene01Tower.shakeY );
    }
}

// Background
objCutscene01Background.x   = objCutscene01Background.xstart - 20*time;
objCutscene01SmokeSpawner.x = objCutscene01SmokeSpawner.xstart - 20*time;
if(room == cutscene01_02) {
    objCutscene01Background.x   = objCutscene01Background.xstart - 20;
    objCutscene01House.x        = objCutscene01House.xstart - 20;
    objCutscene01SmokeSpawner.x = objCutscene01SmokeSpawner.xstart - 20;
}
if(room == cutscene01_03) {
    objCutscene01Background.x   = objCutscene01Background.xstart - 20;
    objCutscene01House.x        = objCutscene01House.xstart - 20;
    objCutscene01SmokeSpawner.x = objCutscene01SmokeSpawner.xstart - 20;
}
if(room == cutscene01_04) {
    objCutscene01Background.x   = objCutscene01Background.xstart - 20;
    objCutscene01House.x        = objCutscene01House.xstart - 20;
    objCutscene01SmokeSpawner.x = objCutscene01SmokeSpawner.xstart - 20;
}

// Moon
objCutscene01Moon.y = objCutscene01Moon.ystart - 10*time;

// Mountains
for(i = 0; i < instance_number(objCutscene01Mountains); i++) {
    var in = instance_find(objCutscene01Mountains,i);
    in.x = in.xstart - 20*time;
}

// Woods
for(i = 0; i < instance_number(objCutscene01Woods); i++) {
    var in = instance_find(objCutscene01Woods,i);
    in.x = in.xstart - 15*time;
}

