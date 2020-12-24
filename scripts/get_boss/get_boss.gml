/// @description get_boss(id,type)
/// @function get_boss
/// @param id
/// @param type
function get_boss(argument0, argument1) {

	// Data
	var Instancia, Nombre;
	var Sprite, Sonido_Muerte;
	var petID = -1;
	var HP = 1;
	var Rush;
	Sonido_Muerte = snd_Slime_Die;
	Instancia = -1;
	Rush = false;
	boss = true;

	// Devuelve el dato pedido del enemigo dada su ID
	switch( real(argument0) ) {

	    case 0: // Super Slime
	        Instancia = obj_Jefe_SuperSlime;
	        Sprite = spr_Jefe_BlueSlime;
	        Nombre = "Blue Slime";
	        HP = 150;
	        petID = 23;
			Rush = true;
	        break;

	    case 1: // Gray Super Slime
	        Instancia = obj_Jefe_BlackSlime;
	        Sprite = spr_Jefe_BlackSlime;
	        Nombre = "Gray Slime";
	        HP = 250;
	        petID = 24;
			Rush = true;
	        break;

	    case 2: // Purple Super Slime
	        Instancia = obj_Jefe_PurpleSlime;
	        Sprite = spr_Jefe_PurpleSlime;
	        Nombre = "Purple Slime";
	        HP = 150;
	        petID = 25;
			Rush = true;
	        break;

	    case 3: // Orange Super Slime
	        Instancia = obj_Jefe_OrangeSlime;
	        Sprite = spr_Jefe_OrangeSlime;
	        Nombre = "Orange Slime";
	        HP = 5;
	        petID = 26;
	        break;
        
	    case 4: // Green Super Slime
	        Instancia = obj_Jefe_GreenSlime;
	        Sprite = spr_Green_SuperSlime;
	        Nombre = "Green Slime";
	        HP = 150;
	        petID = 27;
			Rush = true;
	        break;
        
	    case 5: // Red Super Slime
	        Instancia = obj_Jefe_RedSlime;
	        Sprite = spr_Red_SuperSlime;
	        Nombre = "Red Slime";
	        HP = 150;
	        petID = 28;
			Rush = true;
	        break;

	    case 6: // Black Super Slime
	        Instancia = obj_Jefe_RealBlackSlime;
	        Sprite = spr_RealBlack_SuperSlime;
	        Nombre = "Black Slime";
	        HP = 100;
	        petID = 29;
			Rush = true;
	        break;

	    case 7: // Yellow Super Slime
	        Instancia = obj_Jefe_YellowSlime;
	        Sprite = spr_Yellow_SuperSlime;
	        Nombre = "Yellow Slime";
	        HP = 250;
	        petID = 30;
			Rush = true;
	        break;

	    case 8: // White Super Slime
	        Instancia = obj_Jefe_WhiteSlime;
	        Sprite = spr_Jefe_WhiteSlime;
	        Nombre = "White Slime";
	        Sonido_Muerte = snd_Slime_Die;
	        HP = 50;
	        petID = 31;
	        break;

	    case 9: // Aqua Super Slime
	        Instancia = obj_Jefe_AquaSlime;
	        Sprite = spr_Jefe_AquaSlime;
	        Nombre = "Aqua Slime";
	        HP = 200;
	        petID = 32;
			Rush = true;
	        break;

	    case 10: // Glow Super Slime
	        Instancia = obj_Jefe_GlowSlime;
	        Sprite = spr_Jefe_GlowSlime;
	        Nombre = "Glow Slime";
	        HP = 200;
	        petID = 33;
	        break;

	    case 11: // Shadow Super Slime
	        Instancia = obj_Jefe_ShadowSlime;
	        Sprite = spr_Shadow_SuperSlime;
	        Nombre = "Shadow Slime";
	        HP = 100;
	        petID = 34;
	        break;

	    case 12: // Gigadusa
	        Instancia = objJefeGigadusa;
	        Sprite = sprJefeGigadusaIdle;
	        Nombre = "Gigadusa";
	        HP = 250;
	        petID = 35;
			Rush = true;
	        break;

	    case 13: // Green Gigadusa
	        Instancia = objJefeGreenGigadusa;
	        Sprite = sprJefeGreenGigadusaIdle;
	        Nombre = "Green Gigadusa";
	        HP = 250;
	        petID = 36;
			Rush = true;
	        break;

	    case 14: // Mad Slime
	        Instancia = objJefeMadSlime;
	        Sprite = sprJefeMadSlime;
	        Nombre = "Mad Slime";
	        HP = 200;
	        petID = 37;
			Rush = true;
	        break;

	    case 15: // Great Papasa
	        Instancia = objJefeGreatPapasa;
	        Sprite = sprJefeGreatPapasa;
	        Nombre = "The Great Papasa";
	        HP = 250;
	        petID = 38;
	        break;
        
	    case 16: // Creep
	        Instancia = objJefeCreep;
	        Sprite = sprJefeCreep;
	        Nombre = "Creep";
	        HP = 200;
	        petID = 39;
			Rush = true;
	        break;

	    case 17: // Lodeslime
	        Instancia = objJefeLodeslime;
	        Sprite = sprJefeLodeslime;
	        Nombre = "Lodeslime";
	        HP = 210;
	        petID = 44;
	        break;

	    case 18: // Gangslime
	        Instancia = objJefeGangslime;
	        Sprite = sprJefeGangslime;
	        Nombre = "The Gang";
	        HP = 200;
	        petID = 49;
	        break;

	    case 19: // Rockslime
	        Instancia = objJefeRockslime;
	        Sprite = sprJefeRockslime;
	        Nombre = "Rockslime";
	        HP = 210;
	        petID = 50;
			Rush = true;
	        break;

	    case 20: // Ghost Slimeking
	        Instancia = obj_Jefe_GhostKingSlime;
	        Sprite = spr_Jefe_GhostKingSlime;
	        Nombre = "Ghost Slimeking";
	        HP = 200;
	        petID = 51;
	        break;

	    case 21: // Bombslime
	        Instancia = objJefeBombslime;
	        Sprite = sprJefe_BombSlime;
	        Nombre = "Bomb Slime";
	        HP = 190;
	        petID = 47;
			Rush = true;
	        break;

	    case 22: // Planetslime
	        Instancia = objJefePlanetslime;
	        Sprite = sprJefePlanetslime;
	        Nombre = "Planet Slime";
	        HP = 180;
	        petID = 46;
			Rush = true;
	        break;

	    case 23: // Bulbslime
	        Instancia = objJefeBulbslime;
	        Sprite = sprJefeBulbslimeRed;
	        Nombre = "Bulb Slime";
	        HP = 180;
	        petID = 48;
	        break;

	    case 24: // Boneslime
	        Instancia = objJefeBoneslime;
	        Sprite = sprJefeBoneslime;
	        Nombre = "Boneslime";
	        HP = 180;
	        petID = 52;
			Rush = true;
	        break;

	    case 25: // Bigsnake
	        Instancia = objJefeBigsnake;
	        Sprite = sprJefeBigSnakeFull;
	        Nombre = "Big Snake";
	        petID = 53;
	        HP = 180;
	        break;

	    case 26: // Eaterslime
	        Instancia = objJefeEaterslime;
	        Sprite = sprJefeEaterslimeFull;
	        Nombre = "Eater Slime";
	        HP = 180;
	        petID = 54;
	        break;

	    case 27: // Snow Slime
	        Instancia = obj_Jefe_SnowSlime;
	        Sprite = sprBossSnowSlime;
	        Nombre = "Snow Slime";
	        HP = 200;
	        petID = 76;
	        break;

	    case 28: // Not Slimeking
	        Instancia = obj_Jefe_NotSlimeking;
	        Sprite = sprBossNotSlimeking;
	        Nombre = "Not Slimeking";
	        HP = 250;
	        break;

	    case 29: // Crabslime
	        Instancia = obj_Jefe_CrabSlime;
	        Sprite = sprBossCrabSlime;
	        Nombre = "Crab Slime";
	        HP = 200;
	        petID = 77;
	        break;

	    case 30: // Spiderslime
	        Instancia = obj_Jefe_SpiderSlime;
	        Sprite = sprBossSpiderSlime;
	        Nombre = "Spider Slime";
	        HP = 210;
	        petID = 78;
	        break;

	    case 31: // Caster Slime
	        Instancia = obj_Jefe_CasterSlime;
	        Sprite = sprBossCasterSlime;
	        Nombre = "Caster Slime";
	        HP = 180;
	        petID = 79;
	        break;

	    case 98: // King Slime (Final Form)
	        Instancia = obj_Jefe_KingSlimeFinal;
	        Sprite = spr_Jefe_KingSlimeNoMoustacheNoCrown;
	        Nombre = "Final Slimeking";
	        HP = 1000;
	        petID = 40;
	        break;

	    case 99: // King Slime
	        Instancia = obj_Jefe_KingSlime;
	        Sprite = spr_Jefe_KingSlime;
	        Nombre = "Slimeking";
	        HP = 1000;
	        petID = 40;
	        break;

	    case 100: // Basement Party
	        Instancia = obj_Jefe_KingSlime;
	        Sprite = spr_Jefe_KingSlimeNoCrown;
	        Nombre = "Basement Party";
	        HP = 1000;
	        petID = 40;
	        break;

	    case 101: // Dark Slimeking
	        Instancia = obj_Jefe_DarkSlimeking;
	        Sprite = spr_Jefe_DarkSlimeking;
	        Nombre = "Dark Slimeking";
	        HP = 1000;
	        petID = 40;
	        break;

	    case 102: // The Skeleton King
	        Instancia = objJefeSkeletonKing;
	        Sprite = sprBossSkeletonKingIdle;
	        Nombre = "The Skeleton King";
	        HP = 600;
	        petID = 80;
	        break;

	    case 103: // The Skeleton King Crawler
	        Instancia = objJefeSkeletonKingCrawl;
	        Sprite = sprBossSkeletonKingCrawler;
	        Nombre = "The Skeleton King Crawler";
	        HP = 1200;
	        petID = -1;
	        break;

	    case 104: // Master Mimic
	        Instancia = objJefeMasterMimic;
	        Sprite = sprMasterMimicHidden;
	        Nombre = "Treasure Chest?";
	        HP = 600;
	        petID = 81;
	        break;

	}

	// Bosses enum
	enum bosses {
		blue_slime,
		gray_slime,
		purple_slime,
		orange_slime,
		green_slime,
		red_slime,
		black_slime,
		yellow_slime,
		white_slime,
		aqua_slime,
		glow_slime,
		shadow_slime,
		gigadusa,
		green_gigadusa,
		mad_slime,
		great_papasa,
		creep,
		lode_slime,
		gang_slime,
		rock_slime,
		ghost_slimeking,
		bomb_slime,
		planet_slime,
		bulb_slime,
		bone_slime,
		big_snake,
		eater_slime,
		snow_slime,
		not_slimeking,
		crab_slime,
		spider_slime,
		caster_slime,
		slimeking_final = 98,
		slimeking,
		basement_party,
		dark_slimeking,
		skeleton_king,
		skeleton_king2,
		master_mimic
	}

	// Cargar la dificultad
	var Dificultad_Ratio = 0;
	if(global.Modo_Dificultad = "Normal") Dificultad_Ratio = 1.2;
	if(global.Modo_Dificultad = "Hard")   Dificultad_Ratio = 2;
	if(global.Modo_Dificultad = "Insane") Dificultad_Ratio = 5;

	// Devolver data
	switch(argument1) {

	    case 0: return Instancia; break;
	    case 1: return Sprite; break;
	    case 2: return Nombre; break;
	    case 3: return Sonido_Muerte; break;
	    case 4: 
	        if(room == room_Arcade) return HP * (1+(instance_exists(obj_LocalPlayer))) * Dificultad_Ratio * (control_Dungeon.Ronda-20)/2 * get_map(global.Mapa_Tipo, 10); 
	        return HP * (1+(instance_number(obj_LocalPlayer)*2)) * Dificultad_Ratio * 1.5 * max(0.5,get_map(global.Mapa_Tipo, 10)-2); 
	    break;
	    case 5: return petID; break;
	    case 6: 
	        var damage_value = 2;
	        if(room == room_Arcade) damage_value *= max(1,floor(control_Dungeon.Ronda/7)); 
	        return damage_value;
	    break;
		case 7: return Rush; break;

	}



}
