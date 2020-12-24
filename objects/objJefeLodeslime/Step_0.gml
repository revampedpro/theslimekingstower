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

// Phase 1: Follow the player, leave creep
if(phase == 1) and (instance_exists(obj_Jugador)) {

    sprite_index = sprJefeLodeslime;

    var ph_spd = 0.5;
    var ph_dir = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
    if(place_free(x+(ph_spd*cos(degtorad(ph_dir))),y)) x += ph_spd*cos(degtorad(ph_dir));
    if(place_free(x,y-(ph_spd*sin(degtorad(ph_dir))))) y -= ph_spd*sin(degtorad(ph_dir));

}

// Phase 2: Spawn minilodes
if(phase == 2) and (instance_exists(obj_Jugador)) {

    sprite_index = sprJefeLodeslimeAttack;

    if(spawn_timer < spawn_timer_max) {
        spawn_timer++;
    } else {
        spawn_timer = 0;
        if(!player_has_pet(45)) {
            minilode = spawn(x,y,30);
            minilode.no_drops = true;
        }
        xscale = 1.4;
        yscale = 1.4;
        audio_play_sound(choose(sndBossGrunt01,sndBossGrunt02,sndBossGrunt03),0,0);
    }

}

