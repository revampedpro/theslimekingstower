// Create spike and reset timer
alarm[0] = timer;

// Create spike
var spikes = instance_create(x, y, obj_Pinchos_Suelo);
spikes.destroy_on_animation_end = true;
spikes.alarm[0] = 20;
spikes.hit_enemies = hit_enemies;
create_effect(spikes.x, spikes.y, sprSmokeSmall, 0.2 + random(5)/10);