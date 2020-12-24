/// @description get_item(id,type)
/// @function get_item
/// @param id
/// @param type
function get_item() {

	// Devuelve la informacion pedida de un item
	var Nombre					= ""
	var Icono					= -1;
	var Descripcion				= "";
	var Descripcion_Extendida	= "";
	var Usable					= false;
	var Precio					= 10;
	var Cargas					= -1;
	var Boss_Type				= false;
	var Reusable				= false;
	var levelCost				= 2;
	var oneUse					= false;
	var Filled					= true;
	var arcadeBanned			= false;
	var shopType				= false;

	// Get translations
	Nombre					= lang(500+argument0);
	Descripcion				= lang(600+argument0);
	Descripcion_Extendida	= lang(700+argument0);
	if(argument[0] < 900) { Nombre = lang(1700+argument0); Descripcion = lang(1800+argument0); Descripcion_Extendida = lang(1900+argument0);}
	if(argument[0] < 800) { Nombre = lang(1500+argument0); Descripcion = lang(1600+argument0); Descripcion_Extendida = lang(1700+argument0);}
	if(argument[0] < 700) { Nombre = lang(1300+argument0); Descripcion = lang(1400+argument0); Descripcion_Extendida = lang(1500+argument0);}
	if(argument[0] < 600) { Nombre = lang(1100+argument0); Descripcion = lang(1200+argument0); Descripcion_Extendida = lang(1300+argument0);}
	if(argument[0] < 500) { Nombre = lang(900+argument0);  Descripcion = lang(1000+argument0); Descripcion_Extendida = lang(1100+argument0);}
	if(argument[0] < 400) { Nombre = lang(700+argument0);  Descripcion = lang(800+argument0);  Descripcion_Extendida = lang(900+argument0);}
	if(argument[0] < 300) { Nombre = lang(500+argument0);  Descripcion = lang(600+argument0);  Descripcion_Extendida = lang(700+argument0);}
	if(argument[0] < 200) { Nombre = lang(300+argument0);  Descripcion = lang(400+argument0);  Descripcion_Extendida = lang(500+argument0);}
	if(argument[0] < 100) { Nombre = lang(100+argument0);  Descripcion = lang(200+argument0);  Descripcion_Extendida = lang(300+argument0);}

	switch(argument0) {
        
	    case 0: // Health Up
	        Icono = spr_Item_1;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.HP_Max += 2;
	            obj_Jugador.HP += 2;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	            obj_Jugador.HP_Max -= 2;
	            if(obj_Jugador.HP < obj_Jugador.HP_Max) obj_Jugador.HP = obj_Jugador.HP_Max;
	            exit;
	        }
	        break;
        
	    case 1: // Hell Power
	        Icono = spr_Item_2;        
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	            obj_Jugador.Fuerza--;
	            exit;
	        }
	        break;
        
	    case 2: // Life Amulet
	        Icono = spr_Item_3;                
	        if(argument1 == 0) { // Otorgar bonus
	                obj_Jugador.Delay_Invencibilidad *= 2;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	                obj_Jugador.Delay_Invencibilidad /= 2;
	            exit;
	        }
	        break;
        
	    case 3: // Delicious Fish
	        Icono = spr_Item_4;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.HP_Max += 2;
	            obj_Jugador.HP += 2;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.HP_Max -= 2;
	            if(obj_Jugador.HP < obj_Jugador.HP_Max) obj_Jugador.HP = obj_Jugador.HP_Max;
	            exit;
	        }
	        break;
        
	    case 4: // Speed Potion
	        Icono = spr_Item_5;
	        if(argument1 == 0) { obj_Jugador.Velocidad_H_Max += 0.25; obj_Jugador.Velocidad_V_Max += 0.25; exit; }
	        if(argument1 == 9) { obj_Jugador.Velocidad_H_Max -= 0.25; obj_Jugador.Velocidad_V_Max -= 0.25; exit; }
	        break;
        
	    case 5: // Cheese
	        Icono = spr_Item_6;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.HP = obj_Jugador.HP_Max;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            exit;
	        }
	        break;
        
	    case 6: // Treasure Map
	        Icono = spr_Item_7;
	        break;
        
	    case 7: // Eye See You
	        Icono = spr_Item_8;
	        break;
        
	    case 8: // Magic Shield
	        Icono = spr_Item_9;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Bonus_Magic_Shield = 2;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Bonus_Magic_Shield = 0;
	            exit;
	        }
	        break;
        
	    case 9: // Rocky Ammo
	        Icono = spr_Item_10;                
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Knockback += .5;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Knockback -= .5;
	            exit;
	        }
	        break;
        
	    case 10: // Big Bullets
	        Icono = spr_Item_11;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza += 20;
	            obj_Jugador.Cadencia_Disparo = max(1,obj_Jugador.Cadencia_Disparo-8);
	            obj_Jugador.Bullet_Size += 2;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza -= 20;
	            obj_Jugador.Cadencia_Disparo = max(1,obj_Jugador.Cadencia_Disparo+8);
	            obj_Jugador.Bullet_Size -= 2;
	            obj_Jugador.Fuerza = max(obj_Jugador.Fuerza, 1);
	            exit;
	        }
	        break;
        
	    case 11: // Mark Of Piercing
	        Icono = spr_Item_12;
	        if(argument1 == 0) { obj_Jugador.Penetracion_Disparo++; exit; }
	        if(argument1 == 9) { obj_Jugador.Penetracion_Disparo--; exit; }
	        break;
        
	    case 12: // Angled Shooting
	        Icono = spr_Item_13;
	        break;
        
	    case 13: // Poison Edge
	        Icono = spr_Item_14;
	        break;
        
	    case 14: // Sharp Edge
	        Icono = spr_Item_15;
	        break;
        
	    case 15: // Delicious Meat
	        Icono = spr_Item_16;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.HP_Max += 4;
	            obj_Jugador.HP += 4;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.HP_Max -= 4;
	            if(obj_Jugador.HP < obj_Jugador.HP_Max) obj_Jugador.HP = obj_Jugador.HP_Max;
	            exit;
	        }
	        break;
        
	    case 16: // Frog Legs
	        Icono = spr_Item_17;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.HP_Max += 2;
	            obj_Jugador.HP += 2;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.HP_Max -= 2;
	            if(obj_Jugador.HP < obj_Jugador.HP_Max) obj_Jugador.HP = obj_Jugador.HP_Max;
	            exit;
	        }
	        break;
        
	    case 17: // Edible Leaf
	        Icono = spr_Item_18;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.HP_Max += 2;
	            obj_Jugador.HP += 2;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.HP_Max -= 2;
	            if(obj_Jugador.HP < obj_Jugador.HP_Max) obj_Jugador.HP = obj_Jugador.HP_Max;
	            exit;
	        }
	        break;
        
	    case 18: // Magic Skin
	        Icono = spr_Item_19;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Bonus_Spike_Damage+=2;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Bonus_Spike_Damage-=2;
	            exit;
	        }
	        break;
        
	    case 19: // Hard Skin
	        Icono = spr_Item_20;
			shopType = true;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Bonus_Spike_Damage+=2;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Bonus_Spike_Damage-=2;
	            exit;
	        }
	        break;
        
	    case 20: // Blue Fire
	        Icono = spr_Item_21;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza = max(1,obj_Jugador.Fuerza-4);
	            obj_Jugador.Cadencia_Disparo += 8;
	            obj_Jugador.Caida_Disparo -= 25;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza = max(1,obj_Jugador.Fuerza+4);
	            obj_Jugador.Cadencia_Disparo -= 8;
	            obj_Jugador.Caida_Disparo += 25;
	            exit;
	        }
	        break;
        
	    case 21: // Bouncing Bullets
	        Icono = spr_Item_22;
	        break;
        
	    case 22: // Necroscroll
	        Icono = spr_Item_23;
	        Usable = true;
	        Cargas = 10;
	        break;
        
	    case 23: // Ranger Soul
	        Icono = spr_Item_24;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza = max(1,obj_Jugador.Fuerza-1);
	            obj_Jugador.Caida_Disparo += 25;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza = max(1,obj_Jugador.Fuerza+1);
	            obj_Jugador.Caida_Disparo -= 25;
	            exit;
	        }
	        break;
        
	    case 24: // Raging Tornado
	        Icono = spr_Item_25;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Knockback += 0.25;
	            obj_Jugador.Caida_Disparo += 5;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Knockback -= 0.25;
	            obj_Jugador.Caida_Disparo -= 5;
	            exit;
	        }
	        break;
        
	    case 25: // Refillable Potion
	        Icono = spr_Item_26;
	        Usable = true;
	        Cargas = 20;
			shopType = true;
	        break;
        
	    case 26: // Bat Wing
	        Icono = spr_Item_27;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Bonus_HP_Leech = 10;
	            obj_Jugador.Bonus_HP_Leech_Max = 10;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Bonus_HP_Leech = 0;
	            obj_Jugador.Bonus_HP_Leech_Max = 0;
	            exit;
	        }
	        break;
        
	    case 27: // Time Stop Watch
	        Icono = spr_Item_28;
	        Usable = true;
	        Cargas = 20;
			shopType = true;
	        break;
        
	    case 28: // Freezing Contact
	        Icono = spr_Item_29;
	        break;
        
	    case 29: // Freezing Bullets
	        Icono = spr_Item_30;
	        break;
        
	    case 30: // Spiral Wind
	        Icono = spr_Item_31;
	        break;
        
	    case 31: // Scroll Of Substitution
	        Icono = spr_Item_32;
	        Usable = true;
	        Cargas = 10;
			shopType = true;
	        break;
        
	    case 32: // The D6
	        Icono = spr_Item_33;
	        Usable = true;
	        Cargas = 20;
	        break;
        
	    case 33: // All Way Across
	        Icono = spr_Item_34;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Cadencia_Disparo = max(1,obj_Jugador.Cadencia_Disparo-4);
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Cadencia_Disparo = max(1,obj_Jugador.Cadencia_Disparo+4);
	            exit;
	        }
	        break;
        
	    case 34: // Greedy Bag
	        Icono = spr_Item_35;
			shopType = true;
	        break;
        
	    case 35: // Iron Boots
	        Icono = spr_Item_36;
	        break;
        
	    case 36: // Speed Elixir
	        Icono = spr_Item_37;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Velocidad_H_Max += 0.25;
	            obj_Jugador.Velocidad_V_Max += 0.25;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Velocidad_H_Max -= 0.25;
	            obj_Jugador.Velocidad_V_Max -= 0.25;
	            exit;
	        }
	        break;
        
	    case 37: // Sonic Boots
	        Icono = spr_Item_38;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Velocidad_H_Max += 0.5;
	            obj_Jugador.Velocidad_V_Max += 0.5;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Velocidad_H_Max -= 0.5;
	            obj_Jugador.Velocidad_V_Max -= 0.5;
	            exit;
	        }
	        break;
        
	    case 38: // The Drums
	        Icono = spr_Item_39;
	        Usable = true;
	        Cargas = 10;
	        break;
        
	    case 39: // Static Gloves
	        Icono = spr_Item_40;
	        break;
        
	    case 40: // Gold Skin
	        Icono = spr_Item_41;
	        break;
        
	    case 41: // Swag Glasses
	        Icono = spr_Item_42;
			shopType = true;
	        break;
        
	    case 42: // Sustained Area
	        Icono = spr_Item_43;
	        break;
        
	    case 43: // Lockpick
	        Icono = spr_Item_44;
	        Usable = true;
	        Cargas = 15;
			shopType = true;
	        break;
        
	    case 44: // Non Chaos Emerald
	        Icono = spr_Item_45;
	        if(argument1 == 0) { global.Jugador_Monedas += 15; exit; }
	        if(argument1 == 9) { global.Jugador_Monedas -= 15; if(global.Jugador_Monedas < 0) global.Jugador_Monedas = 0; exit; }
	        break;
        
	    case 45: // Size Ring
	        Icono = spr_Item_46;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Bullet_Size += .5;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Bullet_Size -= .5;
	            exit;
	        }
	        break;
        
	    case 46: // Relocation Staff
	        Icono = spr_Item_47;
	        break;
        
	    case 47: // Fire Staff
	        Icono = spr_Item_48;
	        Usable = true;
	        Cargas = 2;
	        break;
        
	    case 48: // Lazaro
	        Icono = spr_Item_49;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Lives++;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Lives--;
	            exit;
	        }
	        break;
        
	    case 49: // God's Chosen
	        Icono = spr_Item_50;
	        arcadeBanned = true;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza += 10;
	            obj_Jugador.Velocidad_H_Max -= 0.5;
	            obj_Jugador.Velocidad_V_Max -= 0.5;
	            if(obj_Jugador.Velocidad_H_Max < 0.25) obj_Jugador.Velocidad_H_Max = 0.25;
	            if(obj_Jugador.Velocidad_V_Max < 0.25) obj_Jugador.Velocidad_V_Max = 0.25;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza -= 10;
	            obj_Jugador.Velocidad_H_Max += 0.5;
	            obj_Jugador.Velocidad_V_Max += 0.5;
	            exit;
	        }
	        break;
                
	    case 50: // Strength Potion
	        Icono = spr_Item_51;
			shopType = true;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza = max(obj_Jugador.Fuerza, 1);
	            exit;
	        }
	        break;
               
	    case 51: // Bullet Explosion
	        Icono = spr_Item_52;
	        break;
        
	    case 52: // Homing Bullets
	        Icono = spr_Item_53;
	        arcadeBanned = true;
	        break;
        
	    case 53: // Diamond Pickaxe
	        Icono = spr_Item_54;
			shopType = true;
	        break;
        
	    case 54: // Angel Wing
	        Icono = spr_Item_55;
	        arcadeBanned = true;
	        Usable = true;
	        Cargas = 40;
	        break;
        
	    case 55: // Hard Boots
	        Icono = spr_Item_56;
	        break;
        
	    case 56: // Gold Pickaxe
	        Icono = spr_Item_57;
	        Usable = true;
	        Cargas = 20;
	        break;
        
	    case 57: // Warrior Soul
	        Icono = spr_Item_58;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza = max(obj_Jugador.Fuerza, 1);
	            exit;
	        }
	        break;
        
	    case 58: // Mage Soul
	        Icono = spr_Item_59;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza = max(obj_Jugador.Fuerza, 1);
	            exit;
	        }
	        break;
        
	    case 59: // Sharp Edge
	        Icono = spr_Item_60;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza = max(obj_Jugador.Fuerza, 1);
	            exit;
	        }
	        break;
        
	    case 60: // Magnet
	        Icono = spr_Item_61;
	        break;
        
	    case 61: // Sad Mask
	        Icono = spr_Item_62;
	        break;
        
	    case 62: // Last Effort
	        Icono = spr_Item_63;
	        break;
        
	    case 63: // Dummy
	        Icono = spr_Item_64;
	        Usable = true;
	        Cargas = 20;
			shopType = true;
	        break;
        
	    case 64: // Mark Of Accuracy
	        Icono = spr_Item_65;
	        break;
        
	    case 65: // Random Perk
	        Icono = spr_Item_66;
	        Nombre = lang(165);
	        Descripcion_Extendida = lang(365);
			shopType = true;
	        if( room = room_Tesoro or room = room_Tienda or room = room_Eleccion or room = room_Normal or room = room_Inicial) { 
	            random_set_seed(global.UNIQUE_MAP_SEED + control_Dungeon.Dungeon_Seed[ global.Posicion_i, global.Posicion_j ] );
	        }
	        switch( choose( 0, 1, 2 ) ) {
	            case 0:
	                Descripcion = lang(2651);
	                if(argument1 == 0) { obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2; exit; }
	                break;
	            case 1:
	                Descripcion = lang(2652)
	                if(argument1 == 0) { obj_Jugador.Fuerza++; exit; }
	                break;
	            case 2:
	                Descripcion = lang(2653)
	                if(argument1 == 0) { obj_Jugador.Velocidad_H_Max += 0.50; exit; }
	                break;
	        }
	        break;
        
	    case 66: // Fire Orb
	        Icono = spr_Item_67;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.FriendsSPR[array_length_1d(obj_Jugador.Friends)] = Icono;
	            obj_Jugador.Friends[array_length_1d(obj_Jugador.Friends)] = argument0;
	            exit;
	        }
	        break;
        
	    case 67: // Magic Dagger
	        Icono = spr_Item_68;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.FriendsSPR[array_length_1d(obj_Jugador.Friends)] = Icono;
	            obj_Jugador.Friends[ array_length_1d( obj_Jugador.Friends ) ] = argument0;
	            exit;
	        }
	        break;
        
	    case 68: // Guardian Angel
	        Icono = spr_Item_69;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.FriendsSPR[array_length_1d(obj_Jugador.Friends)] = Icono;
	            obj_Jugador.Friends[ array_length_1d( obj_Jugador.Friends ) ] = argument0;
	            exit;
	        }
	        break;
        
	    case 69: // Ice Skates
	        Icono = spr_Item_70;
	        break;
        
	    case 70: // Light Disc
	        Icono = spr_Item_71;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.FriendsSPR[array_length_1d(obj_Jugador.Friends)] = Icono;
	            obj_Jugador.Friends[array_length_1d(obj_Jugador.Friends)] = argument0;
	            exit;
	        }
	        break;
        
	    case 71: // Holy Bible
	        Icono = spr_Item_72;
	        arcadeBanned = true;
	        Usable = true;
	        Cargas = 1;
	        break;
        
	    case 72: // War Book
	        Icono = spr_Item_73;
	        arcadeBanned = true;
	        Usable = true;
	        Cargas = 10;
	        break;
        
	    case 73: // Friendship Book
	        Icono = spr_Item_74;
	        Usable = true;
	        Cargas = 15;
	        break;
        
	    case 74: // ASPD Book
	        Icono = spr_Item_75;
	        arcadeBanned = true;
	        Usable = true;
	        Cargas = 10;
	        break;
        
	    case 75: // Assault Book
	        Icono = spr_Item_76;
	        Usable = true;
	        Cargas = 10;
	        break;
        
	    case 76: // The Magician
	        Icono = spr_Item_77;
	        Usable = true;
	        Cargas = 5;
	        break;
        
	    case 77: // Strike
	        Icono = spr_Item_78;
	        Usable = true;
	        Cargas = 20;
	        break;
        
	    case 78: // Summer Sales
	        Icono = spr_Item_79;
			shopType = true;
	        break;
        
	    case 79: // Poison Touch
	        Icono = spr_Item_80;
	        break;
        
	    case 80: // Thief Hand
	        Icono = spr_Item_81;
	        Usable = true;
	        Cargas = 40;
	        break;
        
	    case 81: // Unfriendly
	        Icono = spr_Item_82;
	        break;
        
	    case 82: // Dungeon Designer
	        Icono = spr_Item_83;
	        break;
        
	    case 83: // Chest Filler
	        Icono = spr_Item_84;
	        Usable = true;
	        Cargas = 40;
			shopType = true;
	        break;
        
	    case 84: // Magnet Bullets
	        Icono = spr_Item_85;
	        break;
        
	    case 85: // Inner Fire
	        Icono = spr_Item_86;
	        break;
        
	    case 86: // Pulse Ammo
	        Icono = spr_Item_87;
	        break;
        
	    case 87: // Laser Beans
	        Icono = spr_Item_88;
	        break;
        
	    case 88: // Shurikens
	        Icono = spr_Item_89;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza = max(obj_Jugador.Fuerza, 1);
	            exit;
	        }
	        break;
        
	    case 89: // Illumeneye
	        Icono = spr_Item_90;
	        Usable = true;
	        Cargas = 5;
	        break;
        
	    case 90: // Rat Size
	        Icono = spr_Item_91;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.image_xscale *= .5;
	            obj_Jugador.image_yscale *= .5;
	            if(obj_Jugador.image_xscale < 0.5) obj_Jugador.image_xscale = 0.5;
	            if(obj_Jugador.image_yscale < 0.5) obj_Jugador.image_yscale = 0.5;
	            if(obj_Jugador.image_xscale > 1.5) obj_Jugador.image_xscale = 1.5;
	            if(obj_Jugador.image_yscale > 1.5) obj_Jugador.image_yscale = 1.5;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.image_xscale /= .5;
	            obj_Jugador.image_yscale /= .5;
	            if(obj_Jugador.image_xscale < 0.5) obj_Jugador.image_xscale = 0.5;
	            if(obj_Jugador.image_yscale < 0.5) obj_Jugador.image_yscale = 0.5;
	            if(obj_Jugador.image_xscale > 1.5) obj_Jugador.image_xscale = 1.5;
	            if(obj_Jugador.image_yscale > 1.5) obj_Jugador.image_yscale = 1.5;
	            exit;
	        }
	        break;
        
	    case 91: // Windforce
	        Icono = spr_Item_92;
	        break;
        
	    case 92: // Fire Tunic
	        Icono = spr_Item_93;
			shopType = true;
	        break;
        
	    case 93: // Dancing Swords
	        Icono = spr_Item_94;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza = max(obj_Jugador.Fuerza, 1);
	            exit;
	        }
	        break;
        
	    case 94: // Phantom Shield
	        Icono = spr_Item_95;
			shopType = true;
	        break;
        
	    case 95: // Gold Armor
	        Icono = spr_Item_96;
	        break;
        
	    case 96: // Explorer Belt
	        Icono = spr_Item_97;
	        break;
        
	    case 97: // Fire Pilar
	        Icono = spr_Item_98;
	        Usable = true;
	        Cargas = 10;
	        break;
        
	    case 98: // Boss Slayer
	        Icono = spr_Item_99;
	        break;
        
	    case 99: // Greed
	        Icono = spr_Item_100;
	        break;
			
	    case 100: // Minishots
	        Icono = spr_Item_101;
	        break;
        
	    case 101: // Adeadnalina
	        Icono = spr_Item_102;
	        arcadeBanned = true;
	        break;
        
	    case 102: // Giant Killer
	        Icono = spr_Item_103;
	        arcadeBanned = true;
	        break;
        
	    case 103: // Riposte
	        Icono = spr_Item_104;
	        break;
        
	    case 104: // Grind Book
	        Icono = spr_Item_105;
	        Usable = true;
	        Cargas = 20;
	        break;
        
	    case 105: // Life Pact
	        Icono = spr_Item_106;        
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
	        break;
        
	    case 106: // Pure Love
	        Icono = spr_Item_107;
	        Usable = true;
	        Cargas = 20;
	        break;
        
	    case 107: // The Orb
	        Icono = spr_Item_108;
	        break;
        
	    case 108: // Slime Hater
	        Icono = spr_Item_109;
	        Usable = true;
	        Cargas = 40;
	        break;
        
	    case 109: // Too Much Gold 
	        Icono = spr_Item_110;
			shopType = true;
	        break;
        
	    case 110: // Hocus Pocus
	        Icono = spr_Item_111;
	        Usable = true;
	        Cargas = 10;
	        break;
        
	    case 111: // Geocentric
	        Icono = spr_Item_112;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            obj_Jugador.Fuerza++;
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza = max(obj_Jugador.Fuerza, 1);
	            exit;
	        }
	        break;
        
	    case 112: // Emergency Wall
	        Icono = spr_Item_113;
                
                
                
	        Usable = true;
	        Cargas = 10;
	        break;
        
	    case 113: // Dungeon Charger
	        Icono = spr_Item_114;
	        break;
        
	    case 114: // Static Orb
	        Icono = spr_Item_115;
	        arcadeBanned = true;
	        Usable = true;
	        Cargas = 1;
	        break;
        
	    case 115: // Ricochet
	        Icono = spr_Item_116;
	        break;
        
	    case 116: // Boomerang
	        Icono = spr_Item_117;
			if(argument1 == 0) { obj_Jugador.Caida_Disparo += 10; }
	        if(argument1 == 9) { obj_Jugador.Caida_Disparo -= 10; }
	        break;   
        
	    case 117: // Bullet Explosion
	        Icono = spr_Item_118;
	        break;  
        
	    case 118: // Vortex Totem
	        Icono = spr_Item_119;
	        arcadeBanned = true;
	        Usable = true;
	        Cargas = 8;
	        break;  
        
	    case 119: // Ghost Bullets
	        Icono = spr_Item_120;
	        break;   
        
	    case 120: // Gravity Bullets
	        Icono = spr_Item_121;
	        break;  
        
	    case 121: // Gravity Bullets Caster
	        Icono = spr_Item_122;
	        Usable = true;
	        Cargas = 8;
	        break;  
        
	    case 122: // Lazer Beam
	        Icono = spr_Item_123;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Tipo_Municion = obj_Jugador_Disparo_Laser;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Tipo_Municion = obj_Jugador_Disparo;
	            exit;
	        }
	        break;  
        
	    case 123: // Amplifire
	        Icono = spr_Item_124;
	        break;  
        
	    case 124: // Shoot Da Whoop
	        Icono = spr_Item_125;
	        Usable = true;
	        Cargas = 4;
	        break;  
        
	    case 125: // Dwarf Army
	        Icono = spr_Item_126;
	        Usable = true;
	        Cargas = 10;
	        break;  
                
	    case 126: // Red Cthulhu Eye
	        Icono = spr_Item_127;
	        if(argument1 == 0) {
	            obj_Jugador.Bonus_Friend_Cthulhu = true;
	            exit;
	        }
	        if(argument1 == 9) {
	            obj_Jugador.Bonus_Friend_Cthulhu = false;
	            exit;
	        }
	        break;
                
	    case 127: // Blue Cthulhu Eye
	        Icono = spr_Item_128;
	        if(argument1 == 0) {
	            obj_Jugador.Bonus_Friend_Blue_Cthulhu = true;
	            exit;
	        }
	        if(argument1 == 9) {
	            obj_Jugador.Bonus_Friend_Blue_Cthulhu = false;
	            exit;
	        }
	        break;
                
	    case 128: // Green Cthulhu Eye
	        Icono = spr_Item_129;
	        if(argument1 == 0) {
	            obj_Jugador.Bonus_Friend_Green_Cthulhu = true;
	            exit;
	        }
	        if(argument1 == 9) {
	            obj_Jugador.Bonus_Friend_Green_Cthulhu = false;
	            exit;
	        }
	        break;
                
	    case 129: // Yellow Cthulhu Eye
	        Icono = spr_Item_130;
	        if(argument1 == 0) {
	            obj_Jugador.Bonus_Friend_Yellow_Cthulhu = true;
	            exit;
	        }
	        if(argument1 == 9) {
	            obj_Jugador.Bonus_Friend_Yellow_Cthulhu = false;
	            exit;
	        }
	        break;
                
	    case 130: // Panic Button
	        Icono = spr_Item_131;
			shopType = true;
	        break;
        
	    case 131: // Immortal Device
	        Icono = spr_Item_132;
	        Usable = true;
	        Cargas = 10;
			shopType = true;
	        break;  
        
	    case 132: // Black Lens
	        Icono = spr_Item_133;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            obj_Jugador.Fuerza++;
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza = max(obj_Jugador.Fuerza, 1);
	            exit;
	        }
	        break;  
        
	    case 133: // Get Down
	        Icono = spr_Item_134;
			arcadeBanned = true;
	        break;
        
	    case 134: // Golden Gauntlets
	        Icono = spr_Item_135;
	        break;
        
	    case 135: // Chaos Zone
	        Icono = spr_Item_136;
	        Usable = true;
	        Cargas = 10;
	        break; 
        
	    case 136: // Odd Mushroom
	        Icono = spr_Item_137;
	        Usable = true;
	        Cargas = 10;
			shopType = true;
	        break; 
        
	    case 137: // Rainbow Shots
	        Icono = spr_Item_138;
	        break; 
        
	    case 138: // Mono Cell
	        Icono = spr_Item_139;
	        Usable = true;
	        Cargas = 30;
	        break; 
        
	    case 139: // Drunken Fury
	        Icono = spr_Item_140;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza = max(obj_Jugador.Fuerza, 1);
	            exit;
	        }
	        break; 
        
	    case 140: // Barrier Destroyer
	        Icono = spr_Item_141;
	        Usable = true;
	        Cargas = 10;
	        break; 
        
	    case 141: // Bombs
	        Icono = spr_Item_142;
	        Usable = true;
	        Cargas = 10;
	        break; 
        
	    case 142: // Bomb Rain
	        Icono = spr_Item_143;
	        Usable = true;
	        Cargas = 20;
	        break; 
        
	    case 143: // Bomb Thrower (Skill)
	        Icono = spr_Item_144;
	        Usable = true;
	        Cargas = 15;
	        break;
        
	    case 144: // Bomb Thrower (Shoot)
	        Icono = spr_Item_145;
	        break;  
        
	    case 145: // Fakir
	        Icono = spr_Item_146;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza = max(obj_Jugador.Fuerza, 1);
	            exit;
	        }
	        break;
        
	    case 146: // Call Of Cthulhu
	        Icono = spr_Item_147;
	        break;  
        
	    case 147: // Armor Up!
	        Icono = spr_Item_148;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.HP_Max += 8;
	            obj_Jugador.HP += 8;
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Velocidad_H_Max -= 0.25;
	            obj_Jugador.Velocidad_V_Max -= 0.25;
	            if(obj_Jugador.Velocidad_H_Max < 0.25) obj_Jugador.Velocidad_H_Max = 0.25;
	            if(obj_Jugador.Velocidad_V_Max < 0.25) obj_Jugador.Velocidad_V_Max = 0.25;
	            if(obj_Jugador.Fuerza < 0.25) obj_Jugador.Fuerza = 0.25;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.HP_Max -= 8;
	            if(obj_Jugador.HP < obj_Jugador.HP_Max) obj_Jugador.HP = obj_Jugador.HP_Max;
	            obj_Jugador.Fuerza++;
	            obj_Jugador.Fuerza++;
	            obj_Jugador.Velocidad_H_Max += 0.25;
	            obj_Jugador.Velocidad_V_Max += 0.25;
	            exit;
	        }
	        break;
        
	    case 148: // Mind=Blown
	        Icono = spr_Item_149;
	        break;  
        
	    case 149: // Curiosity Cat
	        Icono = spr_Item_150;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
	        break;  
           
	    case 150: // Mark Target
	        Icono = spr_Item_151;
	        break; 
        
	    case 151: // Pull bullets
	        Icono = spr_Item_152;
	        break; 
        
	    case 152: // Mob Doctor
	        Icono = spr_Item_153;
	        break;  
        
	    case 153: // Mob Thief
	        Icono = spr_Item_154;
	        break; 
        
	    case 154: // Chaaaaarge!!
	        Icono = spr_Item_155;
	        Usable = true;
	        Cargas = 10;
	        break; 
        
	    case 155: // Firewalker
	        Icono = spr_Item_156;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Bonus_Firewalker = 1;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Bonus_Firewalker = 0;
	            exit;
	        }
	        break;
        
	    case 156: // Ring Armor
	        Icono = spr_Item_157;
	        break;  
        
	    case 157: // Semi Flash
	        Icono = spr_Item_158;
	        break; 
        
	    case 158: // Pickpocketing
	        Icono = spr_Item_159;
	        Usable = true;
	        Cargas = 15;
	        break; 
        
	    case 159: // Bomberbullets
	        Icono = spr_Item_160;
	        break; 
        
	    case 160: // The Hard Way
	        Icono = spr_Item_161;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Fuerza--;
	            exit;
	        }
	        break; 
        
	    case 161: // Gotta Go Fast
	        Icono = spr_Item_162;
	        break; 
        
	    case 162: // Shut Up
	        Icono = spr_Item_163;
	        break; 
        
	    case 163: // Portable Shop
	        Icono = spr_Item_164;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
			shopType = true;
	        break;
        
	    case 164: // Portable Health SHop
	        Icono = spr_Item_165;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
			shopType = true;
	        break;
        
	    case 165: // Hard Earned Money
	        Icono = spr_Item_166;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
			shopType = true;
	        break;
        
	    case 166: // Portable Sacriffice
	        Icono = spr_Item_167;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
			shopType = true;
	        break;
                
	    case 167: // Burning Place
	        Icono = spr_Item_168;
	        break; 
        
	    case 168: // Expensive Shield
	        Icono = spr_Item_169;
	        Usable = true;
	        Cargas = 5;
			shopType = true;
	        break;
                
	    case 169: // Triptocaine
	        Icono = spr_Item_170;
			shopType = true;
	        break; 
                
	    case 170: // We are not the champions
	        Icono = spr_Item_171;
	        break; 
        
	    case 171: // Change Me Up
	        Icono = spr_Item_172;
	        arcadeBanned = true;
	        Usable = true;
	        Cargas = 15;
	        break;
                
	    case 172: // Highlight
	        Icono = spr_Item_173;
	        break; 
                
	    case 173: // Get Off Me
	        Icono = spr_Item_174;
	        break; 
                
	    case 174: // Spiky Spikes
	        Icono = spr_Item_175;
	        break; 
                
	    case 175: // Hero Dagger
	        Icono = spr_Item_176;
	        break; 
        
	    case 176: // Ice Block
	        Icono = spr_Item_177;
                
                
                
	        Usable = true;
	        Cargas = 5;
	        break;
        
	    case 177: // Power Vial I
	        Icono = spr_Item_178;
                
                
                
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	            obj_Jugador.Fuerza--;
	            exit;
	        }
	        break; 
        
	    case 178: // Power Vial II
	        Icono = spr_Item_179;
                
                
                
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	            obj_Jugador.Fuerza--;
	            exit;
	        }
	        break; 
        
	    case 179: // Power Vial III
	        Icono = spr_Item_180;
                
                
                
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	            obj_Jugador.Fuerza--;
	            exit;
	        }
	        break; 
        
	    case 180: // Power Vial IV
	        Icono = spr_Item_181;
                
                
                
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	            obj_Jugador.Fuerza--;
	            exit;
	        }
	        break; 
        
	    case 181: // Power Vial V
	        Icono = spr_Item_182;
                
                
                
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	            obj_Jugador.Fuerza--;
	            exit;
	        }
	        break;
        
	    case 182: // Power Vial VI
	        Icono = spr_Item_183;
                
                
                
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Fuerza++;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	            obj_Jugador.Fuerza--;
	            exit;
	        }
	        break;  
        
	    case 183: // Hover Boots
	        Icono = spr_Item_184;
	        Usable = true;
	        Cargas = 10;
	        break;
                
	    case 184: // Gold Cthulhu Eye
	        Icono = spr_Item_185;
	        if(argument1 == 0) {
	            obj_Jugador.Bonus_Friend_Gold_Cthulhu = true;
	            exit;
	        }
	        if(argument1 == 9) {
	            obj_Jugador.Bonus_Friend_Gold_Cthulhu = false;
	            exit;
	        }
	        break;
                
	    case 185: // Arachnophobia
	        Icono = spr_Item_186;
	        break; 
        
	    case 186: // Bomb Mask
	        Icono = spr_Item_187;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
			shopType = true;
	        break;
                
	    case 187: // Welcome
	        Icono = spr_Item_188;
	        break; 
        
	    case 188: // The Wizard
	        Icono = spr_Item_189;
	        arcadeBanned = true;
	        Usable = true;
	        Cargas = 20;
	        break;
        
	    case 189: // 100 Punch Man
	        Icono = spr_Item_190;
	        Usable = true;
	        Cargas = 20;
	        break;
        
	    case 190: // Shooting Vial I
	        Icono = spr_Item_191;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Cadencia_Disparo += 2;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	            obj_Jugador.Cadencia_Disparo -= 2;
	            exit;
	        }
	        break; 
        
	    case 191: // Shooting Vial II
	        Icono = spr_Item_192;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Cadencia_Disparo += 2;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	            obj_Jugador.Cadencia_Disparo -= 2;
	            exit;
	        }
	        break; 
        
	    case 192: // Shooting Vial III
	        Icono = spr_Item_193;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Cadencia_Disparo += 2;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	            obj_Jugador.Cadencia_Disparo -= 2;
	            exit;
	        }
	        break; 
        
	    case 193: // Boats and coins
	        Icono = spr_Item_194;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
			shopType = true;
	        break;
                
	    case 194: // Luck Necklace
	        Icono = spr_Item_195;
	        break; 
                
	    case 195: // Tension Relax
	        Icono = spr_Item_196;
	        break; 
                
	    case 196: // Bomb Pots
	        Icono = spr_Item_197;
	        break; 
                
	    case 197: // Speed Vial I
	        Icono = spr_Item_198;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Velocidad_H_Max += 0.25;
	            obj_Jugador.Velocidad_V_Max += 0.25;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Velocidad_H_Max -= 0.25;
	            obj_Jugador.Velocidad_V_Max -= 0.25;
	            exit;
	        }
	        break; 
                
	    case 198: // Speed Vial II
	        Icono = spr_Item_199;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Velocidad_H_Max += 0.25;
	            obj_Jugador.Velocidad_V_Max += 0.25;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Velocidad_H_Max -= 0.25;
	            obj_Jugador.Velocidad_V_Max -= 0.25;
	            exit;
	        }
	        break; 
                
	    case 199: // Speed Vial III
	        Icono = spr_Item_200;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Velocidad_H_Max += 0.25;
	            obj_Jugador.Velocidad_V_Max += 0.25;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Velocidad_H_Max -= 0.25;
	            obj_Jugador.Velocidad_V_Max -= 0.25;
	            exit;
	        }
	        break; 
           
	    case 200: // Expensive Health
	        Icono = spr_Item_201;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
			shopType = true;
	        break;
        
	    case 201: // Two Face Dice
	        Icono = spr_Item_202;
	        Usable = true;
	        Cargas = 10;
	        break;
                
	    case 202: // The Engineer
	        Icono = spr_Item_203;
	        arcadeBanned = true;
	        break; 
                
	    case 203: // Cloth Jacket
	        Icono = spr_Item_204;
	        Boss_Type = true;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.HP_Max += 2;
	            obj_Jugador.HP += 2;
	            exit;
	        }
	        if(argument1 == 9) { // Retirar bonus
	            obj_Jugador.HP_Max -= 2;
	            if(obj_Jugador.HP < obj_Jugador.HP_Max) obj_Jugador.HP = obj_Jugador.HP_Max;
	            exit;
	        }
	        break;
                
	    case 204: // Leather Jacket
	        Icono = spr_Item_205;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2; exit; }
	        if(argument1 == 9) { obj_Jugador.HP_Max -= 2; if(obj_Jugador.HP < obj_Jugador.HP_Max) obj_Jugador.HP = obj_Jugador.HP_Max; exit; }
	        break;
                
	    case 205: // Chain Plate
	        Icono = spr_Item_206;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2; exit; }
	        if(argument1 == 9) { obj_Jugador.HP_Max -= 2; if(obj_Jugador.HP < obj_Jugador.HP_Max) obj_Jugador.HP = obj_Jugador.HP_Max; exit; }
	        break;
                
	    case 206: // Silver Plate
	        Icono = spr_Item_207;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.HP_Max += 2; obj_Jugador.HP += 2; exit; }
	        if(argument1 == 9) { obj_Jugador.HP_Max -= 2; if(obj_Jugador.HP < obj_Jugador.HP_Max) obj_Jugador.HP = obj_Jugador.HP_Max; exit; }
	        break;
                
	    case 207: // Gold Plate
	        Icono = spr_Item_208;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.HP_Max += 4; obj_Jugador.HP += 4; exit;}
	        if(argument1 == 9) { obj_Jugador.HP_Max -= 4; if(obj_Jugador.HP < obj_Jugador.HP_Max) obj_Jugador.HP = obj_Jugador.HP_Max; exit; }
	        break;
                
	    case 208: // Blade
	        Icono = spr_Item_209;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Fuerza++; exit; }
	        if(argument1 == 9) { obj_Jugador.Fuerza--; exit; }
	        break;
                
	    case 209: // Flamesword
	        Icono = spr_Item_210;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Fuerza++; obj_Jugador.Cadencia_Disparo += 1; exit; }
	        if(argument1 == 9) { obj_Jugador.Fuerza--; obj_Jugador.Cadencia_Disparo = max(1,obj_Jugador.Cadencia_Disparo-1); exit; }
	        break;
                
	    case 210: // Icesword
	        Icono = spr_Item_211;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Fuerza++; obj_Jugador.Cadencia_Disparo += 1; exit; }
	        if(argument1 == 9) { obj_Jugador.Fuerza--; obj_Jugador.Cadencia_Disparo = max(1,obj_Jugador.Cadencia_Disparo-1); exit; }
	        break;
                
	    case 211: // Windsword
	        Icono = spr_Item_212;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Cadencia_Disparo += 2; exit; }
	        if(argument1 == 9) { obj_Jugador.Cadencia_Disparo = max(1,obj_Jugador.Cadencia_Disparo-2); exit; }
	        break;
                
	    case 212: // Terrasword
	        Icono = spr_Item_213;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Fuerza+=3; obj_Jugador.Cadencia_Disparo = max(1,obj_Jugador.Cadencia_Disparo-2); exit; }
	        if(argument1 == 9) { obj_Jugador.Fuerza-=3; obj_Jugador.Cadencia_Disparo += 2; exit; }
	        break;
                
	    case 213: // Nova
	        Icono = spr_Item_214;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Fuerza+=2; exit; }
	        if(argument1 == 9) { obj_Jugador.Fuerza-=2; exit; }
	        break;
                
	    case 214: // Silver Bow
	        Icono = spr_Item_215;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Caida_Disparo += 50; exit; }
	        if(argument1 == 9) { obj_Jugador.Caida_Disparo -= 50; exit; }
	        break;        
                
	    case 215: // Obsidian Bow
	        Icono = spr_Item_216;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Caida_Disparo += 50; exit; }
	        if(argument1 == 9) { obj_Jugador.Caida_Disparo -= 50; exit; }
	        break;        
                
	    case 216: // Golden Bow
	        Icono = spr_Item_217;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Caida_Disparo += 50; exit; }
	        if(argument1 == 9) { obj_Jugador.Caida_Disparo -= 50; exit; }
	        break;       
                
	    case 217: // Hell Bow
	        Icono = spr_Item_218;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Caida_Disparo += 250; exit; }
	        if(argument1 == 9) { obj_Jugador.Caida_Disparo -= 250; exit; }
	        break;       
                
	    case 218: // Exp Stealer
	        Icono = spr_Item_219;
	        break; 
                   
	    case 219: // Green Magnet
	        Icono = spr_Item_220;
	        Usable = true;
	        Cargas = 10;
	        break;     
                
	    case 220: // P2W
	        Icono = spr_Item_221;
			shopType = true;
	        break; 
                
	    case 221: // Turbo Mode
	        Icono = spr_Item_222;
	        break;
                   
	    case 222: // Key Generator
	        Icono = spr_Item_223;
	        Usable = true;
	        Cargas = 20;
	        break;  
                   
	    case 223: // Bomb Generator
	        Icono = spr_Item_224;
	        Usable = true;
	        Cargas = 20;
	        break;  
                
	    case 224: // Watchman
	        Icono = spr_Item_225;
			shopType = true;
	        break;
                
	    case 225: // Bomb Saver
	        Icono = spr_Item_226;
			shopType = true;
	        break;
                
	    case 226: // Hands Down!
	        Icono = spr_Item_227;
	        break;
                
	    case 227: // Another Kind Of Rainbow
	        Icono = spr_Item_228;
	        break;
                   
	    case 228: // The Gang
	        Icono = spr_Item_229;
	        Usable = true;
	        Cargas = 15;
	        break;  
                   
	    case 229: // Deathmatch
	        Icono = spr_Item_230;
	        Usable = true;
	        Cargas = 25;
	        break;  
                   
	    case 230: // Word: Strength
	        Icono = spr_Item_231;
	        Usable = true;
	        Cargas = 1;
	        oneUse = true;
	        break; 
                   
	    case 231: // Word: Bullets
	        Icono = spr_Item_232;
	        Usable = true;
	        Cargas = 1;
	        oneUse = true;
	        break; 
                   
	    case 232: // Word: Health
	        Icono = spr_Item_233;
	        Usable = true;
	        Cargas = 1;
	        oneUse = true;
	        break; 
                   
	    case 233: // Word: Wealth
	        Icono = spr_Item_234;
	        Usable = true;
	        Cargas = 1;
	        oneUse = true;
	        break; 
                   
	    case 234: // Word: Death
	        Icono = spr_Item_235;
	        Usable = true;
	        Cargas = 1;
	        oneUse = true;
	        break; 
                   
	    case 235: // Word: Focus
	        Icono = spr_Item_236;
	        Usable = true;
	        Cargas = 1;
	        oneUse = true;
	        break; 
                
	    case 236: // Red Gem
	        Icono = spr_Item_237;
	        Boss_Type = true;
	        if(argument1 == 0) { global.Jugador_Monedas += 8; exit; }
	        if(argument1 == 9) { global.Jugador_Monedas -= 8; if(global.Jugador_Monedas < 0) global.Jugador_Monedas = 0; exit; }
	        break;
                
	    case 237: // Blue Gem
	        Icono = spr_Item_238;
	        Boss_Type = true;
	        if(argument1 == 0) { global.Jugador_Monedas += 12; exit; }
	        if(argument1 == 9) { global.Jugador_Monedas -= 12; if(global.Jugador_Monedas < 0) global.Jugador_Monedas = 0; exit; }
	        break;
                
	    case 238: // Yellow Gem
	        Icono = spr_Item_239;
	        Boss_Type = true;
	        if(argument1 == 0) { global.Jugador_Monedas += 20; exit; }
	        if(argument1 == 9) { global.Jugador_Monedas -= 20; if(global.Jugador_Monedas < 0) global.Jugador_Monedas = 0; exit; }
	        break;
                
	    case 239: // Purple Gem
	        Icono = spr_Item_240;
	        Boss_Type = true;
	        if(argument1 == 0) { global.Jugador_Monedas += 50; exit; }
	        if(argument1 == 9) { global.Jugador_Monedas -= 50; if(global.Jugador_Monedas < 0) global.Jugador_Monedas = 0; exit; }
	        break;
                
	    case 240: // Deodorant
	        Icono = spr_Item_241;
	        break;     
                
	    case 241: // Hyper Bullets
	        Icono = spr_Item_242;
	        if(argument1 == 0) { obj_Jugador.Caida_Disparo = max(obj_Jugador.Caida_Disparo-500,0); obj_Jugador.Fuerza+=6; exit; }
	        if(argument1 == 9) { obj_Jugador.Caida_Disparo += 500; obj_Jugador.Fuerza-=6; exit; }
	        break;  
                
	    case 242: // USB-C
	        Icono = spr_Item_243;
			shopType = true;
	        break; 
                
	    case 243: // RHCP
	        Icono = spr_Item_244;
	        break;
                   
	    case 244: // Rocket Spawner MK.I
	        Icono = spr_Item_245;
	        Usable = true;
	        Cargas = 40;
	        break;   
                   
	    case 245: // Rocket Spawner MK.II
	        Icono = spr_Item_246;
	        Usable = true;
	        Cargas = 7;
	        break;  
                
	    case 246: // Rocket Spawner MK.III
	        Icono = spr_Item_247;
	        break; 
                
	    case 247: // Lucky Rockets
	        Icono = spr_Item_248;
	        break; 
                
	    case 248: // Rockets Inside
	        Icono = spr_Item_249;
	        break; 
                
	    case 249: // RHCR
	        Icono = spr_Item_250;
	        break; 
                             
	    case 250: // Expensive Rocket
	        Icono = spr_Item_251;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
			shopType = true;
	        break; 
                
	    case 251: // Bloody Rocket
	        Icono = spr_Item_252;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
			shopType = true;
	        break;  
                
	    case 252: // Big Bad Rockets
	        Icono = spr_Item_253;
	        break; 
        
	    case 253: // Size Potion
	        Icono = spr_Item_254;
			shopType = true;
	        if(argument1 == 0) { // Otorgar bonus
	            obj_Jugador.Lives++;
	            obj_Jugador.Cadencia_Disparo += 1;
	            obj_Jugador.Fuerza++;
	            obj_Jugador.HP_Max += 2;
	            obj_Jugador.HP += 2;
	            exit;
	        }
	        if(argument1 == 9) { // Otorgar bonus
	            obj_Jugador.Lives--;
	            obj_Jugador.Fuerza--;
	            obj_Jugador.Cadencia_Disparo -= 1;
	            obj_Jugador.HP_Max -= 2;
	            if(obj_Jugador.HP < obj_Jugador.HP_Max) obj_Jugador.HP = obj_Jugador.HP_Max;
	            exit;
	        }
	        break;
        
	    case 254: // Fairy Wings
	        Icono = spr_Item_255;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Lives += 1; obj_Jugador.Flying = true;  obj_Jugador.sprWings = sprFairyWings; exit; }
	        if(argument1 == 9) { obj_Jugador.Lives -= 1; obj_Jugador.Flying = false; exit; }
	        break;
        
	    case 255: // Fake Angel Wings
	        Icono = spr_Item_256;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Lives += 1; obj_Jugador.Flying = true;  obj_Jugador.sprWings = sprPlayerWings;  exit; }
	        if(argument1 == 9) { obj_Jugador.Lives -= 1; obj_Jugador.Flying = false; exit; }
	        break;
        
	    case 256: // Devil Wings
	        Icono = spr_Item_257;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Lives += 1; obj_Jugador.Flying = true;  obj_Jugador.sprWings = sprDemonWings;  exit; }
	        if(argument1 == 9) { obj_Jugador.Lives -= 1; obj_Jugador.Flying = false; exit; }
	        break;
        
	    case 257: // Amethyst Staff
	        Icono = spr_Item_258;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Penetracion_Disparo++; exit; }
	        if(argument1 == 9) { obj_Jugador.Penetracion_Disparo--; exit; }
	        break;
        
	    case 258: // Topaz Staff
	        Icono = spr_Item_259;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Penetracion_Disparo++; exit; }
	        if(argument1 == 9) { obj_Jugador.Penetracion_Disparo--; exit; }
	        break;
        
	    case 259: // Ruby Staff
	        Icono = spr_Item_260;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Penetracion_Disparo++; exit; }
	        if(argument1 == 9) { obj_Jugador.Penetracion_Disparo--; exit; }
	        break;
        
	    case 260: // Flash
	        Icono = spr_Item_261;
	        break;
        
	    case 261: // Big Bombs
	        Icono = spr_Item_262;
	        break;
        
	    case 262: // Experience Bombs
	        Icono = spr_Item_263;
	        break;
        
	    case 263: // Sharpen
	        Icono = spr_Item_264;
	        break;
        
	    case 264: // Digital Sales
	        Icono = spr_Item_265;
			shopType = true;
	        break;
                
	    case 265: // Damage Rune
	        Icono = spr_Item_266;
	        Usable = true;
	        Cargas = 12;
	        break;  
                
	    case 266: // Health Rune
	        Icono = spr_Item_267;
	        Usable = true;
	        Cargas = 25;
	        break;  
                
	    case 267: // Cadence Rune
	        Icono = spr_Item_268;
	        Usable = true;
	        Cargas = 12;
	        break;  
                
	    case 268: // Usable Rune
	        Icono = spr_Item_269;
	        Usable = true;
	        Cargas = 30;
	        break;  
                
	    case 269: // Speedrun Desiree
	        Icono = spr_Item_270;
	        arcadeBanned = true;
	        Usable = true;
	        Cargas = 1;
	        oneUse = true;
	        break;  
                
	    case 270: // Cinnamon
	        Icono = spr_Item_271;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
	        break;  
        
	    case 271: // Rocket Bombs
	        Icono = spr_Item_272;
	        break;
        
	    case 272: // Rockets in Pots
	        Icono = spr_Item_273;
	        break;
        
	    case 273: // Damage Quest
	        Icono = spr_Item_274;
	        Usable = true;
	        Cargas = 200;
	        Filled = false;
	        break;
        
	    case 274: // Health Quest
	        Icono = spr_Item_275;
	        Usable = true;
	        Cargas = 200;
	        Filled = false;
	        break;
        
	    case 275: // Leveling Quest
	        Icono = spr_Item_276;
	        Usable = true;
	        Cargas = 200;
	        Filled = false;
	        break;
        
	    case 276: // Incessant Fire
	        Icono = spr_Item_277;
	        break;
        
	    case 277: // One Frame Bomb
	        Icono = spr_Item_278;
	        break;
        
	    case 278: // The Last Item 
	        Icono = spr_Item_279;
	        if(argument1 == 0) { 
	            obj_Jugador.Cadencia_Disparo += 3;
	            obj_Jugador.Fuerza+=10;
	            obj_Jugador.HP_Max += 8;
	            obj_Jugador.HP += 8;
	            exit; 
	            }
	        if(argument1 == 9) { 
	            obj_Jugador.Cadencia_Disparo -= 3;
	            obj_Jugador.Fuerza-=10;
	            obj_Jugador.HP_Max -= 8;
	            obj_Jugador.HP -= 8;
	            exit; 
	        }
	        break;
                
	    case 279: // Life Infuser
	        Icono = spr_Item_280;
	        Usable = true;
	        Cargas = 25;
	        break;
        
	    case 280: // Little Me
	        Icono = spr_Item_281;
	        if(argument1 == 0) and (find_little_one(argument[0]) == false) {
	            var lil = instance_create(obj_Jugador.x,obj_Jugador.y,obj_LittleMe);
	            lil.ID = argument[0];
	            lil.shootRate = 40;
	        }
	        break;
        
	    case 281: // Little Ghost
	        Icono = spr_Item_282;
	        if(argument1 == 0) and (find_little_one(argument[0]) == false) {
	            var lil = instance_create(obj_Jugador.x,obj_Jugador.y,obj_LittleMe);
	            lil.ID = argument[0];
	            lil.image_alpha = 0.75;
	            lil.image_blend = c_gray;
	            lil.ghost_bullets = true;
	            lil.shootRate = 70;
	        }
	        break;
        
	    case 282: // Little Piercer
	        Icono = spr_Item_283;
	        if(argument1 == 0) and (find_little_one(argument[0]) == false) {
	            var lil = instance_create(obj_Jugador.x,obj_Jugador.y,obj_LittleMe);
	            lil.ID = argument[0];
	            lil.image_blend = c_lime;
	            lil.pierce_bullets = true;
	            lil.shootRate = 65;
	        }
	        break;
        
	    case 283: // Little Lazer
	        Icono = spr_Item_284;
	        if(argument1 == 0) and (find_little_one(argument[0]) == false) {
	            var lil = instance_create(obj_Jugador.x,obj_Jugador.y,obj_LittleMe);
	            lil.ID = argument[0];
	            lil.image_blend = c_red;
	            lil.lazer = true;
	            lil.shootRate = 45;
	        }
	        break;
        
	    case 284: // Little Ninja
	        Icono = spr_Item_285;
	        if(argument1 == 0) and (find_little_one(argument[0]) == false) {
	            var lil = instance_create(obj_Jugador.x,obj_Jugador.y,obj_LittleMe);
	            lil.ID = argument[0];
	            lil.image_blend = c_purple;
	            lil.shurikens = true;
	            lil.shootRate = 50;
	        }
	        break;
        
	    case 285: // Heavy Helmet
	        Icono = spr_Item_286;
	        break;
        
	    case 286: // Overvalued Health
	        Icono = spr_Item_287;
	        Usable = true;
	        Cargas = 1;
	        oneUse = true;
			shopType = true;
	        break;
            
	    case 287: // Blind Man's Buff
	        Icono = spr_Item_288;
	        break;
                
	    case 288: // Slow but safe
	        Icono = spr_Item_289;
			arcadeBanned = true;
	        break;
        
	    case 289: // Leather Boots
	        Icono = spr_Item_290;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Velocidad_H_Max += 0.25; obj_Jugador.Velocidad_V_Max += 0.25; exit; }
	        if(argument1 == 9) { obj_Jugador.Velocidad_H_Max -= 0.25; obj_Jugador.Velocidad_V_Max -= 0.25; exit; }
	        break;
        
	    case 290: // Silver Boots
	        Icono = spr_Item_291;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Velocidad_H_Max += 0.25; obj_Jugador.Velocidad_V_Max += 0.25; exit; }
	        if(argument1 == 9) { obj_Jugador.Velocidad_H_Max -= 0.25; obj_Jugador.Velocidad_V_Max -= 0.25; exit; }
	        break;
        
	    case 291: // Golden Boots
	        Icono = spr_Item_292;
	        Boss_Type = true;
	        if(argument1 == 0) { obj_Jugador.Velocidad_H_Max += 0.50; obj_Jugador.Velocidad_V_Max += 0.50; exit; }
	        if(argument1 == 9) { obj_Jugador.Velocidad_H_Max -= 0.50; obj_Jugador.Velocidad_V_Max -= 0.50; exit; }
	        break;
                
	    case 292: // Fast Killer
	        Icono = spr_Item_293;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
	        break;
                
	    case 293: // Pay To Kill
	        Icono = spr_Item_294;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
	        break;
                
	    case 294: // Pots Explosion
	        Icono = spr_Item_295;
	        Usable = true;
	        Cargas = 15;
	        break;
                
	    case 295: // LEVEL UP!
	        Icono = spr_Item_296;
	        break;
        
	    case 296: // Little Rocketman
	        Icono = spr_Item_297;
	        if(argument1 == 0) and (find_little_one(argument[0]) == false) {
	            var lil = instance_create(obj_Jugador.x,obj_Jugador.y,obj_LittleMe);
	            lil.ID = argument[0];
	            lil.image_blend = c_orange;
	            lil.rockets = true;
	            lil.shootRate = 250;
	        }
	        break;
                
	    case 297: // Toxic Bullets
	        Icono = spr_Item_298;
	        break;
                
	    case 298: // Asymetric arms
	        Icono = spr_Item_299;
	        break;
                
	    case 299: // Baseball Bat
	        Icono = spr_Item_300;
	        if(argument1 == 0) { obj_Jugador.Knockback += 20; exit; }
	        if(argument1 == 9) { obj_Jugador.Knockback -= 20; exit; }
	        break;
                            
	    case 300: // .
	        Icono = spr_Item_301;
	        Usable = true;
	        Cargas = 999;
	        Filled = false;
	        break;
                
	    case 301: // The Goddess
	        Icono = spr_Item_302;
			Boss_Type = true;
	        if(argument1 == 0) { repeat(2) {player_level_up();} exit; }
	        break;
                
	    case 302: // Glue
	        Icono = spr_Item_303;
	        break;
                            
	    case 303: // Rock Rain
	        Icono = spr_Item_304;
	        Usable = true;
	        Cargas = 20;
	        break;
                
	    case 304: // Area bombs
	        Icono = spr_Item_305;
	        break;
                
	    case 305: // Cluster bombs
	        Icono = spr_Item_306;
	        break;
                
	    case 306: // Remote Control
	        Icono = spr_Item_307;
	        break;
                
	    case 307: // Glitch
	        Icono = spr_Item_308;
			if(argument1 == 0) { obj_Jugador.Fuerza += 2; exit; }
	        if(argument1 == 9) { obj_Jugador.Fuerza -= 2; exit; }
	        break;
                
	    case 308: // Sudden Reward
	        Icono = spr_Item_309;
			arcadeBanned = true;
	        break;
                            
	    case 309: // Alpha
	        Icono = spr_Item_310;
	        Usable = true;
	        Cargas = 20;
			shopType = true;
			arcadeBanned = true;
	        break;
                
	    case 310: // Russian Roulette
	        Icono = spr_Item_311;
			if(argument1 == 0) { obj_Jugador.Fuerza += 999; exit; }
	        if(argument1 == 9) { obj_Jugador.Fuerza -= 999; exit; }
	        break;
                
	    case 311: // Sticky Bullets
	        Icono = spr_Item_312;
	        break;
                
	    case 312: // Bullet Bombs
	        Icono = spr_Item_313;
	        break;
                
	    case 313: // Bullet Extruder
	        Icono = spr_Item_314;
	        Usable = true;
	        Cargas = 1;
	        Reusable = true;
	        break;
                
	    case 314: // Small Room
	        Icono = spr_Item_315;
			arcadeBanned = true;
	        break;
                
	    case 315: // Big Room
	        Icono = spr_Item_316;
			arcadeBanned = true;
	        break;
                
	    case 316: // Ram
	        Icono = spr_Item_317;
			arcadeBanned = true;
	        break;
                
	    case 317: // Shop Door
	        Icono = spr_Item_318;
			arcadeBanned = true;
	        break;
                
	    case 318: // Treasure Door
	        Icono = spr_Item_319;
			arcadeBanned = true;
	        break;
                
	    case 319: // Full Charge
	        Icono = spr_Item_320;
			shopType = true;
	        break;
                
	    case 320: // No Charge
	        Icono = spr_Item_321;
			shopType = true;
	        break;
                
	    case 321: // Rage
	        Icono = spr_Item_322;
	        break;
                
	    case 322: // Powered Bullets
	        Icono = spr_Item_323;
	        break;
                
	    case 323: // Aura Bullets
	        Icono = spr_Item_324;
	        break;
                
	    case 324: // Chest Generator
	        Icono = spr_Item_325;
	        Usable = true;
	        Cargas = 99;
			arcadeBanned = true;
	        break;
                
	    case 325: // Bullet Nova
	        Icono = spr_Item_326;
	        break;
                
	    case 326: // Sack Of Bombs
	        Icono = spr_Item_327;
			Usable = true;
			Cargas = 1;
	        break;
                
	    case 327: // Bomb Keys
	        Icono = spr_Item_328;
			arcadeBanned = true;
	        break;
                
	    case 328: // Coil Lazers
	        Icono = spr_Item_329;
	        break;
                
	    case 329: // Pulse Wave
	        Icono = spr_Item_330;
	        break;
                
	    case 330: // Blue-r Fire
	        Icono = spr_Item_331;
	        break;
                
	    case 331: // Bullet Hell
	        Icono = spr_Item_332;
	        break;
                
	    case 332: // Dragon Head
	        Icono = spr_Item_333;
	        break;
                
	    case 333: // Tiny Bones
	        Icono = spr_Item_334;
	        break;
                
	    case 334: // Electrify
	        Icono = spr_Item_335;
	        break;
                
	    case 335: // Mass Envenom
	        Icono = spr_Item_336;
			Usable = true;
			Cargas = 20;
	        break;
                
	    case 336: // Snowball Effect
	        Icono = spr_Item_337;
	        break;
                
	    case 337: // Coin Explosion
	        Icono = spr_Item_338;
	        break;
                
	    case 338: // Bullet Exploder
	        Icono = spr_Item_339;
			Usable = true;
			Cargas = 20;
	        break;
                
	    case 339: // Toxic Caster
	        Icono = spr_Item_340;
			Usable = true;
			Cargas = 20;
	        break;
                
	    case 340: // Reinforcements
	        Icono = spr_Item_341;
	        break;
                
	    case 341: // Stone Clone
	        Icono = spr_Item_342;
			Usable = true;
			Cargas = 15;
	        break;
                
	    case 342: // Non Secret Rooms
	        Icono = spr_Item_343;
			arcadeBanned = true;
	        break;
                
	    case 343: // Desperado
	        Icono = spr_Item_344;
			Usable = true;
			Cargas = 10;
	        break;
                
	    case 344: // Cthulhu's Tail
	        Icono = spr_Item_345;
	        break;
		
		case 345: // Winning Rockets
			Icono = spr_Item_346;
			break;
		
		case 346: // Magnetic Bombs
			Icono = spr_Item_347;
			break;
		
		case 347: // Euphoria
			Icono = spr_Item_348;
			if(argument1 == 0) { obj_Jugador.Fuerza += 2; exit; }
	        if(argument1 == 9) { obj_Jugador.Fuerza -= 2; exit; }
			break;
		
		case 348: // Spike Trail
			Icono = spr_Item_349;
			break;
		
		case 349: // Flying Skull
			Icono = spr_Item_350;
			break;
		
		case 350: // Big Bad Bombs
			Icono = spr_Item_351;
			break;
      
	    // SPECIAL ITEMS (!! Revisar traducciones)
	    case 500: // The Finger
	        Icono = spr_Item_500;
	        levelCost = 4;
	        break;  
                
	    case 501: // The Scythe
	        Icono = spr_Item_501;
	        levelCost = 3;
	        break;  
                
	    case 502: // Fire Trail
	        Icono = spr_Item_502;
	        levelCost = 2;
	        Usable = true;
	        Cargas = 25;
	        Filled = false;
	        break;  
                
	    case 503: // Auto Aim
	        Icono = spr_Item_503;
	        levelCost = 2;
	        break; 
                
	    case 504: // Cthulhu Aura
	        Icono = spr_Item_504;
	        levelCost = 3;
	        break;  
                
	    case 505: // Pray
	        Icono = spr_Item_505;
	        Usable = true;
	        Reusable = true;
	        Cargas = 1;
	        levelCost = 10;
	        break;    
        
	}
  
	// Special cases (special events)
	switch(argument0) {
	    case 800: Icono = spr_Tesoro_Very_Bad_Choice;	break; // Very Bad Choice
	    case 801: Icono = spr_Tesoro_Bad_Choice;		break; // Bad Choice
	    case 802: Icono = spr_Tesoro_Good_Choice;		break; // Good Choice
	    case 803: Icono = sprPickupKey;					break; // Pickups
	    case 804: Icono = sprExtraHeart;				break; // Pickups
	    case 805: Icono = sprPickupBomb;				break; // Pickups
	    case 806: Icono = sprDisparoRocket;				break; // Pickups
	    case 998: Icono = sprSlimekingCrown;			break; // Slimeking's Crown
	    case 999: Icono = sprSlimekingMoustache;		break; // Slimeking's Moustache
	}

	// Devolver la informacion pedida
	switch(argument1) {
	    case 2: return Nombre; break;
	    case 3: return Icono; break;
	    case 4: return Descripcion; break;
	    case 5: return Precio; break;
	    case 6: return Usable; break;
	    case 7: return Cargas; break;
	    case 8: return Descripcion_Extendida; break;
	 /* case 9: reservado para desactivacion de item */
	    case 10: return Boss_Type; break;
	    case 11: return Reusable; break;
	    case 12: return levelCost; break;
	    case 13: return oneUse; break;
	    case 14: return Filled; break;
	    case 15: return arcadeBanned; break;
	    case 16: return shopType; break;
	}



}
