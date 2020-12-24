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

// Phase 1: Avoid the player throw moons
if(phase == 1) and (instance_exists(obj_Jugador)) {

    var ph_spd = 0.5;
    var ph_dir = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
    if(place_free(x+(ph_spd*cos(degtorad(ph_dir))),y)) x += ph_spd*cos(degtorad(ph_dir));
    if(place_free(x,y-(ph_spd*sin(degtorad(ph_dir))))) y -= ph_spd*sin(degtorad(ph_dir));
    
    if(spawn_timer < spawn_timer_max) {
        spawn_timer++;
    } else {
        spawn_timer = spawn_timer_max-20;
        var bone = instance_create(x,y,obj_MageSkeleton_Fireball); 
        bone.Direction = ph_dir;
        bone.Fuerza = 2; 
        bone.sprite_index = sprBigBone;
        xscale = 1.4;
        yscale = 1.4;
        audio_play_sound(choose(sndBossGrunt01,sndBossGrunt02,sndBossGrunt03),0,0);
        audio_play_sound(sndBombDrop,0,0);
    }

}

// Phase 1: Avoid the player spawn planetoids
if(phase == 2) and (instance_exists(obj_Jugador)) {

    var ph_spd = 0.5;
    var ph_dir = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
    if(place_free(x+(ph_spd*cos(degtorad(ph_dir))),y)) x += ph_spd*cos(degtorad(ph_dir));
    if(place_free(x,y-(ph_spd*sin(degtorad(ph_dir))))) y -= ph_spd*sin(degtorad(ph_dir));

    if(spawn_timer < spawn_timer_max) {
        spawn_timer++;
    } else {
        spawn_timer = 0;
        spawn(x,y,0);
        xscale = 1.4;
        yscale = 1.4;
        audio_play_sound(choose(sndBossGrunt01,sndBossGrunt02,sndBossGrunt03),0,0);
    }

}

