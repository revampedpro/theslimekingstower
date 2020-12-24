// Vars
var myPetID = get_enemy(ID, 21);

// Get .ini data
ini_open("save.ini");
var myPetCounter = ini_read_real("S", "PUNC"+string(myPetID), 0);
ini_close();

if(myPetCounter == 10) {

    // Add pet
    if(petAdded == false) {
        if(myPetID != -1) {
        
            // Desbloquear el pet y guardarlo en el .ini
            ini_open("save.ini");
            global.Pets_Desbloqueados = ini_read_string("S", "IPS", "0");
            string_explode(global.Pets_Desbloqueados,"|");
            global.Pets_Desbloqueados = "";
            for( kk = 0; kk < count_pets(); kk++ ) {
                if( kk <  array_length_1d(level) )global.Pets_Desbloqueados += string(level[kk]) + "|";
                if( kk >= array_length_1d(level) )global.Pets_Desbloqueados += "0|";
            }
            
            string_explode(global.Pets_Desbloqueados,"|");
            level[myPetID] = 1;
            global.Pets_Desbloqueados = "";
            for(kk = 0; kk < count_pets(); kk++) {
                global.Pets_Desbloqueados += string(level[kk]) + "|";
            }
            ini_write_string("S", "IPS", global.Pets_Desbloqueados );
            ini_write_real("S", "PUNC"+string(myPetID), myPetCounter+1);
            ini_close();
            
            petAdded = true;
            
        }
    }
    
} else {

    // Sum counter
    ini_open("save.ini");
    ini_write_real("S", "PUNC"+string(myPetID), myPetCounter+1);
    ini_close();
}

// Tell your partner that this enemy died
if(network_is_online()) and (global.NETWORK_HOST == true) {
	pack_send_multi("monsterDeath","netid",netid);
}

/// Efectos que repercuten al jugador
if(!instance_exists(obj_Jugador))exit;

// Aumentar las cargas
charge_item(1);
if(player_has_item(242)) charge_item(1);
if(player_has_item(161)) charge_item(1);

// RHCP, leave fire
if(player_has_item(243)) {
    instance_create(x,y,obj_Jugador_Disparo_Fuego);
}

// Cthulhu's Tail
if(player_has_item(344)) and (chance(20)) {
	if(!instance_exists(obj_Jugador_Friend_Mini_Cthulhu))   instance_create(x, y, obj_Jugador_Friend_Mini_Cthulhu);
	else if(!instance_exists(obj_Jugador_Friend_Blue_Cthulhu))   instance_create(x, y, obj_Jugador_Friend_Blue_Cthulhu);
	else if(!instance_exists(obj_Jugador_Friend_Green_Cthulhu))  instance_create(x, y, obj_Jugador_Friend_Green_Cthulhu);
	else if(!instance_exists(obj_Jugador_Friend_Yellow_Cthulhu)) instance_create(x, y, obj_Jugador_Friend_Yellow_Cthulhu);
}

// Coin Explosion
if(player_has_item(337)) and (chance(5)) {
	instance_create(x,y,objBombExplosion);
	repeat(irandom_range(5,8)) {
		instance_create(x-1+random(2),y-1+random(2),obj_Moneda);
	}
}

// Rocket Spawner MK.III create a rocket
if(player_has_item(246)) {
    spawn_rocket(1);
}

// Efecto leech
with(obj_Jugador) {
    if( Bonus_HP_Leech_Max != 0 ) {
        Bonus_HP_Leech--;
        if(Bonus_HP_Leech <= 0) {
            HP = min( HP_Max, HP+1 );
            Bonus_HP_Leech = Bonus_HP_Leech_Max;
            audio_play_sound( snd_Heal, 1 , 0 );
        }   
    }
    if(player_has_item(101)) {
        obj_Jugador.Fuerza_Temporal++;
    }
    
    // Pet bonus
    if(Pet_Bonus_Medusa)          and (chance(1))  { HP = HP_Max; audio_play_sound(snd_Heal, 1 , 0); }
    if(Pet_Bonus_Boss_BlackSlime) and (chance(10)) { instance_create(other.x, other.y, objBomb); }
    
    if(Pet_Bonus_Boss_OrangeSlime) and (chance(10)) {
        with(parent_Enemigo) {
            HP-=1;
            alarm[2] = 4;
        }
    }
    
    if(player_has_item(152)) Bonus_Mob_Doctor_Q++;
    if(player_has_item(153)) Bonus_Mob_Thief_Q++;
    
}

