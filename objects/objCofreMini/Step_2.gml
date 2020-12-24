if(instance_exists(fxTransition2))exit;

// Efecto wiggle del sprite
var k = 0.02;
xScale = approach(xScale, 1, k);
if(yScale < 1) yScale += 0.025;

// Bounce
Y += vy;
if(Y > 0) {
    Y = 0;
    if(abs(vy)>1) {
        vy = -vy/2; 
        audio_play_sound(sprSpikeBlockHit,0,0);
    } else {
        vy = 0;
    }
}
if(Y <=0) vy += g;

// Appear
if(visible == false) {
    visible = true;
    vy = -3;
}   

// Create effect
if(effect == false) and (!instance_exists(fxTransition2)) {
    create_effect(x, y, sprMagicEffect2, 0.4);
    audio_stop_sound(sndChestAppears);
    audio_play_sound(sndChestAppears, 0, 0);
    effect = true;
}

depth = -y;
