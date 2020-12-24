// Destruirse si acaba de cargar la partida
if(!ds_exists(Objetivos, ds_type_list)) {
    instance_destroy(); 
    exit;
}

// Mantener alarmas en pausa
if(global.Pausado) {
    for(i = 0; i < 11; i++) {
        if(alarm[i]>=0) alarm[i]++;
    }
}

// Exit if not player exists
if(!instance_exists(obj_Jugador)) {
    instance_destroy();
    exit;
}

////////////////////////////
///// SOLID COLLISIONS /////
////////////////////////////
if(!global.Pausado) {
    var xscl = image_xscale;
    var yscl = image_yscale;
    image_xscale = 1;
    image_yscale = 1;
        
    // Move bombs
    if(instance_exists(objBomb)) {
        var bombPlace = instance_place(x,y,objBomb);
        if(bombPlace != noone) {
            var dd = point_direction(xprevious, yprevious, bombPlace.x, bombPlace.y);
            var cs = 2;
            var cx = cos(degtorad(dd))*cs;
            var cy = -sin(degtorad(dd))*cs;
            bombPlace.hSpeed = cx;
            bombPlace.vSpeed = cy;
            instance_destroy();
            exit;
        }
    }
	
	// Destroy enemies bullets
	if(instance_exists(obj_MageSkeleton_Fireball)) {
		if(player_item_322) {
	        var otherBullet = instance_place(x,y,obj_MageSkeleton_Fireball);
			if(otherBullet != noone) {
				with(otherBullet) instance_destroy();
				instance_destroy();
			}
		}
	}
    
    // Solid contact
    var Instance_Place = instance_place(x,y,parent_Solid);
    if(Instance_Place != noone) {
        var Instance_Object_Index = Instance_Place.object_index;
        
        // Spawn Block Monster
        if(Instance_Object_Index == obj_Bloqueador) and (Instance_Place.Spawnable) and (global.Mapa_Tipo >= 7) {
            if(Instance_Place.sprite_index != sprBlockMonsterAppears) Instance_Place.sprite_index = sprBlockMonsterAppears;
        }
		
		// Musical Block
		if(Instance_Object_Index == obj_MusicalBlock) {
			var col = c_white;
			Instance_Place.xscale = 1.25;
			Instance_Place.yscale = 1.25;	
			switch(Instance_Place.image_index) {
				case 0: audio_stop_sound(sndMusicalBlock1); audio_play_sound(sndMusicalBlock1,0,0); col = c_aqua;    break;
				case 1: audio_stop_sound(sndMusicalBlock2); audio_play_sound(sndMusicalBlock2,0,0); col = c_lime;    break;
				case 2: audio_stop_sound(sndMusicalBlock3); audio_play_sound(sndMusicalBlock3,0,0); col = c_fuchsia; break;
				case 3: audio_stop_sound(sndMusicalBlock4); audio_play_sound(sndMusicalBlock4,0,0); col = c_yellow;  break;	
			}
			repeat(irandom_range(4,7)) {
				var f = create_effect(Instance_Place.x-12+random(24),Instance_Place.y-12+random(12),sprSparkle,0.3+random(3)/10);
				f.vspeed = -(0.1+random(5)/10);
				f.image_blend = choose(c_white,col);
			}
			with(control_MusicBlocks) {
				if(chain2 != "*") {
					chain2 += string(Instance_Place.image_index);
					if(string_copy(chain,1,string_length(chain2)) != chain2) {
						chain2 = "";
					}
					if(chain == chain2) {
						create_chest_big(x+12,y+12,get_random_item_from_pool("treasure"));
						chain2 = "*";
					}
				}
			}
		}
        
        // Rockslime bonus
        if(Instance_Object_Index == obj_Rocas) and (player_has_pet(50)) and (chance(5)) {
            with(Instance_Place) instance_destroy();
        }
        
        // Secret Room
        if(Instance_Object_Index == obj_Puerta) and (Instance_Place.secretroom) {
            audio_play_sound(snd_RingArmor, 0, 0);
            create_effect(x,y,sprFxEnemySmoke,1);
        }
        
        // Go through voids and water
        if(Instance_Object_Index != obj_Void and Instance_Object_Index != obj_Agua) {
            if(Instance_Place.solid == true or Instance_Object_Index == obj_Puerta) and (alarm[2] < 0) and (Check_Solid = false) {
                if(player_item_21 == false and (player_item_119 == false and !GhostBullet)) {
                    instance_destroy();
                    if(instance_exists(obj_Jugador) and player_item_151) {
                        with(parent_Enemigo) {
                            if(object_get_parent(object_index) != parent_Jefe and object_index != obj_Conejo and object_index != obj_StompSlime) {
                                var D = point_direction(x,y,other.x,other.y);
                                hspeed =  cos(degtorad(D)) * 2;
                                vspeed = -sin(degtorad(D)) * 2;
                            }
                        }
                    }
                }
                if(player_item_21) {
                    if(Rebotes <= 0) instance_destroy();
                    Rebotes--;
                    if(abs(H_SPEED) > abs(V_SPEED)) H_SPEED = - H_SPEED;
                    if(abs(H_SPEED) < abs(V_SPEED)) V_SPEED = - V_SPEED;
                    if(instance_exists(obj_Jugador) and player_has_item(151)) {
                        with(parent_Enemigo) {
                            if(object_get_parent(object_index) != parent_Jefe and object_index != obj_Conejo and object_index != obj_StompSlime) {
                                var D = point_direction(x,y,other.x,other.y);
                                hspeed =  cos(degtorad(D)) * 2;
                                vspeed = -sin(degtorad(D)) * 2;
                            }
                        }
                    }
                }
            }
        }
    }
    image_xscale = xscl;
    image_yscale = yscl;
}

