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

// Phase 1: Shoot player
if(phase == 1) and (instance_exists(obj_Jugador)) {
    sprite_index = sprJefeBulbslimeRed;
    if(spawn_timer < spawn_timer_max) {
        spawn_timer++;
    } else {
        spawn_timer = 0;
        var lazer = instance_create(x,y,objJefeBulbslimeLazer);
        lazer.image_index = 1;
        lazer.direction = point_direction(x,y,objJefeBulbPointer.x,objJefeBulbPointer.y);
        xscale = 1.4;
        yscale = 1.4;
    }
}

// Phase 2: Shoot in 90 degrees
if(phase == 2) and (instance_exists(obj_Jugador)) {
    sprite_index = sprJefeBulbslimeBlue;
    if(spawn_timer < spawn_timer_max) {
        spawn_timer++;
    } else {
        spawn_timer = 90;
        lazer_angle += 45;
        var lazer = instance_create(x,y,objJefeBulbslimeLazer);
        lazer.image_index = 0;
        lazer.direction = lazer_angle;
        var lazer = instance_create(x,y,objJefeBulbslimeLazer);
        lazer.image_index = 0;
        lazer.direction = 180+lazer_angle;
        xscale = 1.4;
        yscale = 1.4;
    }
}

