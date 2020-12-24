/// @description  Behaviour
if(alarm[3]>0) exit;
if(HP <= 0) instance_destroy();

// Phase change
if(phase_timer < phase_timer_max) {
    phase_timer++;
} else {
    phase_timer = 0;
    phase++;
    //if(phase > phase_max) phase = 1; <-- this boss stops at phase 2
}

// Phase 1: Spawn the gang
if(phase == 1) and (instance_exists(obj_Jugador)) {
    spawn(x,y,31);
    spawn(x,y,32);
    spawn(x,y,33);
    phase = 2;

}

// Phase 2: Don't move
if(phase == 2) and (instance_exists(obj_Jugador)) {

    // Do nothing

}

