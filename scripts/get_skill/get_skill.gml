/// @description get_skill(id,type,[player])
/// @function get_skill
/// @param id
/// @param type
/// @param [player]
function get_skill() {

	// Variables
	var player = obj_Jugador;
	var performed_by_host = true;
	var Cast_Time = 30;

	// Random
	if(argument[0] == -1)  { argument[0] = choose(choose(22,25,27,31,32,38,43,47),choose(56,63,71,72,73,74,75,76,77,80,83)); }

	// Hocus Pocus
	if(argument[0] == 110) { argument[0] = choose(choose(22,25,27,31,32,38,43,47),choose(56,63,71,72,73,74,75,76,77,80,83), choose(89,97,104,105,106,108)); }

	// Delete item if it is one use only
	if(get_item(argument[0],13)) { global.Jugador_Item_Usable = -1; player_lose_item(argument[0]); charge_item(9999); }

	// Check if the item has been used by your online player
	if(network_is_online()) {
		if(global.NETWORK_HOST == false) performed_by_host = false;
	}

	// Check which player is performing the action
	if(argument_count > 2) and (network_is_online()) {
		player = argument[2];
	}

	// Play sound
	audio_stop_sound(sndUseItem);
	audio_play_sound(sndUseItem,0,0);

	// Ejecuta una skill o devuelve informacion
	switch(argument[0]) {

	    case 22: // Necroscroll
	        Cast_Time = 30;
	            with(parent_Enemigo) {
	                HP-=10;
	                alarm[2] = 4;
	                var f = floating_text(x,y,"10",c_red,true);
					f.alarm[0] = 60;
	            }
	        break;
        
	    case 25: // Refillable Potion
	        Cast_Time = 30;
	        obj_Jugador.HP = min(obj_Jugador.HP_Max,obj_Jugador.HP+2);
	        audio_play_sound(snd_Heal,1,0);
	        break;
        
	    case 27: // Time Stop Watch
	        Cast_Time = 30;
	        with(parent_Enemigo) alarm[11] = 200;
	        break;
        
	    case 31: // Scroll Of Substitution
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;

	        if(instance_exists(parent_Enemigo)) {
	            if(check_room("centro") != 3) {
	                for( n = 0; n < instance_number(parent_Enemigo); n++ ) {
	                    ID[n] = irandom(get_enemy(-1,18)); 
	                    var Ins = instance_find(parent_Enemigo,n);
	                    ID_X[n] = Ins.x;
	                    ID_Y[n] = Ins.y;
	                }
                
	                with(parent_Enemigo) { 
	                    if(!IsBoss) instance_destroy();
	                }
                
	                for( n = 0; n < array_length_1d(ID); n++ ) {
	                    var Enemy = instance_create(ID_X[n],ID_Y[n],get_enemy(ID[n],0));
	                    Enemy.ID = ID[n];
	                    with(Enemy)event_perform( ev_other, ev_user15 );
	                    if( collision_line( Enemy.x, Enemy.y, obj_Jugador.x, obj_Jugador.y, parent_Solid, 0, 1 ) ) with(Enemy){instance_destroy();}
	                }
	            }
	        }
        
	        break;
        
	    case 32: // The D6
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
        
	            if(instance_exists(obj_Cofre_Tesoro)) { if(obj_Cofre_Tesoro.ID != -1) obj_Cofre_Tesoro.ID = get_random_item_from_pool("treasure"); }
	            if(instance_exists(obj_Boss_Chest))   { if(obj_Boss_Chest.ID != -1)   obj_Boss_Chest.ID   = get_random_item_from_pool("boss"); }
	            if(instance_exists(obj_Cofre_Arcade)) { if(obj_Cofre_Arcade.ID != -1) obj_Cofre_Arcade.ID = get_random_item_from_pool("arcade"); }
            
	            for( t = 0; t < instance_number(obj_Cofre_Tienda); t++ ) {
	                var Tienda = instance_find(obj_Cofre_Tienda, t);
	                if(Tienda.ID != -1) Tienda.ID = get_random_item_from_pool("treasure");
	            }
            
	            for( t = 0; t < instance_number(obj_Cofre_Health); t++ ) {
	                var Tienda = instance_find(obj_Cofre_Health, t);
	                if(Tienda.ID != -1) Tienda.ID = get_random_item_from_pool("treasure");
	            }
            
	        break;
        
	    case 38: // The Drums
	        Cast_Time = 30;
        
	            with(parent_Enemigo) {
	                if(object_get_parent(object_index) != parent_Jefe and object_index != obj_Conejo and object_index != obj_StompSlime) {
						var target = obj_Jugador;
					
						// Find the closer target in online
						if(network_is_online()) {
							var target_distance_me = point_distance(obj_Jugador.x,obj_Jugador.y,x,y);
							var target_distance_partner = point_distance(obj_Jugador_Networking.x,obj_Jugador_Networking.y,x,y);
							if(target_distance_me < target_distance_partner) {
								target = obj_Jugador;	
							} else {
								target = obj_Jugador_Networking;	
							}
						}
					
	                    var D = point_direction(target.x,target.y,x,y);
	                    hspeed =  cos(degtorad(D)) * 8;
	                    vspeed = -sin(degtorad(D)) * 8;
	                }
	            }
            
	        break;
        
	    case 43: // Lockpick
	        Cast_Time = 30;
	        with(obj_Puerta) {
	            if(image_index == 1) {
	                xscale = 1.3;
	                yscale = 1.3;
	                image_index = 2;
	                audio_play_sound(snd_Puerta_Abrir,1,0);
	            }
	        }
	        break;
        
	    case 47: // Fire Staff
	        Cast_Time = 30;
	        repeat(10) {
	            instance_create(player.x-40+random(80),player.y-40+random(80),obj_Jugador_Disparo_Fuego);
	        }
	        break;
        
	    case 54: // Angel Wing
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        if(global.Mapa_Tipo != 12 and global.Modo_Juego != "Arcade") dungeon_next_level();
	        break;
        
	    case 56: // Gold Pickaxe
	        Cast_Time = 30;
	        if(instance_exists(obj_Pinchos))   { with( obj_Pinchos )	instance_destroy(); }
	        if(instance_exists(obj_Rocas))     { with( obj_Rocas )		instance_destroy(); }
	        if(instance_exists(obj_Skeletons)) { with( obj_Skeletons )	instance_destroy(); }
	        break;
        
	    case 63: // Dummy
	        Cast_Time = 30;
	        instance_create(player.x,player.y,obj_Dummy);
	        break;

	    case 71: // Holy Bible
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	            with(parent_Enemigo) {
	                if(!IsBoss) {
	                    HP-=9999;
	                    alarm[2] = 4;
	                }
	            }
	            if(obj_Jugador.HP <= 0) instance_destroy();
	            obj_Jugador.HP-=2;
	        break;

	    case 72: // War Book
	        Cast_Time = 30;
	            obj_Jugador.temp_Fuerza += 2;
	        break;

	    case 73: // Friendship Book
	        Cast_Time = 30;
	            var friendID = choose(66,67,68,70);
	            obj_Jugador.FriendsSPR[array_length_1d(obj_Jugador.Friends)] = get_item(friendID,3);
	            obj_Jugador.Friends[array_length_1d(obj_Jugador.Friends)] = friendID;
	        break;

	    case 74: // ASPD Book
	        Cast_Time = 30;
	            obj_Jugador.temp_Cadencia_Disparo += 5;
	        break;

	    case 75: // Assault Book
	        Cast_Time = 30;
	            obj_Jugador.alarm[5] = 1;
	            obj_Jugador.Rafaga = 10;
	        break;

	    case 76: // The Magician
	        Cast_Time = 30;
	            for( i = 0; i < 999; i++ ) {
	                var X = irandom_range(168,432);
	                var Y = irandom_range(96,216);
	                if(place_free(X,Y) and distance_to_object(instance_nearest(X,Y,parent_Enemigo))>16) {
	                    player.x = X;
	                    player.y = Y;
	                    break;
	                }
	            }
	        break;

	    case 77: // Strike
	        Cast_Time = 15;
	            player.temp_Strike = true;
	        break;

	    case 80: // Thief Hand
	        Cast_Time = 30;
	            if(instance_exists(obj_Cofre_Tienda)) { with(obj_Cofre_Tienda) { Free = 1; } }
	            if(instance_exists(obj_Cofre_Pickup)) { with(obj_Cofre_Pickup) { Free = 1; } }
	        break;
        
	    case 83: // Chest Filler
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
        
	            if( instance_exists( obj_Cofre_Tesoro ) ) {
	                if( obj_Cofre_Tesoro.ID = -1 ) obj_Cofre_Tesoro.ID = irandom(count_items());
	            }
            
	            for( t = 0; t < instance_number(obj_Cofre_Tienda); t++ ) {
	                var Tienda = instance_find(obj_Cofre_Tienda, t);
	                if(Tienda.ID = -1) Tienda.ID = irandom(count_items());
	            }
        
	        break;
        
	    case 89: // Illumineye
	        Cast_Time = 30;
	            f_dir = 0;
	            repeat(8) {
	                f_fire = instance_create(player.x+16*cos(degtorad(f_dir)),player.y-16*sin(degtorad(f_dir)),obj_Jugador_Disparo_Fuego);
	                f_fire.hspeed = 2;
	                f_fire.vspeed = 2;
	                f_fire.dir = f_dir;
	                f_dir += 360/8;
	                f_fire.Indestructible = true;
	            }
	        break;
        
	    case 97: // Fire Pilar
	        Cast_Time = 30;
	            f_dir = 1;
	            repeat(4) {
            
	                f_fire = instance_create(player.x+(f_dir*24), player.y, obj_Jugador_Disparo_Fuego);
	                f_fire.Indestructible = true;
	                f_fire = instance_create(player.x-(f_dir*24), player.y, obj_Jugador_Disparo_Fuego);
	                f_fire.Indestructible = true;
	                f_fire = instance_create(player.x, player.y+(f_dir*24), obj_Jugador_Disparo_Fuego);
	                f_fire.Indestructible = true;
	                f_fire = instance_create(player.x, player.y-(f_dir*24), obj_Jugador_Disparo_Fuego);
	                f_fire.Indestructible = true;
	                f_dir++;
                
	            }
	        break;
        
	    case 104: // Grind Book
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	            repeat(8) {
	                    var Enemigo = instance_create(player.x+12, player.y+12, obj_Skeleton);                
	                    Enemigo.ID = 0;
	                    Enemigo.xscale = 0.25;
	                    Enemigo.yscale = 0.25;
	                    with(Enemigo) event_perform( ev_other, ev_user15 );
	            }
	        break;
        
	    case 105: // Life Pact
	        Cast_Time = 30;
	            obj_Jugador.HP_Max-=2;
	            obj_Jugador.HP-=2;
	            obj_Jugador.Fuerza+=2;
	        break;
        
	    case 106: // Pure Love
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	            repeat(10) {
	                instance_create(player.x, player.y, obj_Salud);   
	            }
	        break;
        
	    case 108: // Slime Hater
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	            with(parent_Enemigo) {
	                if(!IsBoss) {
	                    instance_destroy();
	                }
	            }
	        break;
        
	    case 112: // Vasijetiro
	        Cast_Time = 30;
	            instance_create(player.x+26-12, player.y-12,	obj_Vasija);
	            instance_create(player.x-26-12, player.y-12,	obj_Vasija);
	            instance_create(player.x-12,	player.y+26-12, obj_Vasija);
	            instance_create(player.x-12,	player.y-26-12, obj_Vasija);
	        break;    
        
	    case 114: // Orbit Shot
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	            with(obj_Jugador_Disparo_Estatico) {
	                Expandir = true;
	            }
	        break;      
        
	    case 118: // Vortex Totem
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	            instance_create(player.x, player.y, obj_Jugador_Totem_Vortex);
	        break;      
        
	    case 121: // Gravity Bullets Caster
	        Cast_Time = 30;
	        with(parent_Enemigo) {
	            repeat(5) {
	                Friends[array_length_1d(Friends)] = choose(66);
	            }
	        }
	        break; 
        
	    case 124: // Shoot Da Whoop
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 100;
	        player.alarm[9] = 120;
	        var lazer = bullet_spawn(player.x,player.y,0,0,0,obj_Jugador_Disparo_Laser);
			lazer.Parent = player;
	        break;
        
	    case 125: // Dwarf Army
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 120;
	        player.alarm[10] = 1;
	        player.Cantidad_Disparos = 6;
	        break;
        
	    case 131: // Immortal Device
	        Cast_Time = 60;
	        obj_Jugador.alarm[3] = 300;
	        player.alarm[3] = 300;
	        break;
        
	    case 135: // Chaos Zone
	        Cast_Time = 60;
	        instance_create(x, y, obj_Jugador_Chaos_Zone);
	        break;
        
	    case 136: // Odd Mushroom
	        Cast_Time = 760;
	        Bonus_Odd_Mushroom = 760;
	        alarm[3] = 760;
	        audio_stop_sound(snd_Odd_Mushroom);
	        audio_play_sound(snd_Odd_Mushroom, 0, 0);
	        break;
        
	    case 138: // Mono Cell
	        Cast_Time = 60;
	        with(parent_Enemigo) {
	            if(!IsBoss) {
	                instance_create(x-12, y-12, obj_Vasija);
	                instance_destroy();
	            }
	        }
	        break;
        
	    case 140: // Barrier Destroyer
	        Cast_Time = 60;
	        with(obj_Bloqueador) {
	            instance_destroy();
	        }
	        break;
        
	    case 141: // Bombs
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 60;
	        instance_create(player.x, player.y, objBomb);
	        break;
        
	    case 142: // Bomb rain
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 60;
	        repeat(10) {
	            instance_create(room_width/2-125+random(250),room_height/2-10-50+random(100),objBomb);
	        }
	        break;
        
	    case 143: // 4 Bombs
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 60;
	        var bomb = instance_create(player.x, player.y, objBomb);
	        bomb.hSpeed = 6;
	        var bomb = instance_create(player.x, player.y, objBomb);
	        bomb.hSpeed = -6;
	        var bomb = instance_create(player.x, player.y, objBomb);
	        bomb.vSpeed = 6;
	        var bomb = instance_create(player.x, player.y, objBomb);
	        bomb.vSpeed = -6;
	        break;
        
	    case 149: // Curiosity Cat
	        Cast_Time = 30;
	        if(global.Mapa_Tipo == 12) and (global.characterSelected == 8) and (instance_exists(objSlimekingCrown)) {
	            objSlimekingCrown.sprite_index = sprSlimekingDarkCrown;
	        }
	        if(alarm[3] < 0) {
	            alarm[3] = Delay_Invencibilidad;
	            event_perform(ev_other,ev_user9);
	            if( !Bonus_Phantom_Shield_Activo ) {
	                if(Bonus_Magic_Shield < 2) {
	                    alarm[2] = 10;
	                    HP -= 1;
						var player_has_iron_boots = player_has_item(35);
	                    if(other.x < x) Velocidad_H = 2*(1-player_has_iron_boots);
	                    if(other.x > x) Velocidad_H = -2*(1-player_has_iron_boots);
	                    if(other.y < y) Velocidad_V = 2*(1-player_has_iron_boots);
	                    if(other.y > y) Velocidad_V = -2*(1-player_has_iron_boots);
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
	        Cargas = Cargas_Max;
	        break; 
        
	    case 154: // Chaaarge!!
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 60;
	        var Summoning = instance_create(player.x-24, player.y, get_enemy(2, 0)); Summoning.ID = 2; with(Summoning) event_perform(ev_other, ev_user15);
	        var Summoning = instance_create(player.x+24, player.y, get_enemy(2, 0)); Summoning.ID = 2; with(Summoning) event_perform(ev_other, ev_user15);
	        var Summoning = instance_create(player.x, player.y-24, get_enemy(2, 0)); Summoning.ID = 2; with(Summoning) event_perform(ev_other, ev_user15);
	        var Summoning = instance_create(player.x, player.y+24, get_enemy(2, 0)); Summoning.ID = 2; with(Summoning) event_perform(ev_other, ev_user15);
	        obj_Jugador.Fuerza_Temporal += 2;
	        break;
        
	    case 158: // Pickpocketing
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 60;
	        with(parent_Enemigo) {
	            instance_create(x, y, obj_Moneda);
	        }
	        break;
        
	    case 163: // Portable Shop
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 1;
	        if(global.Jugador_Monedas >= 10) {
	            Cast_Time = 60;
	            global.Jugador_Monedas -= 10;
	            var ID = irandom(global.Numero_De_Items-1);
	            if(get_item(ID,6) == false) {
	                obj_Jugador.Show_Item_ID = ID;
	                create_map_text(room_width/2,-10,get_item( ID, 2 ),get_item( ID, 4 ));
	                get_item(ID,0);
	                control_Dungeon.Jugador_Items[array_length_1d(control_Dungeon.Jugador_Items)] = ID;
	            } else {
	                if(obj_Jugador.Cargas > get_item(ID,7)) { obj_Jugador.Cargas = get_item(ID,7); }
	                obj_Jugador.Cargas_Max = get_item(ID,7);
	                obj_Jugador.Show_Item_ID = ID;
	                create_map_text(room_width/2,-10,get_item( ID, 2 ),get_item( ID, 4 ));
	                control_Dungeon.Jugador_Items[array_length_1d(control_Dungeon.Jugador_Items)] = ID;
	                global.Jugador_Item_Usable = ID;
	            }
	        }
	        break;
        
	    case 164: // Portable Health Shop
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 60;
	        obj_Jugador.HP_Max -= 2;
	        obj_Jugador.HP -= 2;
	        var ID = irandom(global.Numero_De_Items-1);
	        if( get_item( ID, 6 ) == false ) {
	            obj_Jugador.Show_Item_ID = ID;
	            create_map_text(room_width/2,-10,get_item( ID, 2 ),get_item( ID, 4 ));
	            get_item( ID, 0 );
	            control_Dungeon.Jugador_Items[array_length_1d(control_Dungeon.Jugador_Items)] = ID;
	        } else {
	            if( obj_Jugador.Cargas > get_item( ID, 7 ) ) { obj_Jugador.Cargas = get_item( ID, 7 ); }
	            obj_Jugador.Cargas_Max = get_item( ID, 7 );
	            obj_Jugador.Show_Item_ID = ID;
	            create_map_text(room_width/2,-10,get_item( ID, 2 ),get_item( ID, 4 ));
	            control_Dungeon.Jugador_Items[array_length_1d(control_Dungeon.Jugador_Items)] = ID;
	            global.Jugador_Item_Usable = ID;
	        }
	        break;
        
	    case 165: // Hard Earned Money
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 60;
	        obj_Jugador.HP -= 2;
	        repeat(3) {
	            var mm = instance_create(player.x,player.y,obj_Moneda);
	            mm.hspeed = -1 + random(2);
	            mm.vspeed = -1 + random(2);
	        }
	        break;
        
	    case 166: // Portable Sacriffice
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 60;
	        obj_Jugador.Bonus_Sacrificio--;
	        obj_Jugador.HP--;
	        if(obj_Jugador.Bonus_Sacrificio = 0) {
	            obj_Jugador.Bonus_Sacrificio = 4;
	            obj_Jugador.HP_Max += 2;
	            create_map_text(room_width/2,-10,"HP+","Your sacrifice has been heard");
	        }
	        break;
        
	    case 168: // Expensive Shield
	        Cast_Time = 1;
	        if(global.Jugador_Monedas >= 5) {
	            Cast_Time = 60;
	            global.Jugador_Monedas -= 5;
	            obj_Jugador.Bonus_Phantom_Shield_Activo = true;
	        }
	        break;
        
	    case 171: // Change Me Up
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        change_build();
	        break;
        
	    case 176: // Ice Block
	        Cast_Time = 30;
	        with(parent_Enemigo) alarm[11] = 120;
	        break;
        
	    case 183: // Hover Boots
	        Cast_Time = 30;
	        obj_Jugador.Bonus_HoverBoots = true;
	        break;
        
	    case 186: // Bomb Mask
	        Cast_Time = 30;
	        var bbomb = instance_create(player.x,player.y,objBomb);
	        bbomb.image_index = bbomb.image_number-1;
	        break;
	    case 188: // The Wizard
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        if(/*global.Mapa_Tipo != 6 and global.Mapa_Tipo != 11 and */global.Modo_Juego != "Arcade") {
	            var rxx = irandom(control_Dungeon.Dungeon_Ancho-1);
	            var ryy = irandom(control_Dungeon.Dungeon_Alto-1);
	            while(control_Dungeon.Dungeon[rxx,ryy] == 0 or control_Dungeon.Dungeon[rxx,ryy] == 3) {
	                rxx = irandom(control_Dungeon.Dungeon_Ancho-1);
	                ryy = irandom(control_Dungeon.Dungeon_Alto-1);
	            }
	            x = xRStart;
	            y = yRStart;
	            global.Posicion_i = rxx;
	            global.Posicion_j = ryy;
	            //goto_room(rxx, ryy);
	            //room_goto(room_Normal);

	            random_set_seed(global.UNIQUE_MAP_SEED + control_Dungeon.Dungeon_Seed[ global.Posicion_i, global.Posicion_j ] );
	            obj_Jugador.visible = true;
	            room_goto(room_Normal);
            
	            obj_Jugador.recolocate = 1;
            
	        }
	        break;
        
	    case 189: // 100 Punch Man
	        Cast_Time = 30;
	        player.Bonus_100Punch = 100;
	        break;
        
	    case 193: // Boats and coins
	        Cast_Time = 30;
	        var mon_dir = 0;
	        repeat(8) {
	            if(global.Jugador_Monedas > 0) {
	            global.Jugador_Monedas--;
	            var bblute = scr_jugador_common_disparo(mon_dir, 3, spr_Item_Moneda);
	            bblute.My_Fuerza = 10;
	            mon_dir += 360/8;
	            }
	        }
	        break;
        
	    case 200: // Expensive Health
	        Cast_Time = 20;
	        if(global.Jugador_Monedas >= 5) {
	            Cast_Time = 60;
	            global.Jugador_Monedas -= 5;
	            obj_Jugador.HP +=2;
	            if(obj_Jugador.HP > obj_Jugador.HP_Max) obj_Jugador.HP = obj_Jugador.HP_Max;
	        }
	        break;
        
	    case 201: // Two Face Dice
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        var _icreated = choose(obj_Moneda, obj_Salud);
	        var _iicreated = instance_create(player.x, player.y, _icreated);
	        _iicreated.hspeed = -1 + random(2);
	        _iicreated.vspeed = -1 + random(2);
	        break;
        
	    case 219: // Green Magnet
	        Cast_Time = 30;
	        with(parent_Enemigo) {
	            var sk_expOrb = instance_create(x,y,objExperienceOrb);
	            sk_expOrb.value = 5;
	        }
	    break;
        
	    case 222: // Key Generator
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        instance_create(player.x,player.y,obj_Key);
	    break;
        
	    case 223: // Bomb Generator
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        instance_create(player.x,player.y,obj_PickupBomb);
	    break;
        
	    case 228: // The Gang
	        Cast_Time = 30;
	        var sk_clone = instance_create(player.x,player.y,objPlayerClone);
	        sk_clone.right = true;
	        var sk_clone = instance_create(player.x,player.y,objPlayerClone);
	        sk_clone.right = false;
	    break;
        
	    case 229: // Deathmatch
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        with(parent_Enemigo) {
	            if(!IsBoss) {
	                instance_destroy();
	                spawn_boss(x,y,choose(irandom(2),irandom(6)+4));
	            }
	        }
	    break;

	    case 230: // Word: Strength
	        Cast_Time = 30;
	        var sk_count = 0;
	        for(sk_i = 0; sk_i < array_length_1d(control_Dungeon.Jugador_Items); sk_i++) {
	            var sk_item = control_Dungeon.Jugador_Items[sk_i];
	            if(sk_item > 0) {
	                player_lose_item(sk_item);
	                sk_count++;
	            }
	        }
	        repeat(sk_count) player_get_item(1);
	    break;

	    case 231: // Word: Bullets
	        Cast_Time = 30;
	        var sk_count = 0;
	        for(sk_i = 0; sk_i < array_length_1d(control_Dungeon.Jugador_Items); sk_i++) {
	            var sk_item = control_Dungeon.Jugador_Items[sk_i];
	            if(sk_item > 0) {
	                player_lose_item(sk_item);
	                sk_count++;
	            }
	        }
	        repeat(sk_count) obj_Jugador.Cadencia_Disparo += 1;
	    break;

	    case 232: // Word: Health
	        Cast_Time = 30;
	        var sk_count = 0;
	        for(sk_i = 0; sk_i < array_length_1d(control_Dungeon.Jugador_Items); sk_i++) {
	            var sk_item = control_Dungeon.Jugador_Items[sk_i];
	            if(sk_item > 0) {
	                player_lose_item(sk_item);
	                sk_count++;
	            }
	        }
	        repeat(sk_count) player_get_item(0);
	    break;

	    case 233: // Word: Wealth
	        Cast_Time = 30;
	        var sk_count = 0;
	        for(sk_i = 0; sk_i < array_length_1d(control_Dungeon.Jugador_Items); sk_i++) {
	            var sk_item = control_Dungeon.Jugador_Items[sk_i];
	            if(sk_item > 0) {
	                player_lose_item(sk_item);
	                sk_count++;
	            }
	        }
	        repeat(sk_count*5) {
	            instance_create(x,y,obj_Moneda);
	        }
	    break;

	    case 234: // Word: Death
	        Cast_Time = 30;
	        var sk_count = 0;
	        for(sk_i = 0; sk_i < array_length_1d(control_Dungeon.Jugador_Items); sk_i++) {
	            var sk_item = control_Dungeon.Jugador_Items[sk_i];
	            if(sk_item > 0) {
	                player_lose_item(sk_item);
	                sk_count++;
	            }
	        }
	        with(parent_Enemigo) instance_destroy();
	    break;

	    case 235: // Word: Focus
	        Cast_Time = 30;
	        var sk_count = 0;
	        for(sk_i = 0; sk_i < array_length_1d(control_Dungeon.Jugador_Items); sk_i++) {
	            var sk_item = control_Dungeon.Jugador_Items[sk_i];
	            if(sk_item > 0) {
	                player_lose_item(sk_item);
	                sk_count++;
	            }
	        }
	        obj_Jugador.HP_Max = 2;
	        obj_Jugador.HP = 2;
	        repeat(30) obj_Jugador.Fuerza++;
	    break;
    
	    case 244: // Rocket Spawner MK.I
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        with(parent_Enemigo) {
	            if(!IsBoss) {
	                instance_destroy();
	                spawn_rocket(1);
	            }
	        }
	    break;
    
	    case 245: // Rocket Spawner MK.II
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        spawn_rocket(3);
	    break;
    
	    case 250: // Expensive Rocket
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        if(global.Jugador_Monedas >= 4) {
	            spawn_rocket(1);
	            global.Jugador_Monedas -= 4;
	        }
	    break;
        
	    case 251: // Bloody Rockets
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        obj_Jugador.HP -= 2;
	        spawn_rocket(3);
	        break;
        
	    case 265: // Damage Rune
	        Cast_Time = 30;
	        if(instance_exists(obj_Cofre_Tienda)) {
	            if(control_Dungeon.Dungeon_Shop[0] != -1) { control_Dungeon.Dungeon_Shop[0] = -1; player_get_item(1); }
	            if(control_Dungeon.Dungeon_Shop[1] != -1) { control_Dungeon.Dungeon_Shop[1] = -1; player_get_item(1); }
	            if(control_Dungeon.Dungeon_Shop[2] != -1) { control_Dungeon.Dungeon_Shop[2] = -1; player_get_item(1); }
	            for(kk = 0; kk < instance_number(obj_Cofre_Tienda); kk++) {
	                var kk_ins = instance_find(obj_Cofre_Tienda,kk);
	                kk_ins.ID = -1;
	            }
	        }
	        if(instance_exists(obj_Cofre_Health)) {
	            if(control_Dungeon.Dungeon_HealthShop[0] != -1) { control_Dungeon.Dungeon_HealthShop[0] = -1; player_get_item(1); }
	            if(control_Dungeon.Dungeon_HealthShop[1] != -1) { control_Dungeon.Dungeon_HealthShop[1] = -1; player_get_item(1); }
	            if(control_Dungeon.Dungeon_HealthShop[2] != -1) { control_Dungeon.Dungeon_HealthShop[2] = -1; player_get_item(1); }
	            for(kk = 0; kk < instance_number(obj_Cofre_Health); kk++) {
	                var kk_ins = instance_find(obj_Cofre_Health,kk);
	                kk_ins.ID = -1;
	            }
	        }
	        if(instance_exists(obj_Cofre_Tesoro)) {
	            if(control_Dungeon.Dungeon_Tesoro != -1) { obj_Cofre_Tesoro.ID = -1; control_Dungeon.Dungeon_Tesoro = -1;
	                player_get_item(1);
	            }
	        }
	        if(instance_exists(obj_Cofre_Arcade)) {
	            if(obj_Cofre_Arcade.ID != -1) { 
	                player_get_item(1);
	                obj_Cofre_Arcade.ID = -1; 
	            }
	        }
	        if(instance_exists(obj_Cofre_Tesoro_Random)) {
	            if(control_Dungeon.Dungeon_Tesoro_Unknown != -1) { obj_Cofre_Tesoro_Random.ID = -1; control_Dungeon.Dungeon_Tesoro_Unknown = -1;
	                player_get_item(1);
	            }
	        }
	        if(instance_exists(obj_Boss_Chest)) {
	            if(control_Dungeon.Dungeon_Boss_Chest != -1) { obj_Boss_Chest.ID = -1; control_Dungeon.Dungeon_Boss_Chest = -1;
	                player_get_item(1);
	            }
	        }
	        break;
        
	    case 266: // Health Rune
	        Cast_Time = 30;
	        if(instance_exists(obj_Cofre_Tienda)) {
	            if(control_Dungeon.Dungeon_Shop[0] != -1) { control_Dungeon.Dungeon_Shop[0] = -1; obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2; }
	            if(control_Dungeon.Dungeon_Shop[1] != -1) { control_Dungeon.Dungeon_Shop[1] = -1; obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2; }
	            if(control_Dungeon.Dungeon_Shop[2] != -1) { control_Dungeon.Dungeon_Shop[2] = -1; obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2; }
	            for(kk = 0; kk < instance_number(obj_Cofre_Tienda); kk++) {
	                var kk_ins = instance_find(obj_Cofre_Tienda,kk);
	                kk_ins.ID = -1;
	            }
	        }
	        if(instance_exists(obj_Cofre_Health)) {
	            if(control_Dungeon.Dungeon_HealthShop[0] != -1) { control_Dungeon.Dungeon_HealthShop[0] = -1; obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2; }
	            if(control_Dungeon.Dungeon_HealthShop[1] != -1) { control_Dungeon.Dungeon_HealthShop[1] = -1; obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2; }
	            if(control_Dungeon.Dungeon_HealthShop[2] != -1) { control_Dungeon.Dungeon_HealthShop[2] = -1; obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2; }
	            for(kk = 0; kk < instance_number(obj_Cofre_Health); kk++) {
	                var kk_ins = instance_find(obj_Cofre_Health,kk);
	                kk_ins.ID = -1;
	            }
	        }
	        if(instance_exists(obj_Cofre_Tesoro)) {
	            if(control_Dungeon.Dungeon_Tesoro != -1) { obj_Cofre_Tesoro.ID = -1; control_Dungeon.Dungeon_Tesoro = -1;
	                obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2;
	            }
	        }
	        if(instance_exists(obj_Cofre_Arcade)) {
	            if(obj_Cofre_Arcade.ID != -1) { 
	                obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2;
	                obj_Cofre_Arcade.ID = -1; 
	            }
	        }
	        if(instance_exists(obj_Cofre_Tesoro_Random)) {
	            if(control_Dungeon.Dungeon_Tesoro_Unknown != -1) { obj_Cofre_Tesoro_Random.ID = -1; control_Dungeon.Dungeon_Tesoro_Unknown = -1;
	                obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2;
	            }
	        }
	        if(instance_exists(obj_Boss_Chest)) {
	            if(control_Dungeon.Dungeon_Boss_Chest != -1) { obj_Boss_Chest.ID = -1; control_Dungeon.Dungeon_Boss_Chest = -1;
	                obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2;
	            }
	        }
	        break;
        
	    case 267: // Cadence Rune
	        Cast_Time = 30;
	        if(instance_exists(obj_Cofre_Tienda)) {
	            if(control_Dungeon.Dungeon_Shop[0] != -1) { control_Dungeon.Dungeon_Shop[0] = -1; obj_Jugador.Cadencia_Disparo += 2; }
	            if(control_Dungeon.Dungeon_Shop[1] != -1) { control_Dungeon.Dungeon_Shop[1] = -1; obj_Jugador.Cadencia_Disparo += 2; }
	            if(control_Dungeon.Dungeon_Shop[2] != -1) { control_Dungeon.Dungeon_Shop[2] = -1; obj_Jugador.Cadencia_Disparo += 2; }
	            for(kk = 0; kk < instance_number(obj_Cofre_Tienda); kk++) {
	                var kk_ins = instance_find(obj_Cofre_Tienda,kk);
	                kk_ins.ID = -1;
	            }
	        }
	        if(instance_exists(obj_Cofre_Health)) {
	            if(control_Dungeon.Dungeon_HealthShop[0] != -1) { control_Dungeon.Dungeon_HealthShop[0] = -1; obj_Jugador.Cadencia_Disparo += 2; }
	            if(control_Dungeon.Dungeon_HealthShop[1] != -1) { control_Dungeon.Dungeon_HealthShop[1] = -1; obj_Jugador.Cadencia_Disparo += 2; }
	            if(control_Dungeon.Dungeon_HealthShop[2] != -1) { control_Dungeon.Dungeon_HealthShop[2] = -1; obj_Jugador.Cadencia_Disparo += 2; }
	            for(kk = 0; kk < instance_number(obj_Cofre_Health); kk++) {
	                var kk_ins = instance_find(obj_Cofre_Health,kk);
	                kk_ins.ID = -1;
	            }
	        }
	        if(instance_exists(obj_Cofre_Tesoro)) {
	            if(control_Dungeon.Dungeon_Tesoro != -1) { obj_Cofre_Tesoro.ID = -1; control_Dungeon.Dungeon_Tesoro = -1;
	                obj_Jugador.Cadencia_Disparo += 2;
	            }
	        }
	        if(instance_exists(obj_Cofre_Arcade)) {
	            if(obj_Cofre_Arcade.ID != -1) { 
	                obj_Jugador.Cadencia_Disparo += 2;
	                obj_Cofre_Arcade.ID = -1; 
	            }
	        }
	        if(instance_exists(obj_Cofre_Tesoro_Random)) {
	            if(control_Dungeon.Dungeon_Tesoro_Unknown != -1) { obj_Cofre_Tesoro_Random.ID = -1; control_Dungeon.Dungeon_Tesoro_Unknown = -1;
	                obj_Jugador.Cadencia_Disparo += 2;
	            }
	        }
	        if(instance_exists(obj_Boss_Chest)) {
	            if(control_Dungeon.Dungeon_Boss_Chest != -1) { obj_Boss_Chest.ID = -1; control_Dungeon.Dungeon_Boss_Chest = -1;
	                obj_Jugador.Cadencia_Disparo += 2;
	            }
	        }
	        break;
        
	    case 268: // Usable Rune
	        Cast_Time = 30;
        
	        if(instance_exists(obj_Cofre_Tienda)) {
	            if(control_Dungeon.Dungeon_Shop[0] != -1) and (get_item(control_Dungeon.Dungeon_Shop[0],6)) { absorb_item(control_Dungeon.Dungeon_Shop[0]); }
	            if(control_Dungeon.Dungeon_Shop[1] != -1) and (get_item(control_Dungeon.Dungeon_Shop[1],6)) { absorb_item(control_Dungeon.Dungeon_Shop[1]); }
	            if(control_Dungeon.Dungeon_Shop[2] != -1) and (get_item(control_Dungeon.Dungeon_Shop[2],6)) { absorb_item(control_Dungeon.Dungeon_Shop[2]); }
	            for(kk = 0; kk < instance_number(obj_Cofre_Tienda); kk++) {
	                var kk_ins = instance_find(obj_Cofre_Tienda,kk);
	                if(get_item(kk_ins.ID,6)) kk_ins.ID = -1;
	            }
	        }
	        if(instance_exists(obj_Cofre_Health)) {
	            if(control_Dungeon.Dungeon_HealthShop[0] != -1) and (get_item(control_Dungeon.Dungeon_HealthShop[0],6)) { absorb_item(control_Dungeon.Dungeon_HealthShop[0]); }
	            if(control_Dungeon.Dungeon_HealthShop[1] != -1) and (get_item(control_Dungeon.Dungeon_HealthShop[1],6)) { absorb_item(control_Dungeon.Dungeon_HealthShop[1]); }
	            if(control_Dungeon.Dungeon_HealthShop[2] != -1) and (get_item(control_Dungeon.Dungeon_HealthShop[2],6)) { absorb_item(control_Dungeon.Dungeon_HealthShop[2]); }
	            for(kk = 0; kk < instance_number(obj_Cofre_Health); kk++) {
	                var kk_ins = instance_find(obj_Cofre_Health,kk);
	                if(get_item(kk_ins.ID,6)) kk_ins.ID = -1;
	            }
	        }
	        if(instance_exists(obj_Cofre_Arcade)) {
	            if(obj_Cofre_Arcade.ID != -1) and (get_item(obj_Cofre_Arcade.ID,6)) { 
	                absorb_item(obj_Cofre_Arcade.ID);
	                obj_Cofre_Arcade.ID = -1; 
	            }
	        }
	        if(instance_exists(obj_Cofre_Tesoro)) {
	            if(control_Dungeon.Dungeon_Tesoro != -1) and (get_item(control_Dungeon.Dungeon_Tesoro,6)) { 
	                absorb_item(control_Dungeon.Dungeon_Tesoro);
	                obj_Cofre_Tesoro.ID = -1; 
	                control_Dungeon.Dungeon_Tesoro = -1;
	            }
	        }
	        if(instance_exists(obj_Cofre_Tesoro_Random)) {
	            if(control_Dungeon.Dungeon_Tesoro_Unknown != -1) and (get_item(control_Dungeon.Dungeon_Tesoro_Unknown,6)) { 
	                absorb_item(control_Dungeon.Dungeon_Tesoro_Unknown);
	                obj_Cofre_Tesoro_Random.ID = -1; 
	                control_Dungeon.Dungeon_Tesoro_Unknown = -1;
	            }
	        }
	        if(instance_exists(obj_Boss_Chest)) {
	            if(control_Dungeon.Dungeon_Boss_Chest != -1) and (get_item(control_Dungeon.Dungeon_Boss_Chest,6)) { 
	                absorb_item(control_Dungeon.Dungeon_Boss_Chest);
	                obj_Boss_Chest.ID = -1; 
	                control_Dungeon.Dungeon_Boss_Chest = -1;
	            }
	        }
        
	        // Use items
	        if(obj_Jugador.AbsorbedItems[0] != -1) {
	            for(sk_i = 0; sk_i < array_length_1d(obj_Jugador.AbsorbedItems); sk_i++) {
	                var sk_usable = obj_Jugador.AbsorbedItems[sk_i];
	                get_skill(sk_usable,false);
	            }
	        }
        
	        break;
        
	    case 269: // Speedrun Desiree
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        if(global.Mapa_Tipo < 11) and (global.Modo_Juego != "Arcade") {
	            global.Mapa_Tipo = 10;
	            global.Mapa_Nivel = 3; 
	            dungeon_next_level();
	        }
	        break;
        
	    case 270: // Cinnamon
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        if(obj_Jugador.HP > 0) {
	            switch(choose(0,1)) {
	                case 0: obj_Jugador.alarm[3] = 20; obj_Jugador.HP -= 2; break;
	                case 1: instance_create(player.x,player.y,obj_SkullHeart); break;
	            }
	        }
	        break;
        
	    case 273: // Damage Quest
	        Cast_Time = 30;
	        obj_Jugador.Fuerza+=30;
	        global.Jugador_Item_Usable = -1; 
	        player_lose_item(argument[0]); 
	        charge_item(9999);
	        break;
        
	    case 274: // Health Quest
	        Cast_Time = 30;
	        obj_Jugador.HP_Max = 32;
	        obj_Jugador.HP = 32;
	        global.Jugador_Item_Usable = -1; 
	        player_lose_item(argument[0]); 
	        charge_item(9999);
	        break;
        
	    case 275: // Leveling Quest
	        Cast_Time = 30;
	        repeat(10) player_level_up();
	        global.Jugador_Item_Usable = -1; 
	        player_lose_item(argument[0]); 
	        charge_item(9999);
	        break;
        
	    case 279: // Life Infuser
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        instance_create(player.x,player.y,choose(obj_SkullHeart,obj_ShieldHeart,obj_TimeHeart,obj_BatteryHeart,obj_GoldHeart));
	        break;
        
	    case 286: // Overvalued Health
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        repeat(obj_Jugador.HP_Max) instance_create(player.x-1+irandom(2),player.y-1+irandom(2),obj_Moneda);
	        break;
        
	    case 292: // Fast Killer
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        Cast_Time = 30;
	        with(parent_Enemigo) {
	            x = player.x;
	            y = player.y;
	        }
	        break;
        
	    case 293: // Pay To Win
	        Cast_Time = 30;
	        if(global.Jugador_Monedas > 0) {
	            global.Jugador_Monedas--;
	            audio_play_sound(snd_Moneda,0,0);
	            with(parent_Enemigo) {
	                HP-=4;
	                alarm[2] = 4;
	                var f = floating_text(x,y,"4",c_red,true);
					f.alarm[0] = 60;
	            }
	        }
	        break;
        
	    case 294: // Pots Explosion
	        Cast_Time = 30;
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
	        with(obj_Vasija) {
	            var sk_bomb = instance_create(x,y,objBomb);
	            sk_bomb.image_index = sk_bomb.image_number-1;
	        }
	        break;

	    case 300: // .
	        Cast_Time = 30;
	        if(!check_character_unlocked(8,0)) unlock_character(8);
	        break;
		
		case 303: // Rock Rain
			Cast_Time = 30;
			if(performed_by_host == false) break; // If the item has been used by the non-host, don't perform this action
			repeat(irandom_range(15,20)) {
				var xx = irandom_range(165,450);
				var yy = irandom_range(90,230);
				var rocks = instance_create(round(xx)/24*24, round(yy)/24*24, objFallingRock);
				rocks.y2 += 100+random(100);
				rocks.spd *= 2;
				rocks.explosion = true;
				rocks.hurt_player = false;
			}
		break;

	    case 309: // Alpha
	        Cast_Time = 30;
	        dungeon_goto_level(1,1);
	        break;

	    case 313: // Bullet Extruder
	        Cast_Time = 30;
	        with(obj_Jugador_Disparo) {
				alarm[5] = 1;
			}
	        break;

	    case 324: // Chest Generator
	        Cast_Time = 30;
	        create_chest_big(x,y,get_random_item_from_pool("treasure"));
	        break;
		
		case 326: // Sack Of Bombs
			Cast_Time = 30;
			with(objBomb) {
				obj_Jugador.bombs++;
				fx_smoke_cloud(x,y);
				instance_destroy();
			}
			break;

	    case 335: // Mass Envenom
	        Cast_Time = 30;
			with(parent_Enemigo) {
		        Envenenado = 3; 
		        image_blend = c_lime; 
		        alarm[10] = 60; 
			}
	        break;

	    case 338: // Bullet Detonator
	        Cast_Time = 30;
	        with(obj_Jugador_Disparo) {
				instance_destroy();
				instance_create(x,y,objBombExplosion);
			}
	        break;

	    case 339: // Toxic Caster
	        Cast_Time = 30;
	        with(parent_Enemigo) {
				instance_create(x,y,objToxicArea);
			}
	        break;

	    case 341: // Stone Clone
	        Cast_Time = 30;
	        var c = instance_create(x,y,objPlayerClone);
			c.stone = true;
	        break;

	    case 343: // Desperado
	        Cast_Time = 30;
			repeat(8) {
				var dbullet = bullet_spawn(player.x,player.y,2,2,random(360));
			}
	        break;
        
	    case 505: // Pray
	        Cast_Time = 30;
	        if(!audio_is_playing(sndPray)) {
	            audio_play_sound(sndPray,0,0);
	            obj_Jugador.Pray = true;
	        }
	    break;
    
	}

	// Devolver informacion solicitada
	switch(argument[1]) {
	    case 2: return Cast_Time; break;
	}



}
