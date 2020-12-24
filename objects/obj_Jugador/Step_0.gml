/// Annuncios (UNITYADS)
// Cargar anuncio
if(global.Ads_Active == true) {
    if(global.NO_ANUNCIOS == false) {
    
        //if(GoogleMobileAds_InterstitialStatus() != "Ready" and (alarm[7]<0)) {
        //    GoogleMobileAds_LoadInterstitial();
        //    alarm[7] = 100;
        //}
    
    // Anuncio tras X tiempo
    //Tiempo_Anuncio++;
    
        if(Tiempo_Anuncio >= Tiempo_Objetivo) {
            if( room = room_Normal or room = room_Inicial ) {
                if( !instance_exists( parent_Enemigo ) ) {
                    //show_message_async(string(GoogleMobileAds_InterstitialStatus()) + " - anuncio listo");
                    if(unity_ads_is_ready_with_placement_id("ingameAd")) {
                        unity_ads_show_with_placement_id("ingameAd");
                    } else {
                        //GoogleMobileAds_ShowInterstitial();
                    }
                    Tiempo_Anuncio = 0;
                    Tiempo_Objetivo = irandom_range(Tiempo_Anuncio_Min,Tiempo_Anuncio_Max);
                    Anuncio = false;
                }
            }
        }
    }
}

/// Cambiar a sprite de parado segun ultima direccion
if(global.Pausado) exit;
if( abs(Velocidad_H) + abs(Velocidad_V) < 0.1 ) {
    Velocidad_H = 0;
    Velocidad_V = 0;
    if( image_Direction = 1 ) sprite_index = spr_Parado_Derecha;
    if( image_Direction = 2 ) sprite_index = spr_Parado_Izquierda;
    if( image_Direction = 3 ) sprite_index = spr_Parado_Arriba;
    if( image_Direction = 4 ) sprite_index = spr_Parado_Abajo;
}

// Count again all items in posession
player_item_count++;
if(player_item_count > player_item_count_max) {
	player_item_195 = player_has_item(195);
	player_item_240 = player_has_item(240);
	player_item_96  = player_has_item(96);
	player_item_69  = player_has_item(69);
	player_item_347 = player_has_item(347);
	player_item_93  = player_has_item(93);
	player_item_7   = player_has_item(7);
	player_item_33  = player_has_item(33);
	player_item_302 = player_has_item(302);
	player_item_240 = player_has_item(240);
	player_item_348 = player_has_item(348);
	player_item_349 = player_has_item(349);
	player_item_334 = player_has_item(334);
	player_item_340 = player_has_item(340);
	player_item_332 = player_has_item(332);
	player_item_331 = player_has_item(331);
	player_item_144 = player_has_item(144);
	player_item_500 = player_has_item(500);
	player_item_501 = player_has_item(501);
	player_item_325 = player_has_item(325);
	player_item_122 = player_has_item(122);
	player_item_12  = player_has_item(12);
	player_item_321 = player_has_item(321);
	player_item_330 = player_has_item(330);
	player_item_298 = player_has_item(298);
	player_item_count = 0;
}

// Manejar image_speed
image_speed = max(0.1, 0.2 * max(abs(Velocidad_H)/Velocidad_H_Max,abs(Velocidad_V)/Velocidad_V_Max));

// Acelerar si está disparando
if(sprite_index == spr_Disparando_Derecha)              image_speed = 0.3;
if(sprite_index == spr_Disparando_Izquierda)            image_speed = 0.3;
if(sprite_index == spr_Disparando_Arriba)               image_speed = 0.3;
if(sprite_index == spr_Disparando_Abajo)                image_speed = 0.3;

// Parpadeo de invisibilidad
if(alarm[3] > 0 and alarm[8] < 0) {
    alarm[8] = 4;
}

// Profundidad
depth = -(y+8);

/// Bonus
if(global.Pausado) exit;

if(challenge_check(11)) and (room != room_Transicion_Jefe) {
    if(!instance_exists(obj_Jugador_Rocket)) spawn_rocket(1);
}

// Manage rage
if(rage > 0)  rage -= 0.05; else rage = 0;
if(rage > 10) rage = 10;

