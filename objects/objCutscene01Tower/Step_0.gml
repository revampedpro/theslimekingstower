if(lazer2 == false) {
    lazer = false;
    exit;
}
if(objCutscene01Controller.time2<1 and objCutscene01Controller.time==1) {
    shakeX = random(4);
    shakeY = random(4);   
    instance_create(x+random(120),260,objCutscene01SmallRock);
    if(!audio_is_playing(sndTowerGrowing)) audio_play_sound(sndTowerGrowing,0,0);
} else {
    shakeX = 0;
    shakeY = 0;
}

if(objCutscene01Controller.time2 == 1) and (alarm[0]<0) and (room == cutscene01_03) lazer = true;
if(objCutscene01Controller.time2 == 1) and (alarm[0]<0) and (room == cutscene01_04) lazer = true;
if(objCutscene01Controller.time2 == 1) and (alarm[0]<0) and (room != cutscene01_03) and (room != cutscene01_04) alarm[0] = 120;

