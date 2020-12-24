/// @description bullet_hit_enemy(enemyID,knockback)
/// @function bullet_hit_enemy
/// @param enemyID
/// @param knockback
function bullet_hit_enemy() {
	// Get vars
	Enemigo = argument[0];
	enemyID = real(Enemigo.ID) + (500*Enemigo.IsBoss);

	    // If enemy doesn't exists, exit
	    if(!instance_exists(Enemigo)) exit;
	
		// If the enemy is the Skeleton King in crawler's form and phase 1, exit
		if(Enemigo.object_index == objJefeSkeletonKingCrawl) and (Enemigo.phase == 1) exit;

	    // If the enemy is in the air -> can't hit it -> exit
	    if(Enemigo.Altura > 2) { exit; }
	
		// Can't hit magic swords
		if(real(Enemigo.ID) == enemies.magic_sword) exit;
    
	    // Create Target list if it doesn't exists
	    if(!ds_exists(Objetivos,ds_type_list)) Objetivos = ds_list_create();
    
	    // If the enemy has been hit already -> exit
	    if(targetListBased == true) and ((ds_list_find_index(Objetivos,Enemigo.id)) != -1) { exit; }
    
	    // If there's a priestslime in the room and you are not hittin him, exit
	    if(priestslime_exists()) and (chance(80)) and object_index == obj_Jugador_Disparo and (enemyID != 54) and !(player_has_pet(73) and chance(50)) {
	        create_effect(Enemigo.x, Enemigo.y, sprFxPurpleMuzzy, 0.5);
			var _xx = -1;
	        with(parent_Enemigo) {
	            if(real(ID) == 54) {
					var _xx = x;
					var _yy = y;
	                var lazerShield = instance_create(_xx,_yy,fxLazer);
	                lazerShield.X2 = other.Enemigo.x;
	                lazerShield.Y2 = other.Enemigo.y;
	            }
	        }
	        if(destroyable) instance_destroy();
		
			// Tell partner
			if(_xx != -1) {
				if(network_is_online() and network_is_host()) {
					pack_send_multi("lazerShield","x1",_xx,"y1",_yy,"x2",other.Enemigo.x,"y2",other.Enemigo.y,"x3",Enemigo.x,"y3",Enemigo.y);	
				}
			}
		
	        exit;
	    }
    
	    // If enemy doesn't exists, exit (repeat)
	    if(!instance_exists(Enemigo)) exit;
    
	    // If you are hitting a bouncyslime, hit a random enemy in the room
	    if(enemyID == 53) and (!player_has_pet(72)) and (object_index == obj_Jugador_Disparo) {
	        var eex = Enemigo.x;
	        var eey = Enemigo.y;
	        Enemigo = instance_find(parent_Enemigo, irandom(instance_number(parent_Enemigo)));
	        if(!instance_exists(Enemigo)) exit;
	        enemyID = real(Enemigo.ID) + (500*Enemigo.IsBoss);
	        create_effect(Enemigo.x, Enemigo.y, sprFxPurpleMuzzy, 0.5);
	        var lazerShield = instance_create(eex,eey,fxLazer);
	        lazerShield.X2 = Enemigo.x;
	        lazerShield.Y2 = Enemigo.y;
		
			// Tell partner
			if(network_is_online() and network_is_host()) {
				pack_send_multi("lazerShield","x1",eex,"y1",eey,"x2",Enemigo.x,"y2",Enemigo.y,"x3",Enemigo.x,"y3",Enemigo.y);	
			}
		
	    }
    
	    // If enemy doesn't exists, exit (repeat)
	    if(!instance_exists(Enemigo)) exit;
    
	    // If the enemy is invulnerable -> exit
	    if(real(enemyID) == 22) and (object_index != objJefePlanetslime) and (Enemigo.hasSkull == true) { 
	        if(destroyable) instance_destroy();
	        exit; 
	    }
    
	    // If you are hiting the body of the bigsnake, hit the bigsnake instead
	    if(Enemigo.object_index == objJefeBigsnakePart) and (instance_exists(Enemigo.hitParent)) {
	        if(destroyable) instance_destroy();
	        exit;
	        Enemigo.alarm[2] = 5;
	        Enemigo = Enemigo.hitParent;
	    }
    
	    // Don't hurt the gangslime
	    if(Enemigo.object_index == objJefeGangslime) and (instance_number(parent_Enemigo)>1) { 
	        if(destroyable) instance_destroy();
	        exit; 
	    }
    
	    // Don't hurt immune slimes
	    if(Enemigo.Immune) { 
	        if(destroyable) instance_destroy();
	        exit; 
	    }
    
	    // If enemy doesn't exists, exit (repeat)
	    if(!instance_exists(Enemigo)) exit;
	
	    // Slimecapone teleport
	    if(real(enemyID) == 33) and (Enemigo.object_index == obj_Skeleton) {
	        with(Enemigo) {
	            for(i = 0; i < 999; i++) {
	                var X = irandom_range(168,432);
	                var Y = irandom_range(96,216);
	                if(place_free(X,Y) and point_distance(X,Y,obj_Jugador.x,obj_Jugador.y)>16) {
	                    repeat(4){
	                        var v = 8;
	                        var xx = x+random_range(-v, v);
	                        var yy = y+random_range(-v, v);
	                        var a = random_range(0.1, 0.4);
	                        create_effect(xx, yy, choose(sprSmoke, sprSmokeSmall), a);
	                    }
	                    x = X;
	                    y = Y;
	                    break;
	                }
	            }
	        }
	    }
    
	    // Don't hurt the gangslime's gang
	    if(Enemigo.object_index == obj_Skeleton) and ((real(enemyID) == 31) or (real(enemyID) == 32) or (real(enemyID) == 33)) {
	        if(Enemigo.alarm[2]<0) Enemigo.alarm[2] = 4;
	        audio_play_sound(sndBulletImpact, 0, 0);
	        if(destroyable) instance_destroy();
	        instance_create(Enemigo.x,Enemigo.y,objJefeGangslimeShoot);
	        /*mask_index = preMask;*/
	        exit; 
	    }
    
	    // Envenom
	    if(player_has_item(13))   { 
	        Enemigo.Envenenado = 3; 
	        Enemigo.image_blend = c_lime; 
	        Enemigo.alarm[10] = 60; 
	    }
    
	    // Bleed
	    if(player_has_item(14)) { 
	        Enemigo.Sangrando  = 3;
	        Enemigo.image_blend = c_red;
	        Enemigo.alarm[9] = 60; 
	    }
    
	    // Freeze
	    if(player_has_item(29) and percent_chance(10)) { 
	        Enemigo.alarm[11] = 120;
	    }
    
	    // Lucky Rockets
	    if(player_has_item(247)) and (chance(10)) {
	        spawn_rocket(1);
	    }
    
	    // Teleport of the wizard mob
	    if(real(enemyID) == 24) Enemigo.Teleport = 1;
    
	    // Challenge Slime
	    if(real(enemyID) == 26) {
	        var _Moneda = instance_create(Enemigo.x, Enemigo.y, obj_Moneda);
	        switch(choose(1,2)) {
	            case 1: _Moneda.hspeed = choose(1, -1); break;
	            case 2: _Moneda.vspeed = choose(1, -1); break;
	        }
	    }
    
	    // Minimedusa effect
	    if(obj_Jugador.Pet_Bonus_MiniMedusa) and (chance(5)) { 
	        obj_Jugador.HP += 1; 
	        if(obj_Jugador.HP > obj_Jugador.HP_Max) 
	        obj_Jugador.HP = obj_Jugador.HP_Max; 
	    }
    
	    // Knockback
	    if(obj_Jugador.Knockback > 0) and ((argument_count > 1 and argument[1] == true) or (argument_count == 1)) and (Enemigo.object_index != obj_Bouncer) {
	        var dir = point_direction(x, y, Enemigo.x, Enemigo.y);
	        with(Enemigo) add_speed(obj_Jugador.Knockback, dir);
	    }
    
	    // Añadir el objetivo a la lista
	    if(ds_exists(Objetivos, ds_type_list)) ds_list_add(Objetivos, Enemigo.id);
    
	    // Blood hit effect
	    with(Enemigo) {
	        var FX = create_effect(other.x, other.y, sprSplat2, 1/3);
	        FX.image_blend = Color_Sangre;
	        FX.depth = depth-400;
	        repeat(3) {
	            var v = 6;
	            var xx = x+random_range(v, -v);
	            var yy = y+random_range(v, -v);
	            var sc = random_range(0.25, 0.7);
	            var in = instance_create(xx,yy,fx_Sprite_Persistent);
	            in.image_xscale = sc;
	            in.image_yscale = sc;
	            in.sprite_index = sprBlood;
	            in.image_blend = Color_Sangre;
	            in.image_alpha = 0.8;
	        }
	    }
    
	    // Daño
	    with(Enemigo) {
	        if(object_index == obj_Jefe_GlowSlime and Regenerando == true) and (obj_Jugador.Pet_Bonus_Boss_GlowSlime == false)  { 
	            HP += Max_HP * 0.025;
	            if(HP > Max_HP) HP = Max_HP;
	            repeat(8) {
	                var FX = create_effect(x-14+random(28),y-14+random(28),sprSparkle,0.1 + random(2)/10);
	                FX.depth = depth-1; 
	            }
	            audio_play_sound(sndHealing,0,0);
	        }
		
	        if(obj_Jugador.Pet_Bonus_Boss_Creep) and (random(1000)<=1) { HP = 0; }
	        var c_damage = ((obj_Jugador.Fuerza+obj_Jugador.Fuerza_Temporal)*(1+player_has_item(98)*(IsBoss))) * (other.mergeDamage) + (global.Jugador_Monedas/10*player_has_item(41)) + marked + (other.My_Fuerza) + (other.Windforce_Fuerza) + (obj_Jugador.temp_Fuerza) + (2*other.Last_Effort) + (other.TooMuchGold_Damage) + (other.Strike*50);
	        c_damage *= 1 + (other.Fire*3.5*(player_has_pet(59)+1));
	        c_damage *= other.damageMultiplier;
			if(player_has_item(319)) and ((global.Jugador_Item_Usable != -1) and (obj_Jugador.Cargas == obj_Jugador.Cargas_Max)) c_damage += 2; // Full Charge
			if(player_has_item(320)) and ((global.Jugador_Item_Usable != -1) and (obj_Jugador.Cargas != obj_Jugador.Cargas_Max)) c_damage += 2; // No Charge
	        if(player_has_pet(48)) and (obj_Jugador.Cargas == obj_Jugador.Cargas_Max) c_damage += 2;
	        HP -= ceil(c_damage);
	        if(alarm[2]<0) alarm[2] = 6;
			audio_stop_sound(sndBulletImpact);
	        audio_play_sound(sndBulletImpact, 0, 0);
			audio_stop_sound(sndEnemyImpact);
	        audio_play_sound(sndEnemyImpact, 0, 0);
	        var f = floating_text(x-4+random(8), y-4+random(8), string(round(c_damage)), make_color_rgb(255, 20, 20), true);
			f.alarm[0] = 60;
		
	        // Exp stealer
	        if(player_has_item(218)) or (player_has_pet(68) and (chance(10))) {
	            instance_create(x,y,objExperienceOrb);
	        }
		
			// Coil Lazers
			if(player_has_item(328)) and (chance(50)) {
				var _iid = id;
				var _cc = ceil(c_damage/10);
				with(parent_Enemigo) {
					if(id != _iid) {
						if(distance_to_object(_iid) < 90) {
							HP -= _cc;
					        var f = floating_text(x-4+random(8), y-4+random(8), _cc, make_color_rgb(40, 40, 255), true);
							f.alarm[0] = 60;
							var l = instance_create(other.x,other.y,fxMiniLazer);
							l.x2 = x;
							l.y2 = y;
							if(alarm[2]<0) alarm[2] = 6;
						}
					}
				}
			}
    
	        // Flash
	        if(player_has_item(260)) and (chance(5)) {
	            instance_destroy();
	            create_effect(x,y,sprFxFlashMuzzy,0.5);
	            create_effect(obj_Jugador.x,obj_Jugador.y,sprFxFlashMuzzy,0.5);
	            with(obj_Jugador) {
	                if(place_free(other.x,other.y)) {
	                    x = other.x;
	                    y = other.y;
	                    alarm[3] = 120;
	                }
	            }
	            exit;
	        }
        
	    }
    
	    // Mark
	    if(player_has_item(150)) {
	        with(Enemigo) marked = true;
	    }
    
	    // Si son balas gravitatorias las añade al enemigo
	    if(player_has_item(120)) {
	        Enemigo.Friends[array_length_1d(Enemigo.Friends)] = choose(66);
	    }
    
	    // Crear efecto de ricochet
	    if(instance_exists(Enemigo)) {
	        if((player_has_item(115) or (player_has_item(333))) and Enemigo.HP > 0) {
            
	            // Crea una lista y un mapa para calcular el segundo enemigo mas cercano
	            _Enemigo_Cercano = ds_list_create();
	            _Enemigo_Cercano_Map = ds_map_create();
            
	            // Apunta todos los enemigos vivos en el mapa y lista
	            for(m = 0; m < instance_number(parent_Enemigo); m++) {
	                var _Enemigo = instance_find(parent_Enemigo, m);
	                if(_Enemigo.HP > 0) {
	                    ds_list_add(_Enemigo_Cercano, point_distance(x, y, _Enemigo.x, _Enemigo.y));
	                    ds_map_add(_Enemigo_Cercano_Map, point_distance(x, y, _Enemigo.x, _Enemigo.y), _Enemigo.id);
	                }
	            }
            
	            // Ordena la lista segun distancia
	            ds_list_sort(_Enemigo_Cercano, true);
            
	            // Consigue el ID del segundo enemigo mas cercano
	            var _Enemigo_Cercano_ID = ds_list_find_value(_Enemigo_Cercano, 1);
	            if(!is_undefined(_Enemigo_Cercano_ID)) {
	                _Enemigo_Cercano_ID = ds_map_find_value(_Enemigo_Cercano_Map, _Enemigo_Cercano_ID);
            
	                // Crear una nueva bala hacia el enemigo
	                var _Enemigo_Cercano_Angulo = point_direction(x, y, _Enemigo_Cercano_ID.x, _Enemigo_Cercano_ID.y);
	                var Disparo = bullet_spawn(x,y,4,4,_Enemigo_Cercano_Angulo,obj_Jugador_Disparo);
	                ds_list_add(Disparo.Objetivos, Enemigo.id);
            
	            }
            
	            // Destruye la lista y el mapa
	            ds_list_destroy(_Enemigo_Cercano);
	            ds_map_destroy(_Enemigo_Cercano_Map);
        
	        }
	    }
    
	    // Matar al enemigo
	    if(instance_exists(Enemigo)) {
	        if(Enemigo.HP <= 0) with(Enemigo) instance_destroy();
	    }
    
	    // Destruirse si la lista ha alcanzado el numero de objetivos maximo
	    if(ds_exists(Objetivos, ds_type_list)) {
	        if((ds_list_size(Objetivos) > obj_Jugador.Penetracion_Disparo) and (ds_list_size(Objetivos) > Pierce)) and (destroyable) and (targetListBased == true) instance_destroy();
	    } else {
	        instance_destroy();
	    }



}