// Bullet Hell
if(!instance_exists(fxTransition2)) and (!instance_exists(fxTransition3)) {
	if(bullet_hell > 0) {
		bullet_hell -= 0.5; 
	} else {
		if(bullet_hell_bullets_total < bullet_hell_bullets) {
			bullet_hell_bullets_total = bullet_hell_bullets;
		}
		bullet_hell = -1;
		bullet_hell_bullets = 0;
	}
}

// Recharge
if((control_Dungeon.player_recharge) or (can_recharge)) and (global.Jugador_Item_Usable != 54) and (global.Jugador_Item_Usable != 300) {
    charge_item(0.05);
}

// Pray
if(Pray) and (!audio_is_playing(sndPray)) {
    with(parent_Enemigo) {
        if(!IsBoss) {
            instance_destroy();
            instance_create(x,y,objBombExplosion);
        }
    }
    Pray = false;
}

// Odd mushroom activa
if(Bonus_Odd_Mushroom == 0) {
    audio_stop_sound(snd_Odd_Mushroom);
    with(parent_Enemigo)                    image_blend = c_white;
    with(obj_Jugador)                       image_blend = c_white;
    Bonus_Odd_Mushroom = -1;
}
if(Bonus_Odd_Mushroom > 0) {
    Bonus_Odd_Mushroom--;
    with(parent_Enemigo) image_blend = make_color_hsv(random(255), 255, 255);
    with(obj_Jugador) image_blend = make_color_hsv(random(255), 255, 255);
    with(parent_Enemigo) {
        if(distance_to_object(obj_Jugador)<1) {
            HP -= 0.5;
            if(HP <= 0) instance_destroy();
            alarm[2] = 2;
        }
    }
}

// Manejar amigos
Friends_R+=1;

// Comprobar si tiene el objeto de bala estatica
if(global.Jugador_Item_Usable == 114) {
    Bonus_Static_Shoot = true;
} else {
    Bonus_Static_Shoot = false;
}

// Shoot Da Whoop efecto
if(global.Jugador_Item_Usable == 124) {
    Laser_Direction = random(360);
}

// Crear bala estatica
if(Bonus_Static_Shoot == true) {
    if(room != room_Transicion_Jefe) and (!instance_exists(obj_Jugador_Disparo_Estatico)) instance_create(x, y, obj_Jugador_Disparo_Estatico);
}

// Crear the finger
if(player_item_500) {
    if(room != room_Transicion_Jefe) and (!instance_exists(obj_Jugador_Disparo_Finger)) instance_create(x, y, obj_Jugador_Disparo_Finger);
}

// Crear the scythe
if(player_item_501) {
    if(room != room_Transicion_Jefe) and (!instance_exists(obj_Jugador_Disparo_Scythe)) instance_create(x, y, obj_Jugador_Disparo_Scythe);
}

// Crear compañeros
if(room != room_Transicion_Jefe) {
    if(Bonus_Friend_Cthulhu == true) and (!instance_exists(obj_Jugador_Friend_Mini_Cthulhu))
        instance_create(x-4+random(8), y-4+random(8), obj_Jugador_Friend_Mini_Cthulhu);    
    if(Bonus_Friend_Blue_Cthulhu == true) and (!instance_exists(obj_Jugador_Friend_Blue_Cthulhu))
        instance_create(x-4+random(8), y-4+random(8), obj_Jugador_Friend_Blue_Cthulhu);    
    if(Bonus_Friend_Green_Cthulhu == true) and (!instance_exists(obj_Jugador_Friend_Green_Cthulhu))
        instance_create(x-4+random(8), y-4+random(8), obj_Jugador_Friend_Green_Cthulhu);    
    if(Bonus_Friend_Yellow_Cthulhu == true) and (!instance_exists(obj_Jugador_Friend_Yellow_Cthulhu))
        instance_create(x-4+random(8), y-4+random(8), obj_Jugador_Friend_Yellow_Cthulhu);  
    if(Bonus_Friend_Gold_Cthulhu == true) and (!instance_exists(obj_Jugador_Friend_Gold_Cthulhu))
        instance_create(x-4+random(8), y-4+random(8), obj_Jugador_Friend_Gold_Cthulhu);           
}

