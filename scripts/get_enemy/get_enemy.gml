/// @description get_enemy(id,type)
/// @function get_enemy
/// @param id
/// @param type
function get_enemy(argument0, argument1) {

	// Base de datos de enemigos

	// Declarar variables temporales
	var AI;
	var HP
	var Velocidad = 0.2;
	var Fuerza = 1;
	var Sprite, Sprite_Up, Sprite_Down, Sprite_Left, Sprite_Right
	var Sprite_Die = sprCommonSlimeDie;
	var Sprite_Die_Leftover = sprSlimeSkull;
	var Sprite_Guts = sprGuts;
	var Color_Sangre, Sonido_Muerte = sndSlimeDeath;
	var Summoner = -1;
	var Summon_Time = -1;
	var Charger = false;
	var Friccion_Entre_Entidades = 0.25;
	var Teleport, Shoot;
	var TargetPlayer = false;
	var Enemy_Count = 12;
	var petID = -1;
	var actionColor = c_white;
	var actionTime = 180;
	var Immune = false;
	boss = false;

	// Devuelve el dato pedido del enemigo dada su ID
	switch(real(argument0)) {

	    case 0: // Skeleton
	        AI = obj_Skeleton;
	        HP = 6;
	        Fuerza = 1;
	        Sprite_Up = sprSkeletonUp;
	        Sprite_Down = sprSkeletonDown;
	        Sprite_Left = sprSkeletonLeft;
	        Sprite_Right = sprSkeletonRight;
	        Sprite_Die_Leftover = sprBones;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = choose(sndSkeletonDie01,sndSkeletonDie02,sndSkeletonDie03);
	        petID = 1;
	        break;
        
	    case 1: // Green Charger Slime
	        AI = obj_Slime;
	        HP = 10;
	        Fuerza = 1;
	        Sprite = sprSlime;
	        Sprite_Die = sprSlimeDie;
	        Sprite_Die_Leftover = sprSlimeSkull;
	        Sprite_Guts = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(106, 190, 48);
	        Friccion_Entre_Entidades = 0.25;
	        Charger = true;
	        Sonido_Muerte = sndSlimeDeath;
	        petID = 0;
	        break;
        
	    case 2: // Murcielago
	        AI = obj_Bat;
	        HP = 4;
	        Fuerza = 1;
	        Sprite = sprBat;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Bat_Die;
	        petID = 7;
	        break;
        
	    case 3: // Stomp Slime
	        AI = obj_StompSlime;
	        HP = 8;
	        Fuerza = 1;
	        Sprite = sprMiniStompSlime;
	        Sprite_Die = sprMiniStompSlimeDie;
	        Sprite_Die_Leftover = sprSlimeSkull;
	        Sprite_Guts = sprBlueGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_color_rgb(113,177,225);
	        Friccion_Entre_Entidades = 0.25;
	        Charger = false;
	        Sonido_Muerte = sndSlimeDeath;
	        petID = 2;
	        break;

	    case 4: // Blue Charger Slime
	        AI = obj_Slime;
	        HP = 10;
	        Fuerza = 1;
	        Sprite = sprMiniStompSlime;
	        Sprite_Die = sprMiniStompSlimeDie;
	        Sprite_Die_Leftover = sprSlimeSkull;
	        Sprite_Guts = sprBlueGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_color_rgb(113,177,225);
	        Friccion_Entre_Entidades = 0.25;
	        Charger = true;
	        Sonido_Muerte = sndSlimeDeath;
	        petID = 0;
	        break;
        
	    case 5: // Medusa
	        AI = obj_Bat;
	        HP = 8;
	        Fuerza = 1;
	        Sprite = spr_Eye;
	        Summoner = 6;
	        Summon_Time = 150;
	        Color_Sangre = make_colour_rgb(251, 242, 54);
	        Friccion_Entre_Entidades = 0.20;
	        Sonido_Muerte = snd_Eye_Die;
	        petID = 8;
	        break;
        
	    case 6: // Summoned Eye
	        AI = obj_Bat;
	        HP = 2;
	        Fuerza = 1;
	        Sprite = spr_Mini_Eye;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(251, 242, 54);
	        Friccion_Entre_Entidades = 0.20;
	        Sonido_Muerte = snd_Eye_Die;
	        petID = 9;
	        break;

	    case 7: // Blue Summoner Charger Slime
	        AI = obj_Slime;
	        HP = 8;
	        Fuerza = 1;
	        Sprite = sprMiniStompSlime;
	        Sprite_Die = sprMiniStompSlimeDie;
	        Sprite_Die_Leftover = sprSlimeSkull;
	        Sprite_Guts = sprBlueGuts;
	        Summoner = 8;
	        Summon_Time = 120;
	        Color_Sangre = make_color_rgb(113,177,225);
	        Friccion_Entre_Entidades = 0.05;
	        Charger = false;
	        Sonido_Muerte = sndSlimeDeath;
	        petID = -1;
	        break;

	    case 8: // Mini Blue Summoned Charger Slime
	        AI = obj_Slime;
	        HP = 1;
	        Fuerza = 1;
	        Sprite = spr_Mini_Blue_Slime;
	        Sprite_Die = sprMiniStompSlimeDie;
	        Sprite_Die_Leftover = sprSlimeSkull;
	        Sprite_Guts = sprBlueGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_color_rgb(113,177,225);
	        Friccion_Entre_Entidades = 0.05;
	        Charger = false;
	        Sonido_Muerte = sndSlimeDeath;
	        petID = -1;
	        break;
        
	    case 9: // Mage Skeleton
	        AI = obj_MageSkeleton;
	        HP = 8;
	        Fuerza = 1;
	        Sprite_Up = sprMageSkeletonDown;
	        Sprite_Down = sprMageSkeletonDown;
	        Sprite_Left = sprMageSkeletonDown;
	        Sprite_Right = sprMageSkeletonDown;
	        Sprite_Die_Leftover = sprGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Teleport = 400;
	        Shoot = 250;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = sndSlimeDeath;
	        petID = 4;
	        break;

	    case 10: // Snake
	        AI = obj_Snake;
	        HP = 12;
	        Fuerza = 0;
	        Sprite_Up = sprSnakeUp;
	        Sprite_Down = sprSnakeDown;
	        Sprite_Left = sprSnakeLeft;
	        Sprite_Right = sprSnakeRight;
	        Sprite_Die_Leftover = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Rabbit_Die;
	        petID = 10;
	        break;
        
	    case 11: // Conejo
	        AI = obj_Conejo;
	        HP = 8;
	        Fuerza = 1;
	        Sprite_Up    = sprConejoUp;
	        Sprite_Down  = sprConejoDown;
	        Sprite_Left  = sprConejoLeft;
	        Sprite_Right = sprConejoRight;
	        Sprite_Die = sprBones;
	        Sprite_Die_Leftover = sprBones;
	        Sprite_Guts = sprGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Charger = false;
	        Sonido_Muerte = snd_Rabbit_Die;
	        petID = 11;
	        break;

	    case 12: // Ghoul
	        AI = obj_Skeleton;
	        HP = 12;
	        Fuerza = 1;
	        Sprite_Up = sprGhoulUp;
	        Sprite_Down = sprGhoulDown;
	        Sprite_Left = sprGhoulLeft;
	        Sprite_Right = sprGhoulRight;
	        Sprite_Die_Leftover = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(106, 190, 48);
	        Friccion_Entre_Entidades = 0.4;
	        Sonido_Muerte = snd_Rabbit_Die;
	        petID = 6;
	        break;
        
	    case 13: // Spider
	        AI = obj_Skeleton;
	        HP = 4;
	        Fuerza = 1;
	        Sprite_Up = spr_Spider_Arriba;
	        Sprite_Down = spr_Spider_Abajo;
	        Sprite_Left = spr_Spider_Izquierda;
	        Sprite_Right = spr_Spider_Derecha;
	        Sprite_Die_Leftover = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Rabbit_Die;
	        petID = 12;
	        break;
        
	    case 14: // Shadow Spawn
	        AI = obj_Shadow_Spawn;
	        HP = 10;
	        Fuerza = 0;
	        Sprite = spr_Enemigo_Shadow_Spawn;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(20, 20, 20);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Eye_Die;
	        petID = 13;
	        break;
        
	    case 15: // Mimic
	        AI = obj_Mimic;
	        HP = 28;
	        Fuerza = 1;
	        Sprite = spr_Cofre;
	        Sprite_Die = spr_Cofre_Mimic_Esperando;
	        Sprite_Die_Leftover = sprSlimeSkull;
	        Sprite_Guts = sprBlueGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_color_rgb(200,50,200);
	        Friccion_Entre_Entidades = 0.25;
	        Charger = false;
	        Sonido_Muerte = snd_Eye_Die;
	        petID = 14;
	        break;
        
	    case 16: // Mitosis
	        AI = obj_Mitosis;
	        HP = 10;
	        Fuerza = 0;
	        Sprite = spr_Mitosis_Big;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(20, 20, 200);
	        Friccion_Entre_Entidades = 0.5;
	        Sonido_Muerte = snd_Eye_Die;
	        petID = 15;
	        break;
        
	    case 17: // Sub Mitosis
	        AI = obj_Mitosis;
	        HP = 5;
	        Fuerza = 0;
	        Sprite = spr_Mitosis_Small;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(20, 20, 200);
	        Friccion_Entre_Entidades = 0.6;
	        Sonido_Muerte = snd_Eye_Die;
	        petID = 16;
	        break;

	    case 18: // Little Slime
	        AI = obj_Skeleton;
	        HP = 6;
	        Fuerza = 1;
	        Sprite_Up = sprLittleSlimeUp;
	        Sprite_Down = sprLittleSlimeDown;
	        Sprite_Left = sprLittleSlimeLeft;
	        Sprite_Right = sprLittleSlimeRight;
	        Sprite_Die_Leftover = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Slime_Die;
	        petID = 3;
	        break;
        
	    case 19: // Tomahawk
	        AI = obj_Tomahawk;
	        HP = 10;
	        Fuerza = 1;
	        Sprite = sprSlime;
	        Sprite_Up = sprTomahawkUpSkull;
	        Sprite_Down = sprTomahawkDownSkull;
	        Sprite_Left = sprTomahawkLeftSkull;
	        Sprite_Right = sprTomahawkRightSkull;
	        Sprite_Die = sprSlimeDie;
	        Sprite_Die_Leftover = sprSlimeSkull;
	        Sprite_Guts = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(106, 190, 48);
	        Friccion_Entre_Entidades = 0.25;
	        Charger = true;
	        Sonido_Muerte = sndSlimeDeath;
	        petID = 17;
	        break;

	    case 20: // Little Blue Slime
	        AI = obj_Skeleton;
	        HP = 6;
	        Fuerza = 1;
	        Sprite_Up = sprLittleBlueSlimeUp;
	        Sprite_Down = sprLittleBlueSlimeDown;
	        Sprite_Left = sprLittleBlueSlimeLeft;
	        Sprite_Right = sprLittleBlueSlimeRight;
	        Sprite_Die_Leftover = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Slime_Die;
	        petID = 3;
	        break;
        
	    case 21: // Mother Slime
	        AI = obj_Slime;
	        HP = 20;
	        Fuerza = 1;
	        Sprite = sprMotherSlime;
	        Sprite_Die = sprSlimeDieGray;
	        Sprite_Die_Leftover = sprSlimeSkull;
	        Sprite_Guts = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(120, 120, 120);
	        Friccion_Entre_Entidades = 0.25;
	        Charger = true;
	        Sonido_Muerte = sndSlimeDeath;
	        petID = 18;
	        break;
        
	    case 22: // Hardmahawk
	        AI = obj_Hardmahawk;
	        HP = 14;
	        Fuerza = 1;
	        Sprite = sprSlime;
	        Sprite_Up = sprHardmahawkUpSkull;
	        Sprite_Down = sprHardmahawkDownSkull;
	        Sprite_Left = sprHardmahawkLeftSkull;
	        Sprite_Right = sprHardmahawkRightSkull;
	        Sprite_Die = sprSlimeDieGray;
	        Sprite_Die_Leftover = sprSlimeSkull;
	        Sprite_Guts = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(120, 120, 120);
	        Friccion_Entre_Entidades = 0.25;
	        Charger = true;
	        Sonido_Muerte = sndSlimeDeath;
	        petID = 19;
	        break;
        
	    case 23: // Summoner
	        AI = obj_Summoner;
	        HP = 8;
	        Fuerza = 1;
	        Sprite_Up = sprSummonerLeft;
	        Sprite_Down = sprSummonerLeft;
	        Sprite_Left = sprSummonerLeft;
	        Sprite_Right = sprSummonerRight;
	        Sprite_Die_Leftover = sprBones;
	        Summoner = -1;
	        Summon_Time = -1;
	        Teleport = 400;
	        Shoot = 250;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = choose(sndSkeletonDie01,sndSkeletonDie02,sndSkeletonDie03);
	        petID = 20;
	        break;
        
	    case 24: // Wizard Skeleton
	        AI = obj_MageSkeleton;
	        HP = 5;
	        Fuerza = 1;
	        Sprite_Up = sprWizardDown;
	        Sprite_Down = sprWizardDown;
	        Sprite_Left = sprWizardDown;
	        Sprite_Right = sprWizardDown;
	        Sprite_Die_Leftover = sprGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Teleport = 400;
	        Shoot = 250;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = sndSlimeDeath;
	        petID = 5;
	        break;
        
	    case 25: // Chain Slime
	        AI = obj_ChainSlime;
	        HP = 16;
	        Fuerza = 1;
	        Sprite = sprChainSlime;
	        Sprite_Die = sprSlimeDie;
	        Sprite_Die_Leftover = sprSlimeSkull;
	        Sprite_Guts = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(120, 120, 120);
	        Friccion_Entre_Entidades = 0.25;
	        Charger = true;
	        Sonido_Muerte = sndSlimeDeath;
	        petID = 21;
	        break;

	    case 26: // Challenge Slime
	        AI = obj_ChallengeSlime;
	        HP = 1;
	        Fuerza = 1;
	        Sprite_Up = sprChallengeSlime;
	        Sprite_Down = sprChallengeSlime;
	        Sprite_Left = sprChallengeSlime;
	        Sprite_Right = sprChallengeSlime;
	        Sprite_Die_Leftover = sprGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Eye_Die;
	        petID = 22;
	        break;
        
	    case 27: // Block Monster
	        AI = obj_Skeleton;
	        HP = 16;
	        Fuerza = 1;
	        Sprite_Up = sprBlockMonster;
	        Sprite_Down = sprBlockMonster;
	        Sprite_Left = sprBlockMonster;
	        Sprite_Right = sprBlockMonster;
	        Sprite_Die_Leftover = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Eye_Die;
	        petID = 41;
	        break;
        
	    case 28: // Pot Monster
	        AI = obj_Skeleton;
	        HP = 6;
	        Fuerza = 1;
	        Sprite_Up = sprPotMonster;
	        Sprite_Down = sprPotMonster;
	        Sprite_Left = sprPotMonster;
	        Sprite_Right = sprPotMonster;
	        Sprite_Die_Leftover = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = choose(snd_Vasija_01,snd_Vasija_02);
	        petID = 42;
	        break;

	    case 29: // Rat Slime
	        AI = obj_Skeleton;
	        HP = 10;
	        Fuerza = 1;
	        Sprite_Up = sprRatSlimeUp;
	        Sprite_Down = sprRatSlimeDown;
	        Sprite_Left = sprRatSlimeLeft;
	        Sprite_Right = sprRatSlimeRight;
	        Sprite_Die_Leftover = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(106, 190, 48);
	        Friccion_Entre_Entidades = 0.4;
	        Sonido_Muerte = snd_Rabbit_Die;
	        petID = 43;
	        break;
        
	    case 30: // Minilode
	        AI = obj_Skeleton;
	        HP = 1;
	        Fuerza = 1;
	        Sprite_Up = sprMiniLode;
	        Sprite_Down = sprMiniLode;
	        Sprite_Left = sprMiniLode;
	        Sprite_Right = sprMiniLode;
	        Sprite_Die_Leftover = sprGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(160, 81, 12);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Slime_Die;
	        petID = 45;
	        break;
        
	    case 31: // Scarslime
	        AI = obj_Skeleton;
	        HP = 999999;
	        Fuerza = 1;
	        Sprite_Up = sprJefeGangslimeScarslime;
	        Sprite_Down = sprJefeGangslimeScarslime;
	        Sprite_Left = sprJefeGangslimeScarslime;
	        Sprite_Right = sprJefeGangslimeScarslime;
	        Sprite_Die_Leftover = sprGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Slime_Die;
	        petID = 1;
	        break;
        
	    case 32: // Broslime
	        AI = obj_Skeleton;
	        HP = 999999;
	        Fuerza = 1;
	        Sprite = sprJefeGangslimeBroslime;
	        Sprite_Up = sprJefeGangslimeBroslime;
	        Sprite_Down = sprJefeGangslimeBroslime;
	        Sprite_Left = sprJefeGangslimeBroslime;
	        Sprite_Right = sprJefeGangslimeBroslime;
	        Sprite_Die_Leftover = sprGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Slime_Die;
	        petID = 1;
	        break;
        
	    case 33: // Slimecapone
	        AI = obj_Skeleton;
	        HP = 999999;
	        Fuerza = 1;
	        Sprite = sprJefeGangslimeSlimecapone;
	        Sprite_Up = sprJefeGangslimeSlimecapone;
	        Sprite_Down = sprJefeGangslimeSlimecapone;
	        Sprite_Left = sprJefeGangslimeSlimecapone;
	        Sprite_Right = sprJefeGangslimeSlimecapone;
	        Sprite_Die_Leftover = sprGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Slime_Die;
	        petID = 1;
	        break;
        
	    case 34: // Planetoid
	        AI = obj_StompSlime;
	        HP = 8;
	        Fuerza = 1;
	        Sprite = sprPlanetoid;
	        Sprite_Die = sprMiniStompSlimeDie;
	        Sprite_Die_Leftover = sprSlimeSkull;
	        Sprite_Guts = sprBlueGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_color_rgb(113,177,225);
	        Friccion_Entre_Entidades = 0.25;
	        Charger = false;
	        Sonido_Muerte = snd_Slime_Die;
	        petID = 55;
	        break;

	    case 35: // Black Skeleton
	        AI = obj_Skeleton;
	        HP = 16;
	        Fuerza = 1;
	        Sprite_Up = sprBlackSkeletonUp;
	        Sprite_Down = sprBlackSkeletonDown;
	        Sprite_Left = sprBlackSkeletonLeft;
	        Sprite_Right = sprBlackSkeletonRight;
	        Sprite_Die_Leftover = sprBones;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(82, 75, 36);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = choose(sndSkeletonDie01,sndSkeletonDie02,sndSkeletonDie03);
	        petID = 56;
	        break;

	    case 36: // Hell Snake
	        AI = obj_Snake;
	        HP = 20;
	        Fuerza = 0;
	        Sprite_Up = sprHellSnakeUp;
	        Sprite_Down = sprHellSnakeDown;
	        Sprite_Left = sprHellSnakeLeft;
	        Sprite_Right = sprHellSnakeRight;
	        Sprite_Die_Leftover = sprGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Rabbit_Die;
	        petID = 57;
	        break;
        
	    case 37: // Hardmother Slime
	        AI = obj_Slime;
	        HP = 30;
	        Fuerza = 1;
	        Sprite = sprHardmotherSlime;
	        Sprite_Die = sprSlimeDieGray;
	        Sprite_Die_Leftover = sprSlimeSkull;
	        Sprite_Guts = sprGreenGuts;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(120, 120, 120);
	        Friccion_Entre_Entidades = 0.25;
	        Charger = true;
	        Sonido_Muerte = sndSlimeDeath;
	        petID = 58;
	        break;
        
	    case 38: // Fireslime
	        AI = obj_ActionSlime;
	        HP = 10;
	        Sprite = sprFireslime;
	        Color_Sangre = make_colour_rgb(190, 80, 80);
	        actionColor = c_yellow;
	        petID = 59;
	        break;
        
	    case 39: // Iceslime
	        AI = obj_ActionSlime;
	        HP = 20;
	        Sprite = sprIceslime;
	        Color_Sangre = make_colour_rgb(200, 200, 255);
	        actionTime = -1;
	        petID = 60;
	        break;
        
	    case 40: // Minipapasa
	        AI = obj_ActionSlime;
	        HP = 12;
	        Sprite = sprMinipapasa;
	        Color_Sangre = make_colour_rgb(180, 50, 50);
	        actionColor = c_orange;
	        actionTime = 120;
	        petID = 61;
	        break;
        
	    case 41: // Bigeye Slime
	        AI = obj_ActionSlime;
	        HP = 10;
	        Sprite = sprBigeyeslime;
	        Color_Sangre = make_colour_rgb(80, 80, 190);
	        actionColor = c_aqua;
	        petID = 62;
	        break;
        
	    case 42: // Bayo Slime
	        AI = obj_ActionSlime;
	        HP = 14;
	        Sprite = sprBayoslime;
	        Color_Sangre = make_colour_rgb(190, 80, 190);
	        actionColor = c_purple;
	        petID = 63;
	        break;
        
	    case 43: // Darkslime
	        AI = obj_Slime;
	        HP = 24;
	        Fuerza = 1;
	        Sprite = sprDarkslime;
	        Sprite_Guts = sprGuts;
	        Color_Sangre = make_colour_rgb(180, 180, 20);
	        Charger = true;
	        petID = 64;
	        break;
        
	    case 44: // Kamislime
	        AI = obj_ActionSlime;
	        HP = 14;
	        Sprite = sprKamislime;
	        Velocidad = 0.4;
	        Color_Sangre = make_colour_rgb(80, 80, 190);
	        actionTime = -1;
	        Immune = true;
	        petID = 65;
	        break;
        
	    case 45: // Minibombslime
	        AI = obj_ActionSlime;
	        HP = 14;
	        Sprite = sprMinibombslime;
	        Color_Sangre = make_colour_rgb(80, 80, 80);
	        actionTime = -1;
	        petID = 66;
	        break;
        
	    case 46: // Clockslime
	        AI = obj_ActionSlime;
	        HP = 16;
	        Sprite = sprClockslime;
	        Color_Sangre = make_colour_rgb(80, 120, 120);
	        actionTime = 200;
	        actionColor = c_orange;
	        petID = 67;
	        break;
        
	    case 47: // Zombieslime
	        AI = obj_ActionSlime;
	        HP = 14;
	        Sprite = sprZombieslime;
	        Sprite_Guts = sprGreenGuts;
	        Color_Sangre = make_colour_rgb(80, 200, 80);
	        actionTime = -1;
	        petID = 68;
	        break;
        
	    case 48: // Dinoslime
	        AI = obj_ActionSlime;
	        HP = 14;
	        Sprite = sprDinoslime;
	        Sprite_Guts = sprGreenGuts;
	        Color_Sangre = make_colour_rgb(80, 200, 80);
	        actionTime = 180;
	        actionColor = c_lime;
	        petID = 69;
	        break;
        
	    case 49: // Red Summoner
	        AI = obj_Summoner;
	        HP = 12;
	        Fuerza = 1;
	        Sprite_Up = sprRedSummonerLeft;
	        Sprite_Down = sprRedSummonerLeft;
	        Sprite_Left = sprRedSummonerLeft;
	        Sprite_Right = sprRedSummonerRight;
	        Sprite_Die_Leftover = sprBones;
	        Teleport = 400;
	        Shoot = 250;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Sonido_Muerte = choose(sndSkeletonDie01,sndSkeletonDie02,sndSkeletonDie03);
	        petID = 70;
	        break;
        
	    case 50: // Minilode v2
	        AI = obj_Skeleton;
	        HP = 1;
	        Sprite_Up = sprMiniLode2;
	        Sprite_Down = sprMiniLode2;
	        Sprite_Left = sprMiniLode2;
	        Sprite_Right = sprMiniLode2;
	        Sprite_Die_Leftover = sprGuts;
	        Color_Sangre = make_colour_rgb(81, 160, 12);
	        petID = 45;
	        break;
        
	    case 51: // Minilode v3
	        AI = obj_Skeleton;
	        HP = 1;
	        Sprite_Up = sprMiniLode3;
	        Sprite_Down = sprMiniLode3;
	        Sprite_Left = sprMiniLode3;
	        Sprite_Right = sprMiniLode3;
	        Sprite_Die_Leftover = sprGuts;
	        Color_Sangre = make_colour_rgb(180, 101, 32);
	        petID = 45;
	        break;
        
	    case 52: // Slibone
	        AI = obj_ActionSlime;
	        HP = 8;
	        Sprite = sprSlibone;
	        Sprite_Guts = sprGreenGuts;
	        Color_Sangre = make_colour_rgb(200, 200, 200);
	        actionTime = 180;
	        actionColor = c_white;
	        petID = 71;
	        break;
        
	    case 53: // Bouncyslime
	        AI = obj_ActionSlime;
	        HP = 14;
	        Sprite = sprBouncyslime;
	        Sprite_Guts = sprGreenGuts;
	        Color_Sangre = make_colour_rgb(230, 230, 230);
	        actionTime = -1;
	        petID = 72;
	        break;
        
	    case 54: // Priestslime
	        AI = obj_ActionSlime;
	        HP = 14;
	        Sprite = sprPriestslime;
	        Sprite_Guts = sprGuts;
	        Color_Sangre = make_colour_rgb(215, 123, 181);
	        actionTime = -1;
	        petID = 73;
	        break;
        
	    case 55: // Shiftslime
	        AI = obj_Bouncer;
	        HP = 14;
	        Sprite = sprShiftslime;
	        Sprite_Guts = sprGuts;
	        Color_Sangre = make_colour_rgb(230, 230, 230);
	        actionTime = -1;
	        petID = 74;
	        break;
        
	    case 56: // Clusterslime
	        AI = obj_Bouncer;
	        HP = 14;
	        Sprite = sprClusterslime;
	        Sprite_Guts = sprGuts;
	        Color_Sangre = make_colour_rgb(40, 40, 40);
	        actionTime = -1;
	        petID = 75;
	        break;
        
	    case 57: // Skeleton Mage
	        AI = obj_MageSkeleton;
	        HP = 8;
	        Fuerza = 2;
	        Sprite_Up		= sprSkeletonMage;
	        Sprite_Down		= sprSkeletonMage;
	        Sprite_Left		= sprSkeletonMage;
	        Sprite_Right	= sprSkeletonMage;
	        Sprite_Die_Leftover = sprBones;
	        Teleport = 400;
	        Shoot = 150;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Sonido_Muerte = snd_Eye_Die;
	        petID = 82;
	        break;
        
	    case 58: // Floating Skull (Attract)
	        AI = obj_FloatingSkull;
	        HP = 4;
	        Fuerza = 1;
	        Sprite = sprFloatingSkull;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(50, 50, 150);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Eye_Die;
	        petID = 83;
	        break;
        
	    case 59: // Floating Skull (Damage)
	        AI = obj_FloatingSkull;
	        HP = 4;
	        Fuerza = 1;
	        Sprite = sprFloatingSkull2;
	        Summoner = -1;
	        Summon_Time = -1;
	        Color_Sangre = make_colour_rgb(150, 50, 50);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Eye_Die;
	        petID = 84;
	        break;
        
	    case 60: // Skeleton Mage
	        AI = obj_MageSkeleton;
	        HP = 8;
	        Fuerza = 2;
	        Sprite_Up		= sprSkeletonSummoner;
	        Sprite_Down		= sprSkeletonSummoner;
	        Sprite_Left		= sprSkeletonSummoner;
	        Sprite_Right	= sprSkeletonSummoner;
	        Sprite_Die_Leftover = sprBones;
	        Summoner = -1;
	        Summon_Time = -1;
	        Teleport = 40000;
	        Shoot = 150;
	        Color_Sangre = make_colour_rgb(50, 50, 200);
	        Friccion_Entre_Entidades = 0.25;
	        Sonido_Muerte = snd_Eye_Die;
	        petID = 85;
	        break;

	    case 61: // Coin Spider
	        AI = obj_Skeleton;
	        HP = 6;
			Velocidad = 0.5;
	        Sprite_Up = sprCoinSpider;
	        Sprite_Down = sprCoinSpider;
	        Sprite_Left = sprCoinSpider;
	        Sprite_Right = sprCoinSpider;
	        Sprite_Die_Leftover = spr_Item_Moneda;
	        Color_Sangre = make_colour_rgb(200, 200, 70);
	        Sonido_Muerte = snd_Moneda;
	        petID = 86;
	        break;

	    case 62: // Coin Spider Blue
	        AI = obj_Skeleton;
	        HP = 6;
			Velocidad = 0.5;
	        Sprite_Up = sprCoinSpider2;
	        Sprite_Down = sprCoinSpider2;
	        Sprite_Left = sprCoinSpider2;
	        Sprite_Right = sprCoinSpider2;
	        Sprite_Die_Leftover = spr_Item_Moneda;
	        Color_Sangre = make_colour_rgb(200, 200, 70);
	        Sonido_Muerte = snd_Moneda;
	        petID = 86;
	        break;

	    case 63: // Coin Spider Green
	        AI = obj_Skeleton;
	        HP = 6;
			Velocidad = 0.5;
	        Sprite_Up = sprCoinSpider3;
	        Sprite_Down = sprCoinSpider3;
	        Sprite_Left = sprCoinSpider3;
	        Sprite_Right = sprCoinSpider3;
	        Sprite_Die_Leftover = spr_Item_Moneda;
	        Color_Sangre = make_colour_rgb(200, 200, 70);
	        Sonido_Muerte = snd_Moneda;
	        petID = 86;
	        break;

	    case 64: // Coin Spider Red
	        AI = obj_Skeleton;
	        HP = 6;
			Velocidad = 0.5;
	        Sprite_Up = sprCoinSpider4;
	        Sprite_Down = sprCoinSpider4;
	        Sprite_Left = sprCoinSpider4;
	        Sprite_Right = sprCoinSpider4;
	        Sprite_Die_Leftover = spr_Item_Moneda;
	        Color_Sangre = make_colour_rgb(200, 200, 70);
	        Sonido_Muerte = snd_Moneda;
	        petID = 86;
	        break;

	    case 65: // Human
	        AI						= obj_EnemyPlayer;
	        HP						= 20;
	        Sprite_Up				= sprCoinSpider4;
	        Sprite_Down				= sprCoinSpider4;
	        Sprite_Left				= sprCoinSpider4;
	        Sprite_Right			= sprCoinSpider4;
	        Sprite_Die_Leftover		= sprGuts;
	        Color_Sangre			= make_colour_rgb(200, 50, 50);
	        Sonido_Muerte			= choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03);
			Velocidad				= 0.5+random(2)/10;
	        break;
        
	    case 66: // SamuraiSlime
	        AI = obj_ActionSlime;
	        HP = 10;
	        Sprite = sprEnemigoSamuraiSlime;
	        Color_Sangre = make_colour_rgb(80, 80, 80);
	        actionColor = c_red;
	        petID = 87;
	        break;
        
	    case 67: // Jumping Bomb
	        AI = obj_ActionSlime;
	        HP = 50;
	        Sprite = sprEnemigoJumpingBombDown;
	        Color_Sangre = make_colour_rgb(80, 80, 255);
	        actionColor = c_orange;
			Velocidad = 0.4;
	        petID = 88;
	        break;

	    case 68: // Mummy Slime
	        AI = obj_Slime;
	        HP = 16;
	        Sprite = sprEnemigoMummySlime;
	        Color_Sangre = make_color_rgb(90,90,90);
	        Charger = true;
	        Sonido_Muerte = sndSlimeDeath;
	        petID = 89;
	        break;
		
		case 69: // Skull Crawler
	        AI = obj_Skeleton;
	        HP = 4;
	        Sprite_Up    = sprEnemigoSkullCrawler;
	        Sprite_Down  = sprEnemigoSkullCrawler;
	        Sprite_Left  = sprEnemigoSkullCrawler;
	        Sprite_Right = sprEnemigoSkullCrawler;
	        Sprite_Die_Leftover = sprBones;
	        Color_Sangre = make_colour_rgb(20, 60, 60);
	        Sonido_Muerte = snd_Skeleton_Die;
			Velocidad = 0.6;
	        petID = 90;
			break;
		
		case 70: // Ghost Slime
	        AI = obj_Skeleton;
	        HP = 10;
	        Sprite_Up    = sprEnemigoGhostSlime;
	        Sprite_Down  = sprEnemigoGhostSlime;
	        Sprite_Left  = sprEnemigoGhostSlime;
	        Sprite_Right = sprEnemigoGhostSlime;
	        Sprite_Die_Leftover = sprGuts;
	        Color_Sangre = make_colour_rgb(10, 10, 10);
	        Sonido_Muerte = snd_Slime_Die;
	        petID = 91;
			break;
        
	    case 71: // Fly Eye
	        AI = obj_Bat;
	        HP = 10;
	        Sprite = sprEnemigoFlyEye;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Sonido_Muerte = snd_Bat_Die;
			Velocidad = 0.1;
	        petID = 92;
	        break;
        
	    case 72: // Slime Jockey
	        AI = obj_Conejo;
	        HP = 12;
	        Fuerza = 1;
	        Sprite_Up			= sprSlimeJockeyUp;
	        Sprite_Down			= sprSlimeJockeyDown;
	        Sprite_Left			= sprSlimeJockeyLeft;
	        Sprite_Right		= sprSlimeJockeyRight;
	        Sprite_Die			= sprBones;
	        Sprite_Die_Leftover = sprBones;
	        Sprite_Guts = sprGuts;
	        Color_Sangre = make_colour_rgb(172, 50, 50);
	        Sonido_Muerte = snd_Skeleton_Die;
	        petID = 93;
	        break;
        
	    case 73: // Enemy Sword
	        AI = obj_StompSlime;
	        HP = 8;
	        Fuerza = 1;
	        Sprite				= sprEnemySword;
	        Sprite_Die			= sprSmoke;
	        Sprite_Die_Leftover = sprSlimeSkull;
	        Sprite_Guts = sprBlueGuts;
	        Color_Sangre = make_color_rgb(113,177,225);
	        Sonido_Muerte = snd_Eye_Die;
	        petID = 94;
	        break;
        
	}

	// Enemy enum
	// !! Add new enemies to enum
	enum enemies {
		skeleton,
		green_charger_slime,
		bat,
		stomp_slime,
		blue_charger_slime,
		medusa,
		summoned_eye,
		blue_summoner_slime,
		mini_slime,
		mage_slime,
		snake,
		rabbit_slime,
		hard_slime,
		spider,
		shadow_spawn,
	    mimic,
		mitosis,
		mitosis_mini,
		little_slime_geen,
		tomahawk,
		little_slime_blue,
		mother_slime,
		hard_tomahawk,
		summoner,
		wizard_slime,
		chain_slime,
		challenge_slime,
		block_monster,
		pot_monster,
		rat_slime,
		minilode,
		scarslime,
		broslime,
		slimecapone,
		planetoid,
		black_skeleton,
		snake_hell,
		hard_mother_slime,
		fire_slime,
		ice_slime,
		mini_papasa,
		bigeye_slime,
		bayo_slime,
		dark_slime,
		kami_slime,
		minibomb_slime,
		clock_slime,
		zombie_slime,
		dino_slime,
		red_summoner,
		minilode2,
		minilode3,
		bone_slime,
		bouncy_slime,
		priest_slime,
		shift_slime,
		flying_bomb_slime,
		skeleton_mage,
		floatingskull_attract,
		floatingskull_damage,
		skeleton_summoner,
		coin_spider,
		coin_spider2,
		coin_spider3,
		coin_spider4,
		human,
		samurai_slime,
		jumping_bomb,
		mummy_slime,
		skull_crawler,
		ghost_slime,
		fly_eye,
		slime_jockey,
		magic_sword
	}

	// Cargar la dificultad
	var Dificultad_Ratio = 0;
	if(global.Modo_Dificultad = "Normal") Dificultad_Ratio = 1;
	if(global.Modo_Dificultad = "Hard")   Dificultad_Ratio = 2;
	if(global.Modo_Dificultad = "Insane") Dificultad_Ratio = 5;

	// Devolver data
	switch(argument1) {

	    case 0:  return AI; break;
	    case 1:  
	        if(room == room_Arcade) return HP * (1+(instance_exists(obj_LocalPlayer))) * max(1,((control_Dungeon.Ronda-20)/2)) * Dificultad_Ratio * max(.5,get_map(global.Mapa_Tipo, 10)/2); 
	        return HP * (1+(instance_number(obj_LocalPlayer)*2)) * Dificultad_Ratio * max(.5,get_map(global.Mapa_Tipo, 10)/2);
	    break;
	    case 2:  return Velocidad; break;
	    case 3: 
	        var damage_value = ceil(max(1,max(1,min(2,Fuerza*get_map(global.Mapa_Tipo,10)))*Dificultad_Ratio));
	        if(room == room_Arcade) damage_value *= max(1,floor(control_Dungeon.Ronda/7)); 
	        return damage_value;
	    break;
	    case 4:  return Sprite_Up; break;
	    case 5:  return Sprite_Down; break;
	    case 6:  return Sprite_Left; break;
	    case 7:  return Sprite_Right; break;
	    case 8:  return Sprite; break;
	    case 9:  return Sprite_Die; break;
	    case 10: return Sprite_Die_Leftover; break;
	    case 11: return Color_Sangre; break;
	    case 12: return Sprite_Guts; break;
	    case 13: return Summoner; break;
	    case 14: return Summon_Time; break;
	    case 15: return Friccion_Entre_Entidades; break;
	    case 16: return Charger; break;
	    case 17: return Sonido_Muerte; break;
	    case 18: return Enemy_Count; break;
	    case 19: return Teleport; break;
	    case 20: return Shoot; break;
	    case 21: return petID; break;
	    case 22: return TargetPlayer; break;
	    case 23: return actionColor; break;
	    case 24: return actionTime; break;
	    case 25: return Immune; break;

	}



}
