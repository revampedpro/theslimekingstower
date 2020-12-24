// Control time
if(time < 1) time += time_speed;
if(time > 1) time = 1;
time_speed = clamp(time_speed, 0.001, 0.1);
audio_sound_gain(bgmCutscenes,0,1000);

// Foreground
objCutscene03People.x = objCutscene03People.xstart + 80 - 80*time;
with(objCutscene03Cry) x = xstart + 60 - 60*other.time;
objCutscene03Table.x  = objCutscene03Table.xstart + 80 - 80*time;
objCutscene03Bartender.x = objCutscene03Bartender.xstart + 30 - 30*time;
objCutscene03Bar.x = objCutscene03Bar.xstart + 30 - 30*time;
objCutscene03Background.x = objCutscene03Background.xstart + 10 - 10*time;
objCutscene03Door.x = objCutscene03Door.xstart + 10 - 10*time;
if(room == cutscene03_02) {
    objCutscene03WindowGlow.x = objCutscene03WindowGlow.xstart + 10 - 10*time;
    if(!audio_is_playing(sndTowerBeam)) audio_play_sound(sndTowerBeam,0,0);
    __view_set( e__VW.XView, 0, -1+random(2 ));
    __view_set( e__VW.YView, 0, -1+random(2 ));
    sn+=6;
    if(sn > 359) sn = 0;
    sns = abs(sin(degtorad(sn)));
    audio_sound_pitch(bgmBarambience,0.95 + 0.1*sns);
}
if(time == 1) and (room == cutscene03_02) and (objCutscene03People.alarm[0]<0) and ((objCutscene03People.img1 == 0)) {
    objCutscene03People.img1 = 4;
    objCutscene03People.img2 = 5;
    objCutscene03People.alarm[0] = 120;
    objCutscene03People.g = 0;
    objCutscene03Bartender.image_index = 1;
    audio_play_sound(sndCutsceneMoustacheDisappear,0,0);
    var flashys = instance_create(0,0,objCutscene03Flash);    
    flashys.spd /= 2;
    repeat(8) {
        var d = instance_create(188-8+random(16),260-8+random(16),objCutscene01Smoke);
        d.depth = -80;
        var d = instance_create(446-8+random(16),129-8+random(16),objCutscene01Smoke);
        d.depth = -80;
        var d = instance_create(460-8+random(16),266-8+random(16),objCutscene01Smoke);
        d.depth = -80;
    }
}
if(room == cutscene03_03) {
    if(time < 1) {
        objCutscene03People.img1 = 6;
        objCutscene03People.img2 = 7;
        objCutscene03People.g = 0;
        objCutscene03Bartender.image_index = 2;
        with(objCutscene03Cry)visible = true;
        
        objCutscene03WindowGlow.x = objCutscene03WindowGlow.xstart + 10 - 10*time;
        if(!audio_is_playing(sndTowerBeam)) audio_play_sound(sndTowerBeam,0,0);
        __view_set( e__VW.XView, 0, -1+random(2 ));
        __view_set( e__VW.YView, 0, -1+random(2 ));
        sn+=6;
        if(sn > 359) sn = 0;
        sns = abs(sin(degtorad(sn)));
        audio_sound_pitch(BGM_Ending,0.95 + 0.1*sns);
        
    } else {
    
        if(!moustachesBack) {
            audio_play_sound(sndCutsceneMoustacheDisappear,0,0);
            var flashys = instance_create(0,0,objCutscene03Flash);    
            flashys.spd /= 2;
            moustachesBack = true;
        }
        
        objCutscene03Overlay.visible = false;
        objCutscene03WindowGlow.visible = false;
        objCutscene03People.img1 = 0;
        objCutscene03People.img2 = 1;
        objCutscene03People.g = 2;
        objCutscene03Bartender.image_index = 0;
        with(objCutscene03Cry)visible = false;
        audio_sound_pitch(BGM_Ending,1);
    }
}

if(time < 0.99) {
    objCutscene03Slimeking.visible = false;
    objCutscene03SlimekingMoustache.visible = false;
    objCutscene03Door.image_index = 0;
} else if(slimeking_goes<=551) and (room == cutscene03) {
    if(slimeking_goes == 0) audio_play_sound(sndCutscenesDoor,0,0);
    objCutscene03Slimeking.visible = true;
    objCutscene03Door.image_index = 1;
    objCutscene03Door.y = objCutscene03Door.ystart+5;
    objCutscene03Door.x = objCutscene03Door.xstart-1;
    if(slimeking_goes>=0) slimeking_goes++;
    if(slimeking_goes > 120) objCutscene03SlimekingMoustache.visible = true;
    if(slimeking_goes > 300) objCutscene03SlimekingMoustache.visible = false;
    if(slimeking_goes > 300) {
        objCutscene03Slimeking.x = objCutscene03Slimeking.xstart - 5*(slimeking_goes/500) + random(10*(slimeking_goes/500));
        objCutscene03Slimeking.y = objCutscene03Slimeking.ystart - 5*(slimeking_goes/500) + random(10*(slimeking_goes/500));
        objCutscene03Slimeking.alpha2 = .7*(1-((500-slimeking_goes)/200));
        objCutscene03Slimeking.image_xscale = 1 - .3*(1-((500-slimeking_goes)/200));
        objCutscene03Slimeking.image_yscale = 1 + .3*(1-((500-slimeking_goes)/200));
    }
    if(slimeking_goes == 500) {
        audio_play_sound(sndCutscenesDoor,0,0); 
        instance_create(0,0,objCutscene03Flash);
    }
    if(slimeking_goes > 500) {
        objCutscene03Slimeking.visible = false;
        objCutscene03SlimekingMoustache.visible = false;
        objCutscene03Door.image_index = 0;
        objCutscene03Door.y = objCutscene03Door.ystart;
        objCutscene03Door.x = objCutscene03Door.xstart;
    }
    if(slimeking_goes > 500) {
        objCutscene03Door.y = objCutscene03Door.ystart - 3*((550-slimeking_goes)/50) + random(6*((550-slimeking_goes)/50));
        objCutscene03Door.x = objCutscene03Door.xstart - 3*((550-slimeking_goes)/50) + random(6*((550-slimeking_goes)/50));
        __view_set( e__VW.XView, 0, - 3*((550-slimeking_goes)/50) + random(6*((550-slimeking_goes)/50) ));
        __view_set( e__VW.YView, 0, - 3*((550-slimeking_goes)/50) + random(6*((550-slimeking_goes)/50) ));
    }
    if(slimeking_goes > 550) {
        objCutscene03Door.y = objCutscene03Door.ystart;
        objCutscene03Door.x = objCutscene03Door.xstart;
        __view_set( e__VW.XView, 0, 0 );
        __view_set( e__VW.YView, 0, 0 );
    }
}