// Deodorant
if(player_item_240) {
    deodorant_counter++;
    if(deodorant_counter > 15) {
        deodorant_counter = 0;
        with(parent_Enemigo) {
            if(distance_to_object(obj_Jugador) < 32) {
                HP--;
                alarm[2] = 10;
                flashColor = c_lime;
                var f = floating_text(x-4+random(8), y-4+random(8), "1", make_color_rgb(20, 255, 20), true);
				f.alarm[0] = 60;
            }
        }
    }
}

/// Fisicas

// Recolocate after random room warp
if(recolocate > -1) recolocate--;
if(recolocate == 0) {
    with(obj_Puerta) {
        if(Direccion == "arriba")    and (image_index != 3) { obj_Jugador.x = 320-8; obj_Jugador.y = 112-18+24; break; }
        if(Direccion == "abajo")     and (image_index != 3) { obj_Jugador.x = 320-8; obj_Jugador.y = 240-4-24; break; }
        if(Direccion == "izquierda") and (image_index != 3) { obj_Jugador.x = 112+58+24; obj_Jugador.y = 184-20; break; }
        if(Direccion == "derecha")   and (image_index != 3) { obj_Jugador.x = 520-64-24; obj_Jugador.y = 184-20; break; }
    }
}

if(global.Pausado) exit;
if(paralisis > 0) { 
    paralisis--; 
    if(paralisis == 0) alarm[3] = 90;
    if(player_has_pet(60)) paralisis--;
    if(paralisis == 0) alarm[3] = 90;
    exit; 
}
if(room = room_Transicion_Jefe) exit;
if(instance_exists(fx_Transition_In)) exit;
if(instance_exists(fxTransition2)) exit;

// Clamp vars
Fuerza = max(Fuerza,1);
Cadencia_Disparo = clamp(Cadencia_Disparo,1,30);

// Run time
runTime++;

// Challenge #17
if(challenge_check(16) and (runTime mod (60*30) == 0)) {
    HP -= 1;
    alarm[3] = 30;
    audio_play_sound(choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03),0,0);
}

// Challenge#02
if(challenge_check(1) and (runTime > 60*60*10)) {
    instance_destroy();
}

// Bombas
if(doubletap >= 0) doubletap--;

// Throw bombs
if(os_type != os_windows) { 
    if(mouse_check_button_pressed(mb_left) and (point_distance(x,y,mouse_x,mouse_y)<20)) {
        if(doubletap < 0) doubletap = 20; else if(bombs > 0) {
            if(global.BombTapMode == 0) {
                doubletap = -1;
                bombs--;
                audio_play_sound(sndBombDrop,0,0);
                instance_create(x, y, objBomb);
            }
        }
    }
}

// Guardar cada minuto
if(global.Control_Autosave) {
    Guardado_Seguridad++;
    if(Guardado_Seguridad > 1800) {
        game_save("temp");
        Guardado_Seguridad = 0;
        instance_create(0, 0, fx_Autoguardado);
    }
}

// Slimeking bonus pet
if(Pet_Bonus_Slimeking) {
    Pet_Bonus_Slimeking_Counter++;
    if(Pet_Bonus_Slimeking_Counter > room_speed*60) {
        Fuerza++;
        Pet_Bonus_Slimeking_Counter = 0;
    }
}

// Tension Relax
if(player_item_195) {
    if(Velocidad_H + Velocidad_V < 0.5) Bonus_TensionRelax_t++; else Bonus_TensionRelax_t = 0;
    if(Bonus_TensionRelax_t > 600) {
        Bonus_TensionRelax_t = 0;
        HP++;
        if(HP > HP_Max) HP = HP_Max;
        control_UI.alarm[1] = 10;
        audio_play_sound( snd_Heal, 0, 0 );
    }
}

// Bullet Hell
if(bullet_hell_bullets_total > 0) {
    bullet_hell_bullets_total--;
	Disparo_Move = -Disparo_Move;
	bullet_hell_bullets = 0;
    if(bullet_hell_direction == 3) event_perform(ev_other, ev_user0);
    if(bullet_hell_direction == 4) event_perform(ev_other, ev_user1);
    if(bullet_hell_direction == 2) event_perform(ev_other, ev_user2);
    if(bullet_hell_direction == 1) event_perform(ev_other, ev_user3);
}