// Efecto Bullet Explosion
if(player_has_item(117)) {
    if(!instance_exists(obj_Jugador))exit;
    var Disparo_Angulo = random(360);
    repeat(2) {
		/*
        var Disparo = instance_create( x, y, obj_Jugador.Tipo_Municion );
        Disparo_Angulo += 360/5;
        Disparo.V_SPEED = 1 * cos(degtorad(Disparo_Angulo));
        Disparo.H_SPEED = 1 * sin(degtorad(Disparo_Angulo));
        Disparo.image_angle = Disparo_Angulo;
        Disparo.Delay_Antes_De_Caer = obj_Jugador.Caida_Disparo;
        Disparo.alarm[0] = obj_Jugador.Caida_Disparo;
        Disparo.Veneno = player_has_item(13);
        Disparo.Sangrado = player_has_item(14);
        Disparo.image_xscale = obj_Jugador.Bullet_Size + 6*obj_Jugador.temp_Strike;
        Disparo.image_yscale = obj_Jugador.Bullet_Size + 6*obj_Jugador.temp_Strike;
        if(player_has_item(21)) Disparo.Bounce = true;
        if(player_has_item(29)) Disparo.Freeze = true;
        if(player_has_item(30)) Disparo.Spiral = true;
        Disparo.alarm[5] = -1;
		*/
        Disparo_Angulo += 360/5;
		bullet_spawn(x,y,1,1,Disparo_Angulo);
    }
}



/// Efectos de muerte
audio_stop_sound(Sonido_Muerte);
audio_stop_sound(sndEnemyDeathrattle);
audio_stop_sound(sndRetroDeath);
audio_stop_sound(sndRetroDeath2);
audio_play_sound(Sonido_Muerte,4,0);
audio_play_sound(sndEnemyDeathrattle,0,0);
audio_play_sound(choose(sndRetroDeath,sndRetroDeath2),0,0);
shake_camera(2,2);

//GoogleAnalytics_SendEvent("ingame","enemy_kills");

