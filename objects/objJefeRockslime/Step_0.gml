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

// Phase 1: Follow the player and throw him rocks
if(phase == 1) and (instance_exists(obj_Jugador)) {

    var ph_spd = 0.5;
    var ph_dir = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
    if(place_free(x+(ph_spd*cos(degtorad(ph_dir))),y)) x += ph_spd*cos(degtorad(ph_dir));
    if(place_free(x,y-(ph_spd*sin(degtorad(ph_dir))))) y -= ph_spd*sin(degtorad(ph_dir));
    
    spawn_timer++
    if(spawn_timer > spawn_timer_max) {
        spawn_timer = 0;
        var rock = instance_create(x,y,obj_MageSkeleton_Fireball);
        rock.sprite_index = sprJefeRockslimeRock;
        rock.Fuerza = 1;
    }
    
}

// Phase 2: Stop and throw falling rocks
if(phase == 2) and (instance_exists(obj_Jugador)) {

    spawn_timer++
    if(spawn_timer > spawn_timer_max/6) {
        spawn_timer = 0;
        var rock = instance_create(irandom_range(182,444),irandom_range(108,224),objFallingRock);
        rock.Fuerza = 1;
        rock.spd = 3;
    }

}