// 100 Punch bonus
if(Bonus_100Punch > 0) {
    Bonus_100Punch--;
    if(image_Direction == 3) event_perform(ev_other, ev_user0);
    if(image_Direction == 4) event_perform(ev_other, ev_user1);
    if(image_Direction == 2) event_perform(ev_other, ev_user2);
    if(image_Direction == 1) event_perform(ev_other, ev_user3);
}

// White Boss Slime bonut pet
if(Pet_Bonus_Boss_WhiteSlime) alarm[11] = 600;
 
// Crear rastro de fuego
if(Bonus_Firewalker > 1) {
    Bonus_Firewalker--;
    if(Bonus_Firewalker mod 10 == 0) instance_create(x, y, obj_Jugador_Disparo_Fuego);
}
               
                
var Moverse = true;
if(instance_exists(fx_Game_End)) Moverse = false;

var player_has_explorer_belt = player_item_96;
var player_has_crabslime_pet = 1+player_has_pet(77);
if(Moverse) and (os_type != os_android) {
    if(keyboard_check(tecla_Izquierda)) { Velocidad_H -= Aceleracion_H * (1.5*player_has_crabslime_pet) * (1+((!instance_exists(parent_Enemigo))*.5*player_has_explorer_belt)); }
    if(keyboard_check(tecla_Derecha))   { Velocidad_H += Aceleracion_H * (1.5*player_has_crabslime_pet) * (1+((!instance_exists(parent_Enemigo))*.5*player_has_explorer_belt)); }
    if(keyboard_check(tecla_Arriba))    { Velocidad_V -= Aceleracion_V * (1+((!instance_exists(parent_Enemigo))*.5*player_has_explorer_belt)); }
    if(keyboard_check(tecla_Abajo))     { Velocidad_V += Aceleracion_V * (1+((!instance_exists(parent_Enemigo))*.5*player_has_explorer_belt)); }
}

// Clamp
Velocidad_H = clamp(Velocidad_H, -Velocidad_H_Max * (1+((!instance_exists(parent_Enemigo))*.5*player_has_explorer_belt)), Velocidad_H_Max * (1+((!instance_exists(parent_Enemigo))*.5*player_has_explorer_belt)));
Velocidad_V = clamp(Velocidad_V, -Velocidad_V_Max * (1+((!instance_exists(parent_Enemigo))*.5*player_has_explorer_belt)), Velocidad_V_Max * (1+((!instance_exists(parent_Enemigo))*.5*player_has_explorer_belt)));

// Atractores
var Atractor_H = 0;
var Atractor_V = 0;
if(instance_exists(obj_Atractor)) {
    var Atractor = instance_nearest(x,y,obj_Atractor);
    if(distance_to_object(Atractor) < 100) {
        var Atractor_D = point_direction(x,y,Atractor.x,Atractor.y);
        Atractor_H += 0.35 * cos(degtorad(Atractor_D));
        Atractor_V -= 0.35 * sin(degtorad(Atractor_D));
    }
}
if(instance_exists(obj_FloatingSkull)) {
    with(obj_FloatingSkull) {
		if(real(ID) == 58) {
		    var Atractor_D = point_direction(other.x,other.y,x,y);
		    Atractor_H += 0.35 * cos(degtorad(Atractor_D));
		    Atractor_V -= 0.35 * sin(degtorad(Atractor_D));
		}
	}
}

// Aplicar velocidades
if(Bonus_HoverBoots == true) with(obj_Void) solid = false;

// Deactivate blocks when flying
if(Flying == true) {
    with(obj_Void)       solid = false;
    with(obj_Bloqueador) solid = false;
    with(obj_Rocas)      solid = false;
    with(obj_Skeletons)  solid = false;
    with(obj_Vasija)     solid = false;
    with(obj_Antorcha)   solid = false;
    with(obj_Agua)       solid = false;
    with(obj_Bloqueador_Activado_Rojo)   solid = false;
    with(obj_Bloqueador_Activado_Azul)   solid = false;
    with(objSkullFlame)   solid = false;
    with(obj_Bloqueador_Laser)   solid = false;
}

// Euphoria
if(player_item_347) {
	Velocidad_H += random_range(-.4,.4);
	Velocidad_V += random_range(-.4,.4);	
}

