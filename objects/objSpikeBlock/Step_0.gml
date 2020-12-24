// Check player
if(global.Pausado) exit;
if(!instance_exists(obj_Jugador))exit;
if(instance_exists(fxTransition2))exit;
if(alarm[0] < 0) {
    alarm[0] = 15;
    if(move == 0) {
        var pt = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
        if(pt < 0+sight or pt > 360-sight) {
            move = 1;
            dir = 0;
        }
        if(pt < 180+sight and pt > 180-sight) {
            move = 1;
            dir = 180;
        }
        if(pt < 270+sight and pt > 270-sight) {
            move = 1;
            dir = 270;
        }
        if(pt < 90+sight and pt > 90-sight) {
            move = 1;
            dir = 90;
        }
    }
}

// Move
if(move == 1) {
    x += cos(degtorad(dir))*spd;
    y -= sin(degtorad(dir))*spd;
} else if(move == 2){
    x += cos(degtorad(dir))*spd/4;
    y -= sin(degtorad(dir))*spd/4;
}

// Go back
if(move == 1) {
    if(!place_free(x+cos(degtorad(dir))*spd, y-sin(degtorad(dir))*spd)) {
        move = 2;
        dir = point_direction(x, y, xstart, ystart);
        shake_camera(2,2);
        audio_play_sound(sprSpikeBlockHit, 0, 0);
    }
}

// Stop
if(move == 2) {
    if(x == xstart) and (y == ystart) {
        move = 0;
    }
}

