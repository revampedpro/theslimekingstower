/// @description  Behaviour
if(instance_exists(fxTransition2))exit;
if(global.Pausado) exit;
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

// Phase 1: Idle, do nothing
if(phase == 1) and (instance_exists(obj_Jugador)) {

    sprite_index = sprBossSkeletonKingIdle;

}

// Phase 2: Follow player
if(phase == 2) and (instance_exists(obj_Jugador)) {

	
	var ph_spd = 0.5;
    var ph_dir = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
    if(place_free(x+(ph_spd*cos(degtorad(ph_dir))),y)) x += ph_spd*cos(degtorad(ph_dir));
    if(place_free(x,y-(ph_spd*sin(degtorad(ph_dir))))) y -= ph_spd*sin(degtorad(ph_dir));
	
	if(ph_dir <= 45   or  ph_dir >  315) sprite_index = sprBossSkeletonKingRunRight;
	if(ph_dir >  45   and ph_dir <  135) sprite_index = sprBossSkeletonKingRunUp;
	if(ph_dir >=  135 and ph_dir <  225) sprite_index = sprBossSkeletonKingRunLeft;
	if(ph_dir >=  225 and ph_dir <= 315) sprite_index = sprBossSkeletonKingRunDown;

}

// Phase 3: Spawn enemies and traps
if(phase == 3) and (instance_exists(obj_Jugador)) {

    sprite_index = sprBossSkeletonKingCharge;

    if(spawn_timer < spawn_timer_max) {
        spawn_timer++;
    } else {
        spawn_timer = 0;
    }

}