var Frenar_H = false;
var Frenar_V = false;
if(place_free(x + Velocidad_H + Atractor_H + sign(Velocidad_H)*0, y)) { x += Velocidad_H + Atractor_H } else Frenar_H = true;
if(place_free(x, y + Velocidad_V + Atractor_V + sign(Velocidad_V)*0)) { y += Velocidad_V + Atractor_V } else Frenar_V = true;
if(Bonus_HoverBoots == true) with(obj_Void) solid = true;

// Reactivate blocks when flying
if(Flying == true) {
    with(obj_Void)       solid = true;
    with(obj_Bloqueador) solid = true;
    with(obj_Rocas)      solid = true;
    with(obj_Skeletons)  solid = true;
    with(obj_Vasija)     solid = true;
    with(obj_Antorcha)   solid = true;
    with(obj_Agua)       solid = true;
    with(obj_Bloqueador_Activado_Rojo)   solid = true;
    with(obj_Bloqueador_Activado_Azul)   solid = true;
    with(objSkullFlame)   solid = true;
    with(obj_Bloqueador_Laser)   solid = true;
}

// Rebotador
if(instance_exists(obj_Rebotador)) {
    if(place_meeting(x + Velocidad_H + Atractor_H + sign(Velocidad_H)*2,y + Velocidad_V + Atractor_V + sign(Velocidad_V)*2,obj_Rebotador)) {
        hspeed = Velocidad_H;
        vspeed = Velocidad_V;
        move_bounce_solid(true);
        Velocidad_H = hspeed;
        Velocidad_V = vspeed;
        hspeed = 0;
        vspeed = 0;
        Frenar_H = false;
        Frenar_V = false;
    }
}

// Frenar
if( Frenar_H ) Velocidad_H = 0;
if( Frenar_V ) Velocidad_V = 0;

// Fuerza de rozamiento
var Rozamiento = Fuerza_Rozamiento;
if(instance_exists(obj_Hielo) and (distance_to_object(instance_nearest(x,y,obj_Hielo))<10) and (Flying == false) and (player_has_pet(76) == false) and (player_item_69 == false)) Rozamiento = 0.98;
if( !keyboard_check( tecla_Izquierda ) and !keyboard_check( tecla_Derecha ) ) Velocidad_H *= Rozamiento;
if( !keyboard_check( tecla_Arriba )    and !keyboard_check( tecla_Abajo ) )   Velocidad_V *= Rozamiento;

// Control de sprites
// On Floor
if(!Flying) {
    if(abs(Velocidad_H) > abs(Velocidad_V)) {
        if( Velocidad_H > 0 ) { sprite_index = spr_Corriendo_Derecha;   image_Direction = 1; }
        if( Velocidad_H < 0 ) { sprite_index = spr_Corriendo_Izquierda; image_Direction = 2; }
    }
    if(abs(Velocidad_V) >= abs(Velocidad_H)) {
        if( Velocidad_V < 0 ) { sprite_index = spr_Corriendo_Arriba; image_Direction = 3; }
        if( Velocidad_V > 0 ) { sprite_index = spr_Corriendo_Abajo;  image_Direction = 4; }
    }
} else {
// On flying
    if(abs(Velocidad_H) > abs(Velocidad_V)) {
        if( Velocidad_H > 0 ) { sprite_index = spr_Parado_Derecha;   image_Direction = 1; }
        if( Velocidad_H < 0 ) { sprite_index = spr_Parado_Izquierda; image_Direction = 2; }
    }
    if(abs(Velocidad_V) >= abs(Velocidad_H)) {
        if( Velocidad_V < 0 ) { sprite_index = spr_Parado_Arriba; image_Direction = 3; }
        if( Velocidad_V > 0 ) { sprite_index = spr_Parado_Abajo;  image_Direction = 4; }
    }
}

// Ajustar image_Direction segun tecla de disparo
if(global.characterSelected != 10) and (!instance_exists(obj_Jugador_Disparo_Estatico)) {
    if(keyboard_check(tecla_Disparo_Derecha))   image_Direction = 1;
    if(keyboard_check(tecla_Disparo_Izquierda)) image_Direction = 2;
    if(keyboard_check(tecla_Disparo_Arriba))    image_Direction = 3;
    if(keyboard_check(tecla_Disparo_Abajo))     image_Direction = 4;
}

