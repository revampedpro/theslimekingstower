// Throw spike trails
if(instance_exists(obj_Jugador)) {
			
	create_effect(x,y,sprSmokeEnemyAppear,0.35);
	var fx = create_effect(x, y, sprMagicEffect1, 0.4);
	fx.depth = -666;
	repeat(6) {
		var fx = create_effect(x, y, sprSmokeSmall, 0.4+random(2)/10);
		fx.hspeed = -2 + random(4);
		fx.vspeed = -2 + random(4);
	}
			
	var spike_trail = instance_create(x,y,objBossSpikeTrail);
	spike_trail.dir = point_direction(x,y,obj_Jugador.x,obj_Jugador.y);
	spike_trail.spd = 3;
			
	var s = audio_play_sound(sndChestAppears,0,0);
	audio_sound_pitch(s,1.2);
			
	audio_play_sound(choose(sndBossGrunt01,sndBossGrunt02,sndBossGrunt03),0,0);
			
}
Thrown_Spikes--;
if(Thrown_Spikes > 0) alarm[6] = 30;

// Reset this alarm
alarm[7] = 360;