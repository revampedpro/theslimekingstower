/// @description enemy_perform_death_fx
/// @param enemyid
/// @param performer_instance
function enemy_perform_death_fx() {
	// Perform the enemies special death fx
	if(global.Quality == 0) return false; // Only perform the death FX in higher qualities

	// Prepare common vars
	var _ai				 = get_enemy(argument[0],0);
	var _sprite_die		 = get_enemy(argument[0],9);
	var _sprite_leftover = get_enemy(argument[0],10);
	var _blood_color	 = get_enemy(argument[0],11);
	var _sprite_guts	 = get_enemy(argument[0],12);
	var _death_sound	 = get_enemy(argument[0],17);
	var _vx				 = random_range(-.5,.5);
	var _vy				 = random_range(-.5,.5);
	var _instance		 = argument[1];

	// General Effects
	audio_play_sound(_death_sound,4,0);
	audio_play_sound(sndEnemyDeathrattle,0,0);
	audio_play_sound(choose(sndRetroDeath,sndRetroDeath2),0,0);
	shake_camera(2,2);

	// More General effects, only if quality is 1 or higher
	if(global.Quality >= 1) {
	
		// Muzzle effect
	    var m = create_effect(_instance.bbox_left+(_instance.bbox_right-_instance.bbox_left)/2,_instance.bbox_top+(_instance.bbox_bottom-_instance.bbox_top)/2,sprFxEnemyMuzzy,.4);
	    m.depth--;

	    // Guts
	    repeat(4*global.Quality) {
	        var fx = create_effect(_instance.x, _instance.y, sprFxGuts, 0.34);
	        var v = random(100);
	        fx.hspeed = -.5 + random(1);
	        fx.vspeed = -.5 + random(1);
	        fx.permanent = true;
	        fx.random_image = true;
	    }
    
		// Blood pools
	    repeat(5*global.Quality) {
	        var v = 6;
	        var xx = _instance.x+random_range(v, -v);
	        var yy = _instance.y+random_range(v, -v);
	        var sc = random_range(0.25, 0.7);
	        var in = instance_create(xx,yy,fx_Sprite_Persistent);
	        in.image_xscale = sc;
	        in.image_yscale = sc;
	        in.sprite_index = sprBlood;
	        in.image_blend = _blood_color;
	        in.image_alpha = 0.8;
	    }
    
	    // Blood splat effect
	    repeat(10*global.Quality) {
	        var fx = create_effect(_instance.bbox_left + random(_instance.bbox_right-_instance.bbox_left), _instance.bbox_top + random(_instance.bbox_bottom-_instance.bbox_top), choose(sprBloodSplat1,sprBloodSplat2,sprBloodSpray1,sprBloodSpray2), 0.34+random(1)/10);
	        var v = random(100);
	        fx.hspeed = -1 + random(2);
	        fx.vspeed = -1 + random(2);
	        fx.image_xscale = 1 + random(1)/5;
	        fx.image_yscale = fx.image_xscale;
	    } 

	}

	// Select Death Effects depending on the AI
	switch(_ai) {
	
		default:
		case obj_Skeleton:
		case obj_ChallengeSlime:
		case obj_Snake:
		case obj_MageSkeleton:
		case obj_Summoner:
		case obj_Bat:
		case obj_Bouncer:
		case obj_Mitosis:
		case obj_Shadow_Spawn:
	
			// Splash
			var a = create_effect(_instance.x,_instance.y,sprSplat3,0.5);
			var k = 0.25;
			a.vx = _vx*k;
			a.vy = _vy*k;

			// Leftovers
			repeat(irandom_range(6, 10)) {
				var a = instance_create(_instance.x,_instance.y,objFloorDetail);
				a.sprite_index = _sprite_leftover;
				a.image_index = irandom(a.image_number);
				k = .75;
				a.vx += _vx*k;
				a.vy += _vy*k;
			}
			
			// Blood
			repeat(irandom_range(2, 4)) {
				var a = instance_create(_instance.x,_instance.y,objGuts);
				k = .75;
				a.vx += _vx*k;
				a.vy += _vy*k;
				a.blood_colour = _blood_color;
			}
	
		break;

		case obj_Slime:
		case obj_ActionSlime:
		case obj_ChainSlime:
		case obj_Tomahawk:
		case obj_Hardmahawk:
		case obj_StompSlime:
		case obj_Conejo:
		case obj_Mimic:
	
			// Special death animation
			var a = create_effect(_instance.x,_instance.y,_sprite_die,0.6);

			// Blood Guts
			repeat(irandom_range(6,8)) {
				var a = instance_create(_instance.x,_instance.y,objGuts);
				a.sprite_index = _sprite_guts;
				k = .75;
				a.vx += _vx*k;
				a.vy += _vy*k;
				a.blood_colour = _blood_color;
			}
		
			// Leftovers
			var a = instance_create(_instance.x,_instance.y,objFloorDetail);
			a.sprite_index = _sprite_leftover;
			a.vx += _vx;
			a.vy += _vy;

		break;
	
	
	}

	// Succesful
	return true;


}