////////////////////////////
//////// BEHAVIOUR /////////
////////////////////////////
var Pre_Pulse_X = x;
var Pre_Pulse_Y = y;
if(!global.Pausado) {
    if(!instance_exists(controlador_Movimiento) or !instance_exists(controlador_Disparo)) exit;
    if(!instance_exists(obj_Jugador)) exit;
	
	/// Merge
	if(player_item_311) {
		var ins = instance_nearest_notme(x,y,obj_Jugador_Disparo);
		if(ins != noone) {
			if(distance_to_object(ins) < 4) {
				ins.image_xscale *= 1.2;
				ins.image_yscale *= 1.2;
				ins.mergeDamage += 1;
				image_xscale *= 1.2;
				image_yscale *= 1.2;
				mergeDamage += 1;
				if(ins.mergeDamage >= mergeDamage) instance_destroy();
				if(ins.mergeDamage < mergeDamage)  with(ins) instance_destroy();
			}
		}
	}
	
	// Snowball effect
	if(player_item_336) {
		image_xscale += 0.025;
		image_yscale += 0.025;	
	}
    
    // Semiflash movement
    if(player_item_157) {
        SemiFlash++;
        if(SemiFlash > 20) SemiFlash = 0;
    }
    
    // Sustain Bullets
    if(player_item_42) {
        if (controlador_Disparo.A != 0) or (keyboard_check(obj_Jugador.tecla_Disparo_Arriba) or keyboard_check(obj_Jugador.tecla_Disparo_Abajo) or keyboard_check(obj_Jugador.tecla_Disparo_Izquierda) or keyboard_check(obj_Jugador.tecla_Disparo_Derecha)) {
            Sustain = true;
        } else {
            Sustain = false;
        }
    } else {
        Sustain = false;
    }
    if(Sustain == true) { 
        Sustain_Time--; 
        alarm[0]++; 
    }
    if(Sustain_Time <= 0) Sustain = false;
    
    // Si tiene boomerang mantenerse en el aire hasta que vuelva
    if(player_item_116) { 
        alarm[0]++; 
    }
    
    // Movement behaviour
    if(!Sustain) and (SemiFlash < 10) {
        
        // Magnet
        if(player_item_84) {
            if(instance_exists(parent_Enemigo)) {
                var d_Enemigo = instance_nearest(x, y, parent_Enemigo);
                var dir = point_direction(x, y, d_Enemigo.x, d_Enemigo.y);
                image_angle = dir;
                x += 2*cos(degtorad(dir));
                y -= 2*sin(degtorad(dir));
            }
        }
        
        // Windforce
        if(player_item_91) { 
            Windforce_Fuerza+=0.025;
        }
        
        // Boomerang
        if(player_item_116) {
            if(Direccion_Relativa == 0) {
                if(V_SPEED > 0 and y > ystart) instance_destroy();
                V_SPEED += 0.05;
            } else if(Direccion_Relativa == 1) {
                if(H_SPEED < 0 and x < xstart) instance_destroy();
                H_SPEED -= 0.05;
            } else if(Direccion_Relativa == 2) {
                if(V_SPEED < 0 and y < ystart) instance_destroy();
                V_SPEED -= 0.05;
            } else if(Direccion_Relativa == 3) {
                if(H_SPEED > 0 and x > xstart) instance_destroy();
                H_SPEED += 0.05;
            }
        }
        
		var player_has_laser_beans = player_item_87;
        if(instance_exists(parent_Enemigo)) {
        
            // Homing
            if(Homing = true) {
                var H_Enemigo = instance_nearest(x,y,parent_Enemigo);
                HD = point_direction(x, y, H_Enemigo.x, H_Enemigo.y);
                image_angle = HD;
                x += max(abs(V_SPEED*(player_has_laser_beans+1)),abs(H_SPEED*(player_has_laser_beans+1))) * +cos(degtorad(HD));
                y += max(abs(V_SPEED*(player_has_laser_beans+1)),abs(H_SPEED*(player_has_laser_beans+1))) * -sin(degtorad(HD));
            } else {
            
                // Girar
                if(player_item_30) {
                    Angulo += 2;
                    x += cos(degtorad(Angulo)) * H_SPEED*(player_has_laser_beans+1);
                    y += sin(degtorad(Angulo)) * V_SPEED*(player_has_laser_beans+1);
                    if(Angulo > 360) Angulo -= 360;
                }
                
                // Moverse
                if(player_item_30 == false) {
                    x += H_SPEED*(player_has_laser_beans+1);
                    y += V_SPEED*(player_has_laser_beans+1);
                }
            }
        } else {
            x += H_SPEED*(player_has_laser_beans+1);
            y += V_SPEED*(player_has_laser_beans+1);
        }
    }
    
    // Pulse ammo
    if(player_item_86) {
        if(sprite_index != sprBulletPulse) sprite_index = sprBulletPulse;
        x = Pre_Pulse_X;
        y = Pre_Pulse_Y;
        if(image_xscale < 4) {
            image_xscale += 0.1;
            image_yscale += 0.1;
        }
    }
	
	// Remote Controller
	if(instance_exists(obj_Jugador)) {
		if(player_item_306) {
			x += obj_Jugador.Velocidad_H;
			y += obj_Jugador.Velocidad_V;	
		}
	}
	
	// Pulse wave
	if(player_item_329) {
		sprite_index = sprPulseWave;
		H_SPEED	= 0;
		V_SPEED = 0;
		image_xscale = tween_to(image_xscale,3 + wave(-0.2,0.2,1,0),10);
		image_yscale = tween_to(image_yscale,3 + wave(-0.2,0.2,1,0),10);
		Sustain = true;
		if(image_xscale > 4) instance_destroy();
	}
    
    // Profundidad
    depth = -y+8;
}