// Create effect
if(global.Quality >= 1) {
    //create_effect(x, y, sprFxEnemySmoke, 0.2);
    //create_effect(x, y, sprMagicEffect1, 0.5);
    var m = create_effect(bbox_left + (bbox_right - bbox_left)/2, bbox_top + (bbox_bottom - bbox_top)/2, sprFxEnemyMuzzy, .4);
    m.depth--;

    // Guts
    repeat(4*global.Quality) {
        var fx = create_effect(x, y, sprFxGuts, 0.34);
        var v = random(100);
        fx.hspeed = -.5 + random(1);
        fx.vspeed = -.5 + random(1);
        fx.permanent = true;
        fx.random_image = true;
    }
    
    repeat(5*global.Quality) {
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
    
    // Blood splat effect
    repeat(10*global.Quality) {
        var fx = create_effect(bbox_left + random(bbox_right-bbox_left), bbox_top + random(bbox_bottom-bbox_top), choose(sprBloodSplat1,sprBloodSplat2,sprBloodSpray1,sprBloodSpray2), 0.34+random(1)/10);
        var v = random(100);
        //fx.image_alpha = .3 * random(5)/10;
        //fx.image_blend = make_color_rgb(200+random(30), 50, 50);
        fx.hspeed = -1 + random(2);
        fx.vspeed = -1 + random(2);
        fx.image_xscale = 1 + random(1)/5;
        fx.image_yscale = fx.image_xscale;
    } 

}

// Create lesser enemy on death
if(champion_color == c_blue) {
    var Summoning = instance_create(x, y, get_enemy(ID, 0));
    Summoning.ID = ID;
    with(Summoning) event_perform(ev_other, ev_user15);
}

// Create bomb on green death
if(champion_color == c_green) {
    instance_create(x, y, objBomb);
}

// Create rockets on orange death
if(champion_color == c_orange) {
    spawn_rocket(3);
}

// Create bomb on fuchsia death
if(champion_color == c_fuchsia) {
    instance_create(x, y, choose(obj_SkullHeart,obj_TimeHeart,obj_ShieldHeart,obj_Salud,obj_Salud,obj_Salud,obj_Salud,obj_Salud));
}

// Sudden Reward item
if(player_has_item(308)) and (chance(5)) {
	create_chest_big(x,y,get_random_item_from_pool("all"));
}

/// Crear loot al morir
if(instance_exists(obj_Jugador) and player_has_item(160)) exit;
if(no_drops) exit;
if(check_room("centro") != 3) {

    // Experience
    if(noExp == false) {
        if(real(ID) != 50) and (real(ID) != 51) {
            var exp_orbs = max(2, floor(HP/10));
            repeat(exp_orbs) {
                instance_create(x, y, objExperienceOrb);
            }
            if(player_has_pet(69)) and (chance(5)) {
                repeat(20) {
                    instance_create(x, y, objExperienceOrb);
                }
            }
        }
    }

    var Loot = choose(0,0,0,0,0,0,0,1,1,1,2,2,2,3);
    if(obj_Jugador.Pet_Bonus_ThiefSlime == true) Loot = choose(0,0,Loot);
    var Chance = 12;
    if(bonus_marked) Chance = 100;
    if(random(100) > Chance)exit;
    
    var xxx = 1;
	var yyy = player_has_pet(86);
    if(bonus_marked) xxx = 3;
    repeat(xxx) {
        switch(Loot) { 
            case 0: // Monedas
				if(chance(2+(yyy*5))) instance_create(x,y,obj_RedGem);
				else if(chance(10+(yyy*10))) instance_create(x,y,obj_GreenGem);
				else if(chance(25+(yyy*10))) instance_create(x,y,obj_BlueGem);
				else instance_create(x,y,obj_Moneda);
                break;
                
            case 1: // Salud
                switch(choose(0,0,0,0,0,1)) {
                    case 0: // Normal hearts
                        var Salud = instance_create(x,y,obj_Salud);
                    break;
                    
                    case 1: // Soul hearts
                        var Salud = instance_create(x,y,choose(obj_ShieldHeart,obj_SkullHeart,obj_TimeHeart,obj_BatteryHeart));
                    break;
                }
                break;
                
            case 2: // Pickup
                var Pickup = instance_create(x,y,choose(obj_Key,obj_PickupBomb));
            break;
            
            case 3: // Chest
                create_chest(x,y,chest_pools("enemy"));
            break;
        }
    }
    
    // Force key/bomb spawning
    if(control_Dungeon.keyDropped == false) and (chance(10)) {
        instance_create(x,y,obj_Key);
        control_Dungeon.keyDropped++;
    }
    if(control_Dungeon.bombDropped < 2) and (chance(10)) {
        instance_create(x,y,obj_PickupBomb);
        control_Dungeon.bombDropped++;
    }
    
}

// Extra loot
if(obj_Jugador.Bonus_Mob_Doctor_Q > 0) {
    if(random(100) <= obj_Jugador.Bonus_Mob_Doctor_Q*10) {
        var Moneda = instance_create(x,y,obj_Salud);
        Moneda.vspeed = -2 + random(2);Moneda.hspeed = -2 + random(2);
        obj_Jugador.Bonus_Mob_Doctor_Q = 0;
    }
}
if(obj_Jugador.Bonus_Mob_Thief_Q > 0) {
    if(random(100) <= obj_Jugador.Bonus_Mob_Thief_Q*10) {
        var Moneda = instance_create(x,y,obj_Moneda);
        Moneda.vspeed = -2 + random(2);Moneda.hspeed = -2 + random(2);
        obj_Jugador.Bonus_Mob_Thief_Q = 0;
    }
}

/// DEBUG
global.DEBUG_ENEMIGOS_DERROTADOS++;

