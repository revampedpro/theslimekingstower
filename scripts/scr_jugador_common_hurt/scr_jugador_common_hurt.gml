/// @description scr_jugador_common_hurt(fuerza)
/// @function scr_jugador_common_hurt
/// @param fuerza
function scr_jugador_common_hurt() {
	// Script de daño general para el jugador

	// Vars
	var _other = other;
	if(argument_count > 1) _other = argument[1];

	if(global.Pausado) exit;
	if(argument[0] == 0) exit;
	if(alarm[3] < 0) {
	    alarm[3] = Delay_Invencibilidad;
	
		// Tell your partner that you were hit
		if(network_is_online()) and (global.NETWORK_HOST == true) {
			pack_quick("hitByMonsterFX");	
		}
    
	    event_perform(ev_other,ev_user9);
	    flash(10,c_red);
    
	    // The Gang bonus
	    if(player_has_pet(49)) and (chance(10)) and (!instance_exists(objPlayerClone)) {
	        var sk_clone = instance_create(x,y,objPlayerClone);
	        sk_clone.right = true;
	        var sk_clone = instance_create(x,y,objPlayerClone);
	        sk_clone.right = false;
	    }
    
	    // Bonus de boton de panico
	    if(player_has_item(130) and global.Jugador_Item_Usable != -1 and obj_Jugador.Cargas > (obj_Jugador.Cargas_Max/2)) {
	        obj_Jugador.Show_Item_ID = global.Jugador_Item_Usable;
	        obj_Jugador.alarm[4] = get_skill( global.Jugador_Item_Usable, 2 );
	        if(global.Jugador_Item_Usable == 229) obj_Jugador.Cargas = 0;
	    }
    
	    // Lucky Rockets
	    if(player_has_item(248)) {
	        spawn_rocket(2);
	    }
		
		// Drop dummy
		if(player_has_pet(93) and chance(10)) instance_create(x,y,obj_Dummy);
    
		// Activate friends
	    if(player_has_item(146)) {
	        if(!instance_exists(obj_Jugador_Friend_Mini_Cthulhu))   instance_create(x, y, obj_Jugador_Friend_Mini_Cthulhu);
	        if(!instance_exists(obj_Jugador_Friend_Blue_Cthulhu))   instance_create(x, y, obj_Jugador_Friend_Blue_Cthulhu);
	        if(!instance_exists(obj_Jugador_Friend_Green_Cthulhu))  instance_create(x, y, obj_Jugador_Friend_Green_Cthulhu);
	        if(!instance_exists(obj_Jugador_Friend_Yellow_Cthulhu)) instance_create(x, y, obj_Jugador_Friend_Yellow_Cthulhu);
	    }
    
		// Get off me bonus
	    if(player_has_item(173)) {
	        with(parent_Enemigo) {
	            if(object_get_parent(object_index) != parent_Jefe and object_index != obj_Conejo and object_index != obj_StompSlime) {
	            var D = point_direction(obj_Jugador.x,obj_Jugador.y,x,y);
	            hspeed =  cos(degtorad(D)) * 8;
	            vspeed = -sin(degtorad(D)) * 8;
	            }
	        }
	    }
    
		// Triptocaine
	    if(player_has_item(169) and chance(10)) {
	        Bonus_Odd_Mushroom = 760;
	        alarm[3] = 760;
	        audio_stop_sound(snd_Odd_Mushroom);
	        audio_play_sound(snd_Odd_Mushroom, 0, 0);
	    }
    
		// Firewalker, leave fire behind
	    if(Bonus_Firewalker >= 1) {
	        Bonus_Firewalker = 200;
	    }
    
		// Freezing Contact
	    if(player_has_item(28)) {
	        _other.alarm[11] = 120;
	    }
    
		// Poison Touch
	    if(player_has_item(79)) {
	        _other.Envenenado = 3; 
	        _other.image_blend = c_lime; 
	        _other.alarm[10] = 60;
	    }
    
	    // Avoid damage pet bonus
	    if(Pet_Bonus_Bat)        and (chance(5))  { var FX = create_effect(x, y, sprMagicShield, 1.50); FX.depth = depth-10; FX.image_xscale = 1.5; FX.image_yscale = 1.5; exit; }    
	    if(Pet_Bonus_SkullSlime) and (chance(10)) { var FX = create_effect(x, y, sprMagicShield, 1.50); FX.depth = depth-10; FX.image_xscale = 1.5; FX.image_yscale = 1.5; exit; }
	    if(Pet_Bonus_Hardmahawk) and (chance(20)) { var FX = create_effect(x, y, sprMagicShield, 1.50); FX.depth = depth-10; FX.image_xscale = 1.5; FX.image_yscale = 1.5; exit; }    
    
	    if(Pet_Bonus_Mitosis)       and (chance(10)) instance_create(x, y, obj_Dummy);
	    if(Pet_Bonus_Boss_MadSlime) and (chance(25)) instance_create(x, y, obj_Dummy);
    
	    if(!Bonus_Phantom_Shield_Activo) {
    
	        if(Bonus_Magic_Shield < 2) {
	            alarm[2] = 10;
	            if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
	                HP -= argument[0];
	            } else {
	                HP_Extra_Q[HP_Extra_S]-=argument[0];
	                if(HP_Extra_Q[HP_Extra_S] <= 0) {
	                    special_heart_used(HP_Extra[HP_Extra_S]);
	                    HP_Extra[HP_Extra_S] = -1;
	                    HP_Extra_S--
	                }
	            }
				var player_has_iron_boots = player_has_item(35);
	            if(_other.x < x) Velocidad_H =  2*(1-player_has_iron_boots) * (Pet_Bonus_ChainSlime == false);
	            if(_other.x > x) Velocidad_H = -2*(1-player_has_iron_boots) * (Pet_Bonus_ChainSlime == false);
	            if(_other.y < y) Velocidad_V =  2*(1-player_has_iron_boots) * (Pet_Bonus_ChainSlime == false);
	            if(_other.y > y) Velocidad_V = -2*(1-player_has_iron_boots) * (Pet_Bonus_ChainSlime == false);
	            audio_play_sound(choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03),0,0);
    
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



}
