/// @description  Behaviour
if(instance_exists(fxTransition2))exit;
if(alarm[3]>0) exit;
if(HP <= 0) instance_destroy();

// Phase change
if(phase_timer < phase_timer_max) {
    phase_timer++;
} else {
    phase_timer = 0;
    phase++;
    if(phase > phase_max) phase = 1;
}

// Phase 1: Create Spike Trails
if(phase == 1) and (instance_exists(obj_Jugador)) {

    if(spawn_timer < spawn_timer_max) {
        spawn_timer++;
    } else {
        spawn_timer = 0;
        var lazer = instance_create(450,random_range(110,230),objBossSpikeTrail);
        lazer.dir = 180;
        xscale = 1.4;
        yscale = 1.4;
    }
	
}