/////////////////////////////
/////// ENEMY DAMAGE ////////
/////////////////////////////
/// Dañar al enemigo
if(!global.Pausado) {
    if(!instance_exists(controlador_Movimiento) or !instance_exists(controlador_Disparo)) exit;
    if(!instance_exists(obj_Jugador))exit;
    preMask = mask_index;
    mask_index = sprite_index;
    var Enemigo = instance_place(x, y, parent_Enemigo);
    if(instance_exists(Enemigo)) bullet_hit_enemy(Enemigo);
    mask_index = preMask;
}

/////////////////////////////
/////// DESTRUCTIBLES ///////
/////////////////////////////
if(!global.Pausado) {
    if(!instance_exists(obj_Jugador))exit;
    var preMask = mask_index;
    mask_index = sprite_index;
    
    // Destructables
	if(instance_exists(parent_Destruible)) {
	    var Destruible = instance_place(x, y, parent_Destruible);
	    if(Destruible) bullet_hit_destructable(Destruible);
	}
    
    // Spikes
	if(player_item_53) {
		if(instance_exists(obj_Pinchos)) {
	        var Destruible = instance_place(x, y, obj_Pinchos);
	        if(Destruible) bullet_hit_spikes(Destruible);
	    }
	}
    
    // Doors
    if(player_item_202) {
		var _pp = instance_place(x, y, obj_Puerta);
        if(_pp) {
            with(_pp) {
                if(image_index == 1) {
                    xscale = 1.3;
                    yscale = 1.3;
                    image_index = 2;
                    audio_play_sound(snd_Puerta_Abrir,1,0);
                }
            }
        }
    }
    mask_index = preMask;
    
    // Traps
    if(player_item_226) {
		var _pp = instance_place(x, y, obj_Bloqueador_Activado_Rojo);
        if(_pp) {
            with(_pp) {
                pushed = true;
            }
        }
		var _pp = instance_place(x, y, obj_Bloqueador_Activado_Azul);
        if(_pp) {
            with(_pp) {
                pushed = true;
            }
        }
    }
}

