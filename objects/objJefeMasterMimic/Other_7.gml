/// @description Spawn enemies
if(sprite_index == sprMasterMimicAppear) {
	phase = 2;	
}
if(sprite_index == sprMasterMimicIdle) {
	if(instance_number(obj_Mimic) < 10) {
		var enemy = spawn(x,y,enemies.mimic);
		enemy.Fase = 1;
	    enemy.alarm[0] = 50;
	}
}