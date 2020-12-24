// Create random spikes
alarm[8] = 150;
switch(choose(0,1)) {

    // Create spikes
    case 0:
        repeat(irandom_range(10,16)) {
        
            var spikes = instance_create(round((x-32+random(64))/24)*24, round((y-32+random(64))/24)*24, obj_Pinchos_Suelo);
            if(!place_free(spikes.x, spikes.y)) {
                with(spikes) instance_destroy();
            } else {
                spikes.destroy_on_animation_end = true;
                spikes.alarm[0] = 20;
                create_effect(spikes.x, spikes.y, sprSmokeSmall, 0.2 + random(5)/10);
            }
        }
    break;
    
    // Falling rocks
    case 1:
        repeat(irandom_range(10,16)) {
            var rocks = instance_create(round((x-64+random(128))/24)*24, round((y-64+random(128))/24)*24, objFallingRock);
            rocks.y2 += random(100);
        }
    break;
    
}


