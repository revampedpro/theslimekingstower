/// @description  Behaviour
if(alarm[3]>0) exit;
if(HP <= 0) instance_destroy();
if(instance_exists(fxTransition2))exit;

// Phase change
if(phase_timer < phase_timer_max) {
    phase_timer++;
} else {
    phase_timer = 0;
    phase++;
    if(phase > phase_max) phase = 1;
}

// Phase 1: Follow the player, throw bombs at player
if(phase == 1) and (instance_exists(obj_Jugador)) {

    var ph_spd = 0.5;
    var ph_dir = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
    if(place_free(x+(ph_spd*cos(degtorad(ph_dir))),y)) x += ph_spd*cos(degtorad(ph_dir));
    if(place_free(x,y-(ph_spd*sin(degtorad(ph_dir))))) y -= ph_spd*sin(degtorad(ph_dir));
    
    if(bomb_timer > 150) {
        bomb_timer = 0;
        var bmb = instance_create(x,y,objBomb);
        var bmb_dir = point_direction(x,y,obj_Jugador.x,obj_Jugador.y);
        bmb.hSpeed =  6 * cos(degtorad(bmb_dir));
        bmb.vSpeed = -6 * sin(degtorad(bmb_dir));
        audio_play_sound(choose(sndBossGrunt01,sndBossGrunt02,sndBossGrunt03),0,0);
    } else {
        bomb_timer++;
    }
    

}

// Phase 2: Spawn bombs, change place with player
if(phase == 2) and (instance_exists(obj_Jugador)) {

    if(place_free(x,y)) {
    
        repeat(3) instance_create(x,y,objBomb);
        
        var go_x = obj_Jugador.x;
        var go_y = obj_Jugador.y;
        obj_Jugador.x = x;
        obj_Jugador.y = y;
        x = go_x;
        y = go_y;
    
        repeat(4){
            var v = 8;
            var xx = x+random_range(-v, v);
            var yy = y+random_range(-v, v);
            var a = random_range(0.1, 0.4);
            create_effect(xx, yy, choose(sprSmoke, sprSmokeSmall), a);
        }
        
        audio_play_sound(choose(sndBossGrunt01,sndBossGrunt02,sndBossGrunt03),0,0);
        audio_play_sound(sndUseItem,0,0);
        phase = 1;
        
    }

}

