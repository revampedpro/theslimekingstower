// Spawn enemies
if(!instance_exists(obj_Cofre_General)) {
	if(spawned == false) and (boss_can_spawn == true) and (alarm[0] < 0) {
		
		alarm[0] = 120;
		
		// Close doors
		with(obj_Puerta) {
			if(image_index != 3) {
				audio_play_sound(sprSpikeBlockHit, 0, 0);
				image_index = 1;
			}
		}	
		
	}
}