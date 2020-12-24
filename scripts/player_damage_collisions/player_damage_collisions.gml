/// @description Control all collisions with the player that can hurt him
/// @param other
/// @param me[opt] opt
/// Vars
function player_damage_collisions() {
	var _me = id;
	var _other = argument[0];
	var _object_index = _other.object_index;
	if(argument_count > 1) _me = argument[1];

	switch(_object_index) {
	
	#region obj_ChainSlimeChainBall
		case obj_ChainSlimeChainBall:
			if(global.Pausado) exit;
			if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas = 0;
				alarm[3] = Delay_Invencibilidad;
				var FX = create_effect( x, y, sprMagicShield, 1.50 );
				FX.depth = depth-10;
				FX.image_blend = c_yellow;
				FX.image_xscale = 1.5;
				FX.image_yscale = 1.5;
				audio_play_sound(snd_RingArmor, 0, 0);
				exit;
			}
			if(player_has_item(92)) exit;
			if( alarm[3] < 0 ) {

				alarm[3] = Delay_Invencibilidad;
				flash(10,c_red);
			
				// Tell your partner that you were hit
				if(network_is_online()) and (global.NETWORK_HOST == true) {
					pack_quick("hitByMonsterFX");	
				}
    
				event_perform( ev_other, ev_user9 );
    
				if( !Bonus_Phantom_Shield_Activo ) {
    
				    if( Bonus_Magic_Shield < 2 ) {
				        alarm[2] = 10;
				        if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
				            HP -= 2;
				        } else {
				            HP_Extra_Q[HP_Extra_S]-=2;
				            if(HP_Extra_Q[HP_Extra_S] <= 0) {
				                special_heart_used(HP_Extra[HP_Extra_S]);
				                HP_Extra[HP_Extra_S] = -1;
				                HP_Extra_S--
				            }
				        }
						var player_has_iron_boots = player_has_item(35);
						if(instance_exists(_other)) {
					        if(_other.x < x) Velocidad_H = 2*(1-player_has_iron_boots);
					        if(_other.x > x) Velocidad_H = -2*(1-player_has_iron_boots);
					        if(_other.y < y) Velocidad_V = 2*(1-player_has_iron_boots);
					        if(_other.y > y) Velocidad_V = -2*(1-player_has_iron_boots);
						}
				        audio_play_sound( choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03), 0, 0 );
    
				        if(player_has_item(94)) {
				            Bonus_Phantom_Shield_Activo = true;
				        }
            
				    } else {
				        Bonus_Magic_Shield = 1;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				    }
				} else {
				        Bonus_Phantom_Shield_Activo = false;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				}
    
			}


		break;
	#endregion
	#region obj_Jefe_Fuego
		case obj_Jefe_Fuego:
			if( global.Pausado ) exit;
			if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas = 0;
				alarm[3] = Delay_Invencibilidad;
				var FX = create_effect( x, y, sprMagicShield, 1.50 );
				FX.depth = depth-10;
				FX.image_blend = c_yellow;
				FX.image_xscale = 1.5;
				FX.image_yscale = 1.5;
				audio_play_sound(snd_RingArmor, 0, 0);
				exit;
			}
			if(Pet_Bonus_Tomahawk) and (chance(50)) and (alarm[3]<0) { alarm[3] = Delay_Invencibilidad; var FX = create_effect( x, y, sprMagicShield, 1.50 ); FX.depth = depth-10; FX.image_blend = c_red; FX.image_xscale = 1.5; FX.image_yscale = 1.5; exit; }
			if(player_has_item(92) or Pet_Bonus_Boss_RedSlime) exit;
			if( alarm[3] < 0 ) {

				alarm[3] = Delay_Invencibilidad;
				flash(10,c_red);
			
				// Tell your partner that you were hit
				if(network_is_online()) and (global.NETWORK_HOST == true) {
					pack_quick("hitByMonsterFX");	
				}
    
				event_perform( ev_other, ev_user9 );
    
				if( !Bonus_Phantom_Shield_Activo ) {
        
				    if( Bonus_Magic_Shield < 2 ) {
				        alarm[2] = 10;
				        if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
				            HP -= 1;
				        } else {
				            HP_Extra_Q[HP_Extra_S]--;
				            if(HP_Extra_Q[HP_Extra_S] <= 0) {
				                special_heart_used(HP_Extra[HP_Extra_S]);
				                HP_Extra[HP_Extra_S] = -1;
				                HP_Extra_S--
				            }
				        }
						var player_has_iron_boots = player_has_item(35);
						if(instance_exists(_other)) {
					        if(_other.x < x) Velocidad_H = 2*(1-player_has_iron_boots);
					        if(_other.x > x) Velocidad_H = -2*(1-player_has_iron_boots);
					        if(_other.y < y) Velocidad_V = 2*(1-player_has_iron_boots);
					        if(_other.y > y) Velocidad_V = -2*(1-player_has_iron_boots);
						}
				        audio_play_sound( choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03), 0, 0 );

				        // Check if you unlockd Igneous
				        if(HP + HP_Extra_S <= 0) and (!check_character_unlocked(3,0)) unlock_character(3);
            
				        if(player_has_item(94)) {
				            Bonus_Phantom_Shield_Activo = true;
				        }
        
				    } else {
				        Bonus_Magic_Shield = 1;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				    }
				} else {
				        Bonus_Phantom_Shield_Activo = false;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				}
    
			}


		
		break;
	#endregion
	#region obj_MageSkeleton_Fireball
		case obj_MageSkeleton_Fireball:
			if( global.Pausado ) exit;
			if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas = 0;
				alarm[3] = Delay_Invencibilidad;
				var FX = create_effect( x, y, sprMagicShield, 1.50 );
				FX.depth = depth-10;
				FX.image_blend = c_yellow;
				FX.image_xscale = 1.5;
				FX.image_yscale = 1.5;
				audio_play_sound(snd_RingArmor, 0, 0);
				exit;
			}
			if(Pet_Bonus_Tomahawk) and (chance(50)) and (alarm[3]<0) { alarm[3] = Delay_Invencibilidad; var FX = create_effect( x, y, sprMagicShield, 1.50 ); FX.depth = depth-10; FX.image_blend = c_red; FX.image_xscale = 1.5; FX.image_yscale = 1.5; exit; }
			if(player_has_item(92) or Pet_Bonus_Boss_RedSlime) and (_other.sprite_index == sprFireball1 or _other.sprite_index == sprFireball2 or _other.sprite_index == sprFireball3) exit;
			if( alarm[3] < 0 ) {

				alarm[3] = Delay_Invencibilidad;
				flash(10,c_red);
			
				// Tell your partner that you were hit
				if(network_is_online()) and (global.NETWORK_HOST == true) {
					pack_quick("hitByMonsterFX");	
				}
    
				event_perform( ev_other, ev_user9 );
    
				// If it's a big bone, spawn a slimbone
				if(_other.sprite_index == sprBigBone) {
				    spawn(_other.x,_other.y,52);
				    with(_other) {
						instance_destroy();
					}
				}
    
    
				if( !Bonus_Phantom_Shield_Activo ) {
    
				    if( Bonus_Magic_Shield < 2 ) {
				        alarm[2] = 10;
				        if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
				            HP -= 2;
				        } else {
				            HP_Extra_Q[HP_Extra_S]-=2;
				            if(HP_Extra_Q[HP_Extra_S] <= 0) {
				                special_heart_used(HP_Extra[HP_Extra_S]);
				                HP_Extra[HP_Extra_S] = -1;
				                HP_Extra_S--
				            }
				        }
						var player_has_iron_boots = player_has_item(35);
						if(instance_exists(_other)) {
					        if(_other.x < x) Velocidad_H = 2*(1-player_has_iron_boots);
					        if(_other.x > x) Velocidad_H = -2*(1-player_has_iron_boots);
					        if(_other.y < y) Velocidad_V = 2*(1-player_has_iron_boots);
					        if(_other.y > y) Velocidad_V = -2*(1-player_has_iron_boots);
						}
				        audio_play_sound( choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03), 0, 0 );
    
				        // Check if you unlockd Igneous
				        if(HP + HP_Extra_S <= 0) and (!check_character_unlocked(3,0)) unlock_character(3);
            
				        if(player_has_item(94)) {
				            Bonus_Phantom_Shield_Activo = true;
				        }
            
				    } else {
				        Bonus_Magic_Shield = 1;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				    }
				} else {
				        Bonus_Phantom_Shield_Activo = false;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				}
    
			}


		break;
	#endregion
	#region obj_Pinchos & obj_ballBlock
		case obj_BallBlock:
		case obj_Pinchos:
			if( global.Pausado ) exit;
			if(Flying) exit;
			if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas = 0;
				alarm[3] = Delay_Invencibilidad;
				var FX = create_effect( x, y, sprMagicShield, 1.50 );
				FX.depth = depth-10;
				FX.image_blend = c_yellow;
				FX.image_xscale = 1.5;
				FX.image_yscale = 1.5;
				audio_play_sound(snd_RingArmor, 0, 0);
				exit;
			}
			if(Pet_Bonus_Snake)            and (chance(50)) and (alarm[3]<0) { alarm[3] = Delay_Invencibilidad; var FX = create_effect( x, y, sprMagicShield, 1.50 ); FX.depth = depth-10; FX.image_blend = c_yellow; FX.image_xscale = 1.5; FX.image_yscale = 1.5; exit; }
			if(Pet_Bonus_Boss_YellowSlime) and (chance(75)) and (alarm[3]<0) { alarm[3] = Delay_Invencibilidad; var FX = create_effect( x, y, sprMagicShield, 1.50 ); FX.depth = depth-10; FX.image_blend = c_yellow; FX.image_xscale = 1.5; FX.image_yscale = 1.5; exit; }
			if(player_has_item(55)) exit;
			if(alarm[3] < 0) {

				alarm[3] = Delay_Invencibilidad;
				flash(10,c_red);
			
				// Tell your partner that you were hit
				if(network_is_online()) and (global.NETWORK_HOST == true) {
					pack_quick("hitByMonsterFX");	
				}
    
				event_perform( ev_other, ev_user9 );
    
				if(!Bonus_Phantom_Shield_Activo) {
    
				    if(Bonus_Magic_Shield < 2) {
				        alarm[2] = 10;
				        if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
				            HP -= 1;
				        } else {
				            HP_Extra_Q[HP_Extra_S]-=1;
				            if(HP_Extra_Q[HP_Extra_S] <= 0) {
				                special_heart_used(HP_Extra[HP_Extra_S]);
				                HP_Extra[HP_Extra_S] = -1;
				                HP_Extra_S--
				            }
				        }
						var player_has_iron_boots = player_has_item(35);
						if(instance_exists(_other)) {
					        if(_other.x < x) Velocidad_H = 2*(1-player_has_iron_boots);
					        if(_other.x > x) Velocidad_H = -2*(1-player_has_iron_boots);
					        if(_other.y < y) Velocidad_V = 2*(1-player_has_iron_boots);
					        if(_other.y > y) Velocidad_V = -2*(1-player_has_iron_boots);
						}
				        audio_play_sound( choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03), 0, 0 );
    
				        if(player_has_item(94)) {
				            Bonus_Phantom_Shield_Activo = true;
				        }
            
				    } else {
				        Bonus_Magic_Shield = 1;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				    }
				} else {
				        Bonus_Phantom_Shield_Activo = false;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				}
    
			}


		break;
	#endregion
	#region obj_Pinchos_Suelo
		case obj_Pinchos_Suelo:
			if( global.Pausado ) exit;
			if(_other.hit_enemies == true) exit;
			if(Flying) exit;
			if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas = 0;
				alarm[3] = Delay_Invencibilidad;
				var FX = create_effect( x, y, sprMagicShield, 1.50 );
				FX.depth = depth-10;
				FX.image_blend = c_yellow;
				FX.image_xscale = 1.5;
				FX.image_yscale = 1.5;
				audio_play_sound(snd_RingArmor, 0, 0);
				exit;
			}
			if(player_has_item(55)) exit;
			if(_other.Damage == false)exit;
			if( alarm[3] < 0 ) {

				alarm[3] = Delay_Invencibilidad;
				flash(10,c_red);
			
				// Tell your partner that you were hit
				if(network_is_online()) and (global.NETWORK_HOST == true) {
					pack_quick("hitByMonsterFX");	
				}
    
				event_perform( ev_other, ev_user9 );
    
				if( !Bonus_Phantom_Shield_Activo ) {
    
				    if( Bonus_Magic_Shield < 2 ) {
				        alarm[2] = 10;
				        if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
				            HP -= 1;
				        } else {
				            HP_Extra_Q[HP_Extra_S]-=1;
				            if(HP_Extra_Q[HP_Extra_S] <= 0) {
				                special_heart_used(HP_Extra[HP_Extra_S]);
				                HP_Extra[HP_Extra_S] = -1;
				                HP_Extra_S--
				            }
				        }
						var player_has_iron_boots = player_has_item(35);
						if(instance_exists(_other)) {
					        if(_other.x < x) Velocidad_H = 2*(1-player_has_iron_boots);
					        if(_other.x > x) Velocidad_H = -2*(1-player_has_iron_boots);
					        if(_other.y < y) Velocidad_V = 2*(1-player_has_iron_boots);
					        if(_other.y > y) Velocidad_V = -2*(1-player_has_iron_boots);
						}
				        audio_play_sound( choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03), 0, 0 );
    
				        if(player_has_item(94)) {
				            Bonus_Phantom_Shield_Activo = true;
				        }
            
				    } else {
				        Bonus_Magic_Shield = 1;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				    }
				} else {
				        Bonus_Phantom_Shield_Activo = false;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				}
    
			}

		break;
	#endregion
	#region obj_TomahawkSkull
		case obj_TomahawkSkull:
			if( global.Pausado ) exit;
			if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas = 0;
				alarm[3] = Delay_Invencibilidad;
				var FX = create_effect( x, y, sprMagicShield, 1.50 );
				FX.depth = depth-10;
				FX.image_blend = c_yellow;
				FX.image_xscale = 1.5;
				FX.image_yscale = 1.5;
				audio_play_sound(snd_RingArmor, 0, 0);
				exit;
			}
			if( alarm[3] < 0 ) {

				alarm[3] = Delay_Invencibilidad;
				flash(10,c_red);
			
				// Tell your partner that you were hit
				if(network_is_online()) and (global.NETWORK_HOST == true) {
					pack_quick("hitByMonsterFX");	
				}
    
				event_perform( ev_other, ev_user9 );
    
				if( !Bonus_Phantom_Shield_Activo ) {
    
				    if( Bonus_Magic_Shield < 2 ) {
				        alarm[2] = 10;
				        if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
				            HP -= 2;
				        } else {
				            HP_Extra_Q[HP_Extra_S]-=2;
				            if(HP_Extra_Q[HP_Extra_S] <= 0) {
				                special_heart_used(HP_Extra[HP_Extra_S]);
				                HP_Extra[HP_Extra_S] = -1;
				                HP_Extra_S--
				            }
				        }
						var player_has_iron_boots = player_has_item(35);
						if(instance_exists(_other)) {
					        if(_other.x < x) Velocidad_H = 2*(1-player_has_iron_boots);
					        if(_other.x > x) Velocidad_H = -2*(1-player_has_iron_boots);
					        if(_other.y < y) Velocidad_V = 2*(1-player_has_iron_boots);
					        if(_other.y > y) Velocidad_V = -2*(1-player_has_iron_boots);
						}
				        audio_play_sound( choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03), 0, 0 );
    
				        if(player_has_item(94)) {
				            Bonus_Phantom_Shield_Activo = true;
				        }
            
				    } else {
				        Bonus_Magic_Shield = 1;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				    }
				} else {
				        Bonus_Phantom_Shield_Activo = false;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				}
    
			}


		break;
	#endregion
	#region objBombExplosion
		case objBombExplosion:
			if( global.Pausado ) exit;
			if(player_has_item(277) or player_has_item(285))exit;
			if(_other.hurt_player == false) exit;
			if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas = 0;
				alarm[3] = Delay_Invencibilidad;
				var FX = create_effect( x, y, sprMagicShield, 1.50 );
				FX.depth = depth-10;
				FX.image_blend = c_yellow;
				FX.image_xscale = 1.5;
				FX.image_yscale = 1.5;
				audio_play_sound(snd_RingArmor, 0, 0);
				exit;
			}
			if( alarm[3] < 0 ) {

				alarm[3] = Delay_Invencibilidad;
				flash(10,c_red);
			
				// Tell your partner that you were hit
				if(network_is_online()) and (global.NETWORK_HOST == true) {
					pack_quick("hitByMonsterFX");	
				}
				event_perform( ev_other, ev_user9 );
    
				if( !Bonus_Phantom_Shield_Activo ) {
    
				    if( Bonus_Magic_Shield < 2 ) {
				        alarm[2] = 10;
				        if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
				            HP -= 1;
				        } else {
				            HP_Extra_Q[HP_Extra_S]-=1;
				            if(HP_Extra_Q[HP_Extra_S] <= 0) {
				                special_heart_used(HP_Extra[HP_Extra_S]);
				                HP_Extra[HP_Extra_S] = -1;
				                HP_Extra_S--;
				            }
				        }
						var player_has_iron_boots = player_has_item(35);
						if(instance_exists(_other)) {
					        if(_other.x < x) Velocidad_H = 2*(1-player_has_iron_boots);
					        if(_other.x > x) Velocidad_H = -2*(1-player_has_iron_boots);
					        if(_other.y < y) Velocidad_V = 2*(1-player_has_iron_boots);
					        if(_other.y > y) Velocidad_V = -2*(1-player_has_iron_boots);
						}
				        audio_play_sound( choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03), 0, 0 );
    
				        if(player_has_item(94)) {
				            Bonus_Phantom_Shield_Activo = true;
				        }
            
				    } else {
				        Bonus_Magic_Shield = 1;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				    }
				} else {
				        Bonus_Phantom_Shield_Activo = false;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				}
    
			}


		break;
	#endregion
	#region objFallingRock
		case objFallingRock:
			if( global.Pausado ) exit;
			if(_other.y2 < y-10) exit;
			if(_other.hurt_player == false) exit;
			if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas = 0;
				alarm[3] = Delay_Invencibilidad;
				var FX = create_effect( x, y, sprMagicShield, 1.50 );
				FX.depth = depth-10;
				FX.image_blend = c_yellow;
				FX.image_xscale = 1.5;
				FX.image_yscale = 1.5;
				audio_play_sound(snd_RingArmor, 0, 0);
				exit;
			}
			if(Pet_Bonus_Tomahawk) and (chance(50)) and (alarm[3]<0) { alarm[3] = Delay_Invencibilidad; var FX = create_effect( x, y, sprMagicShield, 1.50 ); FX.depth = depth-10; FX.image_blend = c_red; FX.image_xscale = 1.5; FX.image_yscale = 1.5; exit; }
			if(player_has_item(92) or Pet_Bonus_Boss_RedSlime) exit;
			if( alarm[3] < 0 ) {

				alarm[3] = Delay_Invencibilidad;
				flash(10,c_red);
			
				// Tell your partner that you were hit
				if(network_is_online()) and (global.NETWORK_HOST == true) {
					pack_quick("hitByMonsterFX");	
				}
    
				event_perform( ev_other, ev_user9 );
    
				if( !Bonus_Phantom_Shield_Activo ) {
    
				    if( Bonus_Magic_Shield < 2 ) {
				        alarm[2] = 10;
				        if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
				            HP -= 2;
				        } else {
				            HP_Extra_Q[HP_Extra_S]-=2;
				            if(HP_Extra_Q[HP_Extra_S] <= 0) {
				                special_heart_used(HP_Extra[HP_Extra_S]);
				                HP_Extra[HP_Extra_S] = -1;
				                HP_Extra_S--
				            }
				        }
						var player_has_iron_boots = player_has_item(35);
						if(instance_exists(_other)) {
					        if(_other.x < x) Velocidad_H = 2*(1-player_has_iron_boots);
					        if(_other.x > x) Velocidad_H = -2*(1-player_has_iron_boots);
					        if(_other.y < y) Velocidad_V = 2*(1-player_has_iron_boots);
					        if(_other.y > y) Velocidad_V = -2*(1-player_has_iron_boots);
						}
				        audio_play_sound( choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03), 0, 0 );
    
				        if(player_has_item(94)) {
				            Bonus_Phantom_Shield_Activo = true;
				        }
            
				    } else {
				        Bonus_Magic_Shield = 1;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				    }
				} else {
				        Bonus_Phantom_Shield_Activo = false;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				}
    
			}


		break;
	#endregion
	#region objGiantSlimeBall
		case objGiantSlimeBall:
			if( global.Pausado ) exit;
			if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas = 0;
				alarm[3] = Delay_Invencibilidad;
				var FX = create_effect( x, y, sprMagicShield, 1.50 );
				FX.depth = depth-10;
				FX.image_blend = c_yellow;
				FX.image_xscale = 1.5;
				FX.image_yscale = 1.5;
				audio_play_sound(snd_RingArmor, 0, 0);
				exit;
			}
			if(_other.z > 5) exit;
			if( alarm[3] < 0 ) {

				alarm[3] = Delay_Invencibilidad;
				flash(10,c_red);
			
				// Tell your partner that you were hit
				if(network_is_online()) and (global.NETWORK_HOST == true) {
					pack_quick("hitByMonsterFX");	
				}
    
				event_perform( ev_other, ev_user9 );
    
			if( !Bonus_Phantom_Shield_Activo ) {
				    if( Bonus_Magic_Shield < 2 ) {
				        alarm[2] = 10;
				        if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
				            HP -= 2;
				        } else {
				            HP_Extra_Q[HP_Extra_S]-=2;
				            if(HP_Extra_Q[HP_Extra_S] <= 0) {
				                special_heart_used(HP_Extra[HP_Extra_S]);
				                HP_Extra[HP_Extra_S] = -1;
				                HP_Extra_S--
				            }
				        }
						var player_has_iron_boots = player_has_item(35);
						if(instance_exists(_other)) {
					        if(_other.x < x) Velocidad_H = 2*(1-player_has_iron_boots);
					        if(_other.x > x) Velocidad_H = -2*(1-player_has_iron_boots);
					        if(_other.y < y) Velocidad_V = 2*(1-player_has_iron_boots);
					        if(_other.y > y) Velocidad_V = -2*(1-player_has_iron_boots);
						}
				        audio_play_sound( choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03), 0, 0 );

				        if(player_has_item(94)) {
				            Bonus_Phantom_Shield_Activo = true;
				        }
        
				    } else {
				        Bonus_Magic_Shield = 1;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				    }
				} else {
				        Bonus_Phantom_Shield_Activo = false;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				}
    
			}


		break;
	#endregion
	#region objJefeBulbslimeLazer
		case objJefeBulbslimeLazer:
			if( global.Pausado ) exit;
			if(_other.alarm[1] > 0) exit;
			if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas = 0;
				alarm[3] = Delay_Invencibilidad;
				var FX = create_effect( x, y, sprMagicShield, 1.50 );
				FX.depth = depth-10;
				FX.image_blend = c_yellow;
				FX.image_xscale = 1.5;
				FX.image_yscale = 1.5;
				audio_play_sound(snd_RingArmor, 0, 0);
				exit;
			}
			if(Pet_Bonus_Tomahawk) and (chance(50)) and (alarm[3]<0) { alarm[3] = Delay_Invencibilidad; var FX = create_effect( x, y, sprMagicShield, 1.50 ); FX.depth = depth-10; FX.image_blend = c_red; FX.image_xscale = 1.5; FX.image_yscale = 1.5; exit; }
			if(player_has_item(92) or Pet_Bonus_Boss_RedSlime) exit;
			if( alarm[3] < 0 ) {

				alarm[3] = Delay_Invencibilidad;
				flash(10,c_red);
			
				// Tell your partner that you were hit
				if(network_is_online()) and (global.NETWORK_HOST == true) {
					pack_quick("hitByMonsterFX");	
				}
    
				event_perform( ev_other, ev_user9 );
    
				if( !Bonus_Phantom_Shield_Activo ) {
    
				    if( Bonus_Magic_Shield < 2 ) {
				        alarm[2] = 10;
				        if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
				            HP -= 2;
				        } else {
				            HP_Extra_Q[HP_Extra_S]-=2;
				            if(HP_Extra_Q[HP_Extra_S] <= 0) {
				                special_heart_used(HP_Extra[HP_Extra_S]);
				                HP_Extra[HP_Extra_S] = -1;
				                HP_Extra_S--
				            }
				        }
						var player_has_iron_boots = player_has_item(35);
						if(instance_exists(_other)) {
					        if(_other.x < x) Velocidad_H = 2*(1-player_has_iron_boots);
					        if(_other.x > x) Velocidad_H = -2*(1-player_has_iron_boots);
					        if(_other.y < y) Velocidad_V = 2*(1-player_has_iron_boots);
					        if(_other.y > y) Velocidad_V = -2*(1-player_has_iron_boots);
						}
				        audio_play_sound( choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03), 0, 0 );
    
				        if(player_has_item(94)) {
				            Bonus_Phantom_Shield_Activo = true;
				        }
            
				    } else {
				        Bonus_Magic_Shield = 1;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				    }
				} else {
				        Bonus_Phantom_Shield_Activo = false;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				}
    
			}


		break;
	#endregion
	#region objJefePlanetSlimeMoon
		case objJefePlanetSlimeMoon:
			if( global.Pausado ) exit;
			if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas = 0;
				alarm[3] = Delay_Invencibilidad;
				var FX = create_effect( x, y, sprMagicShield, 1.50 );
				FX.depth = depth-10;
				FX.image_blend = c_yellow;
				FX.image_xscale = 1.5;
				FX.image_yscale = 1.5;
				audio_play_sound(snd_RingArmor, 0, 0);
				exit;
			}

			if( alarm[3] < 0 ) {

				with(_other) instance_destroy();
				alarm[3] = Delay_Invencibilidad;
				flash(10,c_red);
			
				// Tell your partner that you were hit
				if(network_is_online()) and (global.NETWORK_HOST == true) {
					pack_quick("hitByMonsterFX");	
				}
				event_perform( ev_other, ev_user9 );
				if(!Bonus_Phantom_Shield_Activo) {
    
				    if(Bonus_Magic_Shield < 2) {
				        alarm[2] = 10;
				        if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
				            HP -= 2;
				        } else {
				            HP_Extra_Q[HP_Extra_S]-=2;
				            if(HP_Extra_Q[HP_Extra_S] <= 0) {
				                special_heart_used(HP_Extra[HP_Extra_S]);
				                HP_Extra[HP_Extra_S] = -1;
				                HP_Extra_S--
				            }
				        }
						var player_has_iron_boots = player_has_item(35);
						if(instance_exists(_other)) {
					        if(_other.x < x) Velocidad_H = 2*(1-player_has_iron_boots);
					        if(_other.x > x) Velocidad_H = -2*(1-player_has_iron_boots);
					        if(_other.y < y) Velocidad_V = 2*(1-player_has_iron_boots);
					        if(_other.y > y) Velocidad_V = -2*(1-player_has_iron_boots);
						}
				        audio_play_sound( choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03), 0, 0 );
    
				        if(player_has_item(94)) {
				            Bonus_Phantom_Shield_Activo = true;
				        }
            
				    } else {
				        Bonus_Magic_Shield = 1;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				    }
				} else {
				        Bonus_Phantom_Shield_Activo = false;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				}
    
			}


		break;
	#endregion
	#region objSpikeBlock
		case objSpikeBlock:
			if( global.Pausado ) exit;
			if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas = 0;
				alarm[3] = Delay_Invencibilidad;
				var FX = create_effect( x, y, sprMagicShield, 1.50 );
				FX.depth = depth-10;
				FX.image_blend = c_yellow;
				FX.image_xscale = 1.5;
				FX.image_yscale = 1.5;
				audio_play_sound(snd_RingArmor, 0, 0);
				exit;
			}
			if(player_has_item(55)) exit;
			if( alarm[3] < 0 ) {

				alarm[3] = Delay_Invencibilidad;
				flash(10,c_red);
			
				// Tell your partner that you were hit
				if(network_is_online()) and (global.NETWORK_HOST == true) {
					pack_quick("hitByMonsterFX");	
				}
    
				event_perform( ev_other, ev_user9 );
    
				if( !Bonus_Phantom_Shield_Activo ) {
    
				    if( Bonus_Magic_Shield < 2 ) {
				        alarm[2] = 10;
				        if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
				            HP -= 1;
				        } else {
				            HP_Extra_Q[HP_Extra_S]-=1;
				            if(HP_Extra_Q[HP_Extra_S] <= 0) {
				                special_heart_used(HP_Extra[HP_Extra_S]);
				                HP_Extra[HP_Extra_S] = -1;
				                HP_Extra_S--
				            }
				        }
						var player_has_iron_boots = player_has_item(35);
						if(instance_exists(_other)) {
					        if(_other.x < x) Velocidad_H = 2*(1-player_has_iron_boots);
					        if(_other.x > x) Velocidad_H = -2*(1-player_has_iron_boots);
					        if(_other.y < y) Velocidad_V = 2*(1-player_has_iron_boots);
					        if(_other.y > y) Velocidad_V = -2*(1-player_has_iron_boots);
						}
				        audio_play_sound( choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03), 0, 0 );
    
				        if(player_has_item(94)) {
				            Bonus_Phantom_Shield_Activo = true;
				        }
            
				    } else {
				        Bonus_Magic_Shield = 1;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				    }
				} else {
				        Bonus_Phantom_Shield_Activo = false;
				        var FX = create_effect( x, y, sprMagicShield, 1.50 );
				        FX.depth = depth-10;
				        FX.image_xscale = 1.5;
				        FX.image_yscale = 1.5;
				}
    
			}


		break;
	#endregion
		
	}

	// Collision with enemies
	if((object_get_parent(_object_index)) == parent_Enemigo) or ((object_get_parent(_object_index)) == parent_Jefe) {
	
	#region parent_Enemigo
			if(_other.Altura > 2) exit;
		
			// Get warped to inside the mimic
			if(instance_exists(obj_Dummy)) and (_other.object_index == obj_Mimic) {
				global.Jugador_Monedas = 0;
				audio_play_sound(snd_Moneda,0,0);
				dungeon_goto_level(14,1);	
			}
		
			// Don't be hurt if the enemy is the Skeleton King and it's changing to crawl form
			if(_other.object_index == objJefeSkeletonKingCrawl) and (_other.phase == 1) exit;
    
			// Spike damage
			if(Bonus_Spike_Damage > 0) {
				_other.HP--;
				_other.alarm[2] = 4;
			}

			// Be repeled
			if(enemy_common_repel(_other)) exit;
		
			// Don't receive damage if you are Slimer
			if(global.characterSelected == 11) exit;

			// Avoid damage if you have coins
			if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas = 0;
				alarm[3] = Delay_Invencibilidad;
				var FX = create_effect( x, y, sprMagicShield, 1.50 );
				FX.depth = depth-10;
				FX.image_blend = c_yellow;
				FX.image_xscale = 1.5;
				FX.image_yscale = 1.5;
				audio_play_sound(snd_RingArmor, 0, 0);
				exit;
			}

			// Kamislime, exit
			if(real(_other.ID) == 44) {
				with(_other) instance_destroy();
				exit; 
			}

			// Zombieslime, create another zombie
			if(real(_other.ID) == 47) and (alarm[3]<0) and (instance_number(parent_Enemigo)<8) {
				spawn(_other.x,_other.y,47);
			}

			// Minibombslime explode, exit
			if(real(_other.ID) == 45) {
				instance_create(_other.x, _other.y, objBombExplosion);
				with(_other) instance_destroy();
				exit; 
			}

			// Ratslime, steal
			if(real(_other.ID) == 29) and (alarm[3]<0) and (global.Jugador_Monedas > 0) {
				global.Jugador_Monedas--;
				var _Moneda = instance_create(x, y, obj_Moneda);
				_Moneda.alarm[0] = 60;
			}

			// Iceslime, paralisis
			if(real(_other.ID) == 39) and (alarm[3]<0) {
				paralisis = 60;
			}

			// Ratslime Bonus, generate coin
			if(Pet_Bonus_RatSlime) and (chance(25)) and (alarm[3]<0) {
				instance_create(x, y, obj_Moneda);
			}

			// Be hit
			scr_jugador_common_hurt(_other.Fuerza,_other);

			// Analytics
			//GoogleAnalytics_SendEvent("player_hurt_by_enemy",string(_other.ID));

			// Friction
			with(_other) {
				var dd = point_direction(x, y, _me.x, _me.y);
				var cs = 0.5;
				var cx = cos(degtorad(dd))*cs;
				var cy = sin(degtorad(dd))*cs;
				if(place_free(x - cx, y)) x -= cx;
				if(place_free(x, y + cy)) y += cy;
			}

	#endregion
	
	}


}
