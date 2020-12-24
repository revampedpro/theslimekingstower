/// @description Spawn enemies
if(sprite_index != sprBossSkeletonKingCharge) exit;
switch(choose(0,1)) {
				
	case 0: // Create enemies
		repeat(2) {
			var enemy = spawn(x-2+random(4),y-2+random(4),choose(enemies.floatingskull_attract));
			enemy.no_drops = true;
		}
		create_effect(x,y,sprSmokeEnemyAppear,0.35);
		var fx = create_effect(x, y, sprMagicEffect1, 0.4);
		fx.depth = -666;
		repeat(6) {
			var fx = create_effect(x, y, sprSmokeSmall, 0.4+random(2)/10);
			fx.hspeed = -2 + random(4);
			fx.vspeed = -2 + random(4);
		}
	break;
				
	case 1: // Create spikes/falling rocks
					
		var xx = obj_Jugador.x;
		var yy = obj_Jugador.y;
		
		create_effect(x,y,sprSmokeEnemyAppear,0.35);
		var fx = create_effect(x, y, sprMagicEffect1, 0.4);
		fx.depth = -666;
		repeat(6) {
			var fx = create_effect(x, y, sprSmokeSmall, 0.4+random(2)/10);
			fx.hspeed = -2 + random(4);
			fx.vspeed = -2 + random(4);
		}
					
		switch(choose(0,1)) {
					
			case 0: // Create spikes
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
    
			case 1: // Create falling rocks
				repeat(irandom_range(10,16)) {
					var rocks = instance_create(round((xx-64+random(128))/24)*24, round((yy-64+random(128))/24)*24, objFallingRock);
					rocks.y2 += random(100);
				}
					
			break;
						
		}
					
	break;
}
			
xscale = 1.4;
yscale = 1.4;
var s = audio_play_sound(sndChestAppears,0,0);
audio_sound_pitch(s,1.2);
audio_play_sound(choose(sndBossGrunt01,sndBossGrunt02,sndBossGrunt03),0,0);