// Use item (gamePad)
if(global.gamepadEnabled) {
    var gp_num = gamepad_get_device_count();
    for(var i = 0; i < gp_num; i++;) {
        if(gamepad_is_connected(i)) {
            if(gamepad_button_check_pressed(i, global.GP_USE_ITEM)) {
                event_perform(ev_keypress, vk_space);
            }
        }
    }
}


/// Disparar
if( global.Pausado ) exit;
if( room = room_Transicion_Jefe ) exit;
if( instance_exists(fx_Transition_In) ) exit;

if( alarm[4] > 0 ) exit;
if( !instance_exists( fx_Transition_In ) and !instance_exists( fx_Transition_Room ) ) {
    if( alarm[0] < 0 ) {
    
        if( keyboard_check( tecla_Disparo_Arriba ) ) and (os_type != os_android)    { 
            var Event = ev_user0;
            if(player_item_93) Event = choose(ev_user0,ev_user1,ev_user2,ev_user3);
            event_perform( ev_other, Event ); 
            if(player_item_7) or (player_has_pet(63) and chance(10)) { event_perform( ev_other, ev_user1 ); } 
            if(player_item_33) {
                event_perform( ev_other, ev_user1 );
                event_perform( ev_other, ev_user3 );
                event_perform( ev_other, ev_user2 );
            }
            exit; 
        }
        
        if( keyboard_check( tecla_Disparo_Abajo ) ) and (os_type != os_android)     { 
            var Event = ev_user1;
            if(player_item_93) Event = choose(ev_user0,ev_user1,ev_user2,ev_user3);
            event_perform( ev_other, Event ); 
            if(player_item_7) or (player_has_pet(63) and chance(10)) { event_perform( ev_other, ev_user0 ); } 
            if(player_item_33) {
                event_perform( ev_other, ev_user0 );
                event_perform( ev_other, ev_user3 );
                event_perform( ev_other, ev_user2 );
            }
            exit; 
        }
        
        if( keyboard_check( tecla_Disparo_Izquierda ) ) and (os_type != os_android) { 
            var Event = ev_user2;
            if(player_item_93) Event = choose(ev_user0,ev_user1,ev_user2,ev_user3);
            event_perform( ev_other, Event ); 
            if(player_item_7) or (player_has_pet(63) and chance(10)) { event_perform( ev_other, ev_user3 ); } 
            if(player_item_33) {
                event_perform( ev_other, ev_user0 );
                event_perform( ev_other, ev_user1 );
                event_perform( ev_other, ev_user3 );
            }
            exit; 
        }
        
        if( keyboard_check( tecla_Disparo_Derecha ) ) and (os_type != os_android)   { 
            var Event = ev_user3;
            if(player_item_93) Event = choose(ev_user0,ev_user1,ev_user2,ev_user3);
            event_perform( ev_other, Event ); 
            if(player_item_7) or (player_has_pet(63) and chance(10)) { event_perform( ev_other, ev_user2 ); } 
            if(player_item_33) {
                event_perform( ev_other, ev_user0 );
                event_perform( ev_other, ev_user2 );
                event_perform( ev_other, ev_user1 );
            }
            exit; 
        }
       
    } 
}

/// Morir
if(global.Pausado) exit;
HP = max(0,HP);
if(HP <= 0) and (HP + HP_Extra_S <= 0) {
    if(Lives > 0) or (player_has_pet(89) and chance(10)) { 
        Lives--;
        repeat(4){
            var v = 8;
            var xx = x+random_range(-v, v);
            var yy = y+random_range(-v, v);
            var a = random_range(0.1, 0.4);
            create_effect(xx, yy, choose(sprSmoke, sprSmokeSmall), a);
        }
        create_effect(x, y, sprMagicEffect2, 0.4);
        HP = HP_Max;
        audio_play_sound(snd_Lazaro,0,0);
        alarm[3] = 120;
        
        // Check if you unlockd Maiyan
        if(!check_character_unlocked(5,0)) unlock_character(5);
        
        exit;
    } else {
        instance_destroy();
    }
}

/// Mantener alarmas en pausa
if( global.Pausado ) {
    for( i = 0; i < 11; i++ ) {
        if(alarm[i-1]>0) alarm[i-1]++;
    }
}

