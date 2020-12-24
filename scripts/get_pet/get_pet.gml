/// @description get_map(id,type)
/// @function get_map
/// @param id
/// @param type
function get_pet(argument0, argument1) {

	// Declarar variables
	var Nombre, Sprite;
	var off = 8;
	var mini = false;
	var Descripcion = lang(3000+off+argument0);

	// Devuelve informacion del mapa
	switch(argument0) {

	    case 0:
	        Nombre = "Charge Slime";
	        Sprite = sprSlime;
	        sprUp    = sprSlime;
	        sprDown  = sprSlime;
	        sprLeft  = sprSlime;
	        sprRight = sprSlime;
	        break;

	    case 1:
	        Nombre = "Skeleton";
	        Sprite = sprSkeletonDown;
	        sprUp    = sprSkeletonUp;
	        sprDown  = sprSkeletonDown;
	        sprLeft  = sprSkeletonLeft;
	        sprRight = sprSkeletonRight;
	        break;

	    case 2:
	        Nombre = "Stomp Slime";
	        Sprite = sprMiniStompSlime;
	        sprUp    = sprMiniStompSlime;
	        sprDown  = sprMiniStompSlime;
	        sprLeft  = sprMiniStompSlime;
	        sprRight = sprMiniStompSlime;
	        break;

	    case 3:
	        Nombre = "Little Slime";
	        Sprite = sprLittleSlimeRight;
	        sprUp    = sprLittleSlimeUp;
	        sprDown  = sprLittleSlimeDown;
	        sprLeft  = sprLittleSlimeLeft;
	        sprRight = sprLittleSlimeRight;
	        break;

	    case 4:
	        Nombre = "Mage Slime";
	        Sprite = sprMageSkeletonDown;
	        sprUp    = sprMageSkeletonDown;
	        sprDown  = sprMageSkeletonDown;
	        sprLeft  = sprMageSkeletonDown;
	        sprRight = sprMageSkeletonDown;
	        break;

	    case 5:
	        Nombre = "Wizard Slime";
	        Sprite = sprWizardDown;
	        sprUp    = sprWizardDown;
	        sprDown  = sprWizardDown;
	        sprLeft  = sprWizardDown;
	        sprRight = sprWizardDown;
	        break;

	    case 6:
	        Nombre = "Skull Slime";
	        Sprite = sprGhoulDown;
	        sprUp    = sprGhoulUp;
	        sprDown  = sprGhoulDown;
	        sprLeft  = sprGhoulLeft;
	        sprRight = sprGhoulRight;
	        break;

	    case 7:
	        Nombre = "Bat Jockey";
	        Sprite = sprBat;
	        sprUp    = sprBat;
	        sprDown  = sprBat;
	        sprLeft  = sprBat;
	        sprRight = sprBat;
	        break;

	    case 8:
	        Nombre = "Medusa";
	        Sprite = spr_Eye;
	        sprUp    = spr_Eye;
	        sprDown  = spr_Eye;
	        sprLeft  = spr_Eye;
	        sprRight = spr_Eye;
	        break;

	    case 9:
	        Nombre = "Mini Medusa";
	        Sprite = spr_Mini_Eye;
	        sprUp    = spr_Mini_Eye;
	        sprDown  = spr_Mini_Eye;
	        sprLeft  = spr_Mini_Eye;
	        sprRight = spr_Mini_Eye;
	        break;

	    case 10:
	        Nombre = "Snake";
	        Sprite = sprSnakeRight;
	        sprUp    = sprSnakeUp;
	        sprDown  = sprSnakeDown;
	        sprLeft  = sprSnakeLeft;
	        sprRight = sprSnakeRight;
	        break;

	    case 11:
	        Nombre = "Rabbitslime";
	        Sprite = sprConejoDown;
	        sprUp    = sprConejoUp;
	        sprDown  = sprConejoDown;
	        sprLeft  = sprConejoLeft;
	        sprRight = sprConejoRight;
	        break;

	    case 12:
	        Nombre = "Spider";
	        Sprite = spr_Spider_Derecha;
	        sprUp    = spr_Spider_Arriba;
	        sprDown  = spr_Spider_Abajo;
	        sprLeft  = spr_Spider_Izquierda;
	        sprRight = spr_Spider_Derecha;
	        break;

	    case 13:
	        Nombre = "Shadow Spawn";
	        Sprite = spr_Enemigo_Shadow_Spawn;
	        sprUp    = spr_Enemigo_Shadow_Spawn;
	        sprDown  = spr_Enemigo_Shadow_Spawn;
	        sprLeft  = spr_Enemigo_Shadow_Spawn;
	        sprRight = spr_Enemigo_Shadow_Spawn;
	        break;

	    case 14:
	        Nombre = "Mimic";
	        Sprite = spr_Cofre;
	        sprUp    = spr_Cofre;
	        sprDown  = spr_Cofre;
	        sprLeft  = spr_Cofre;
	        sprRight = spr_Cofre;
	        break;

	    case 15:
	        Nombre = "Mitosis";
	        Sprite = spr_Mitosis_Big;
	        sprUp    = spr_Mitosis_Big;
	        sprDown  = spr_Mitosis_Big;
	        sprLeft  = spr_Mitosis_Big;
	        sprRight = spr_Mitosis_Big;
	        break;

	    case 16:
	        Nombre = "Minitosis";
	        Sprite = spr_Mitosis_Small;
	        sprUp    = spr_Mitosis_Small;
	        sprDown  = spr_Mitosis_Small;
	        sprLeft  = spr_Mitosis_Small;
	        sprRight = spr_Mitosis_Small;
	        break;

	    case 17:
	        Nombre = "Tomahawk";
	        Sprite = sprTomahawkDownSkull;
	        sprUp    = sprTomahawkUpSkull;
	        sprDown  = sprTomahawkDownSkull;
	        sprLeft  = sprTomahawkLeftSkull;
	        sprRight = sprTomahawkRightSkull;
	        break;

	    case 18:
	        Nombre = "Mother Slime";
	        Sprite = sprMotherSlime;
	        sprUp    = sprMotherSlime;
	        sprDown  = sprMotherSlime;
	        sprLeft  = sprMotherSlime;
	        sprRight = sprMotherSlime;
	        break;

	    case 19:
	        Nombre = "Hardmahawk";
	        Sprite = sprHardmahawkDownSkull;
	        sprUp    = sprHardmahawkUpSkull;
	        sprDown  = sprHardmahawkDownSkull;
	        sprLeft  = sprHardmahawkLeftSkull;
	        sprRight = sprHardmahawkRightSkull;
	        break;

	    case 20:
	        Nombre = "Summoner";
	        Sprite = sprSummonerRight;
	        sprUp    = sprSummonerLeft;
	        sprDown  = sprSummonerLeft;
	        sprLeft  = sprSummonerLeft;
	        sprRight = sprSummonerRight;
	        mini = true;
	        break;

	    case 21:
	        Nombre = "Chain Slime";
	        Sprite = sprChainSlime;
	        sprUp    = sprChainSlime;
	        sprDown  = sprChainSlime;
	        sprLeft  = sprChainSlime;
	        sprRight = sprChainSlime;
	        break;

	    case 22:
	        Nombre = "Thief Slime";
	        Sprite = sprChallengeSlime;
	        sprUp    = sprChallengeSlime;
	        sprDown  = sprChallengeSlime;
	        sprLeft  = sprChallengeSlime;
	        sprRight = sprChallengeSlime;
	        mini = true;
	        break;

	    case 23:
	        Nombre = "Blue Slime";
	        Sprite = spr_Jefe_BlueSlime;
	        sprUp    = spr_Jefe_BlueSlime;
	        sprDown  = spr_Jefe_BlueSlime;
	        sprLeft  = spr_Jefe_BlueSlime;
	        sprRight = spr_Jefe_BlueSlime;
	        mini = 1.5;
	        break;

	    case 24:
	        Nombre = "Gray Slime";
	        Sprite = spr_Jefe_BlackSlime;
	        sprUp    = spr_Jefe_BlackSlime;
	        sprDown  = spr_Jefe_BlackSlime;
	        sprLeft  = spr_Jefe_BlackSlime;
	        sprRight = spr_Jefe_BlackSlime;
	        mini = 1.5;
	        break;

	    case 25:
	        Nombre = "Purple Slime";
	        Sprite = spr_Jefe_PurpleSlime;
	        sprUp    = spr_Jefe_PurpleSlime;
	        sprDown  = spr_Jefe_PurpleSlime;
	        sprLeft  = spr_Jefe_PurpleSlime;
	        sprRight = spr_Jefe_PurpleSlime;
	        mini = 1.5;
	        break;

	    case 26:
	        Nombre = "Orange Slime";
	        Sprite = spr_Jefe_OrangeSlime;
	        sprUp    = spr_Jefe_OrangeSlime;
	        sprDown  = spr_Jefe_OrangeSlime;
	        sprLeft  = spr_Jefe_OrangeSlime;
	        sprRight = spr_Jefe_OrangeSlime;
	        mini = 1.5;
	        break;

	    case 27:
	        Nombre = "Green Slime";
	        Sprite = spr_Green_SuperSlime;
	        sprUp    = spr_Green_SuperSlime;
	        sprDown  = spr_Green_SuperSlime;
	        sprLeft  = spr_Green_SuperSlime;
	        sprRight = spr_Green_SuperSlime;
	        mini = 1.5;
	        break;

	    case 28:
	        Nombre = "Red Slime";
	        Sprite = spr_Red_SuperSlime;
	        sprUp    = spr_Red_SuperSlime;
	        sprDown  = spr_Red_SuperSlime;
	        sprLeft  = spr_Red_SuperSlime;
	        sprRight = spr_Red_SuperSlime;
	        mini = 1.5;
	        break;

	    case 29:
	        Nombre = "Black Slime";
	        Sprite = spr_RealBlack_SuperSlime;
	        sprUp    = spr_RealBlack_SuperSlime;
	        sprDown  = spr_RealBlack_SuperSlime;
	        sprLeft  = spr_RealBlack_SuperSlime;
	        sprRight = spr_RealBlack_SuperSlime;
	        mini = 1.5;
	        break;

	    case 30:
	        Nombre = "Yellow Slime";
	        Sprite = spr_Yellow_SuperSlime;
	        sprUp    = spr_Yellow_SuperSlime;
	        sprDown  = spr_Yellow_SuperSlime;
	        sprLeft  = spr_Yellow_SuperSlime;
	        sprRight = spr_Yellow_SuperSlime;
	        mini = 1.5;
	        break;

	    case 31:
	        Nombre = "White Slime";
	        Sprite = spr_Jefe_WhiteSlime;
	        sprUp    = spr_Jefe_WhiteSlime;
	        sprDown  = spr_Jefe_WhiteSlime;
	        sprLeft  = spr_Jefe_WhiteSlime;
	        sprRight = spr_Jefe_WhiteSlime;
	        mini = 1.5;
	        break;

	    case 32:
	        Nombre = "Aqua Slime";
	        Sprite = spr_Jefe_AquaSlime;
	        sprUp    = spr_Jefe_AquaSlime;
	        sprDown  = spr_Jefe_AquaSlime;
	        sprLeft  = spr_Jefe_AquaSlime;
	        sprRight = spr_Jefe_AquaSlime;
	        mini = 1.5;
	        break;

	    case 33:
	        Nombre = "Glow Slime";
	        Sprite = spr_Jefe_GlowSlime;
	        sprUp    = spr_Jefe_GlowSlime;
	        sprDown  = spr_Jefe_GlowSlime;
	        sprLeft  = spr_Jefe_GlowSlime;
	        sprRight = spr_Jefe_GlowSlime;
	        mini = 1.5;
	        break;

	    case 34:
	        Nombre = "Shadow Slime";
	        Sprite = spr_Shadow_SuperSlime;
	        sprUp    = spr_Shadow_SuperSlime;
	        sprDown  = spr_Shadow_SuperSlime;
	        sprLeft  = spr_Shadow_SuperSlime;
	        sprRight = spr_Shadow_SuperSlime;
	        mini = 1.5;
	        break;

	    case 35:
	        Nombre = "Gigadusa";
	        Sprite = sprJefeGigadusaIdle;
	        sprUp    = sprJefeGigadusaIdle;
	        sprDown  = sprJefeGigadusaIdle;
	        sprLeft  = sprJefeGigadusaIdle;
	        sprRight = sprJefeGigadusaIdle;
	        mini = 1.75;
	        break;

	    case 36:
	        Nombre = "Green Gigadusa";
	        Sprite = sprJefeGreenGigadusaIdle;
	        sprUp    = sprJefeGreenGigadusaIdle;
	        sprDown  = sprJefeGreenGigadusaIdle;
	        sprLeft  = sprJefeGreenGigadusaIdle;
	        sprRight = sprJefeGreenGigadusaIdle;
	        mini = 1.75;
	        break;

	    case 37:
	        Nombre = "Mad Slime";
	        Sprite = sprJefeMadSlime;
	        sprUp    = sprJefeMadSlime;
	        sprDown  = sprJefeMadSlime;
	        sprLeft  = sprJefeMadSlime;
	        sprRight = sprJefeMadSlime;
	        mini = 1.5;
	        break;

	    case 38:
	        Nombre = "The Great Papasa";
	        Sprite = sprJefeGreatPapasa;
	        sprUp    = sprJefeGreatPapasa;
	        sprDown  = sprJefeGreatPapasa;
	        sprLeft  = sprJefeGreatPapasa;
	        sprRight = sprJefeGreatPapasa;
	        mini = 2.5;
	        break;

	    case 39:
	        Nombre = "Creep";
	        Sprite = sprJefeCreep;
	        sprUp    = sprJefeCreep;
	        sprDown  = sprJefeCreep;
	        sprLeft  = sprJefeCreep;
	        sprRight = sprJefeCreep;
	        mini = 2.5;
	        break;

	    case 40:
	        Nombre = "Slimeking";
	        Sprite = spr_Jefe_KingSlime;
	        sprUp    = spr_Jefe_KingSlime;
	        sprDown  = spr_Jefe_KingSlime;
	        sprLeft  = spr_Jefe_KingSlime;
	        sprRight = spr_Jefe_KingSlime;
	        mini = 1.5;
	        break;

	    case 41:
	        Nombre = "Block Monster";
	        Sprite = sprBlockMonster;
	        sprUp    = sprBlockMonster;
	        sprDown  = sprBlockMonster;
	        sprLeft  = sprBlockMonster;
	        sprRight = sprBlockMonster;
	        break;

	    case 42:
	        Nombre = "Pot Monster";
	        Sprite = sprPotMonster;
	        sprUp    = sprPotMonster;
	        sprDown  = sprPotMonster;
	        sprLeft  = sprPotMonster;
	        sprRight = sprPotMonster;
	        break;

	    case 43:
	        Nombre = "Rat Slime";
	        Sprite = sprRatSlimeRight;
	        sprUp    = sprRatSlimeUp;
	        sprDown  = sprRatSlimeDown;
	        sprLeft  = sprRatSlimeLeft;
	        sprRight = sprRatSlimeRight;
	        break;

	    // 1.4
	    case 44:
	        Nombre   = "Lodeslime";
	        Sprite   = sprJefeLodeslime;
	        sprUp    = sprJefeLodeslime;
	        sprDown  = sprJefeLodeslime;
	        sprLeft  = sprJefeLodeslime;
	        sprRight = sprJefeLodeslime;
	        mini = 1.5;
	        break;
        
	    case 45:
	        Nombre   = "Minilode";
	        Sprite   = sprMiniLode;
	        sprUp    = sprMiniLode;
	        sprDown  = sprMiniLode;
	        sprLeft  = sprMiniLode;
	        sprRight = sprMiniLode;
	        break;
        
	    case 46:
	        Nombre   = "Planet Slime";
	        Sprite   = sprJefePlanetslime;
	        sprUp    = sprJefePlanetslime;
	        sprDown  = sprJefePlanetslime;
	        sprLeft  = sprJefePlanetslime;
	        sprRight = sprJefePlanetslime;
	        mini = 1.5;
	        break;
        
	    case 47:
	        Nombre   = "Big Bomb";
	        Sprite   = sprJefe_BombSlime;
	        sprUp    = sprJefe_BombSlime;
	        sprDown  = sprJefe_BombSlime;
	        sprLeft  = sprJefe_BombSlime;
	        sprRight = sprJefe_BombSlime;
	        mini = 1.5;
	        break;
        
	    case 48:
	        Nombre   = "Bulb Slime";
	        Sprite   = sprJefeBulbslimeRed;
	        sprUp    = sprJefeBulbslimeRed;
	        sprDown  = sprJefeBulbslimeRed;
	        sprLeft  = sprJefeBulbslimeRed;
	        sprRight = sprJefeBulbslimeRed;
	        mini = 1.5;
	        break;
        
	    case 49:
	        Nombre   = "The Gang";
	        Sprite   = sprJefeGangslime;
	        sprUp    = sprJefeGangslime;
	        sprDown  = sprJefeGangslime;
	        sprLeft  = sprJefeGangslime;
	        sprRight = sprJefeGangslime;
	        mini = 1.5;
	        break;
        
	    case 50:
	        Nombre   = "Rockslime";
	        Sprite   = sprJefeRockslime;
	        sprUp    = sprJefeRockslime;
	        sprDown  = sprJefeRockslime;
	        sprLeft  = sprJefeRockslime;
	        sprRight = sprJefeRockslime;
	        mini = 1.5;
	        break;
        
	    case 51:
	        Nombre   = "Ghost Slimeking"
	        Sprite   = spr_Jefe_GhostKingSlime;
	        sprUp    = spr_Jefe_GhostKingSlime;
	        sprDown  = spr_Jefe_GhostKingSlime;
	        sprLeft  = spr_Jefe_GhostKingSlime;
	        sprRight = spr_Jefe_GhostKingSlime;
	        mini = 1.5;
	        break;
        
	    case 52:
	        Nombre   = "Boneslime"
	        Sprite   = sprJefeBoneslime;
	        sprUp    = sprJefeBoneslime;
	        sprDown  = sprJefeBoneslime;
	        sprLeft  = sprJefeBoneslime;
	        sprRight = sprJefeBoneslime;
	        mini = 1.5;
	        break;
        
	    case 53:
	        Nombre   = "Big Snake"
	        Sprite   = sprJefeBigSnakeFull;
	        sprUp    = sprJefeBigSnakeFull;
	        sprDown  = sprJefeBigSnakeFull;
	        sprLeft  = sprJefeBigSnakeFull;
	        sprRight = sprJefeBigSnakeFull;
	        mini = 1.5;
	        break;
        
	    case 54:
	        Nombre   = "Eater Slime"
	        Sprite   = sprJefeEaterslimeFull;
	        sprUp    = sprJefeEaterslimeFull;
	        sprDown  = sprJefeEaterslimeFull;
	        sprLeft  = sprJefeEaterslimeFull;
	        sprRight = sprJefeEaterslimeFull;
	        mini = 1.5;
	        break;
        
	    case 55:
	        Nombre   = "Planetoid";
	        Sprite   = sprPlanetoid;
	        sprUp    = sprPlanetoid;
	        sprDown  = sprPlanetoid;
	        sprLeft  = sprPlanetoid;
	        sprRight = sprPlanetoid;
	        break;
        
	    case 56:
	        Nombre   = "Black Skeleton";
	        Sprite   = sprBlackSkeletonUp;
	        sprUp    = sprBlackSkeletonUp;
	        sprDown  = sprBlackSkeletonDown;
	        sprLeft  = sprBlackSkeletonLeft;
	        sprRight = sprBlackSkeletonRight;
	        break;
        
	    case 57:
	        Nombre   = "Hell Snake";
	        Sprite   = sprHellSnakeUp;
	        sprUp    = sprHellSnakeUp;
	        sprDown  = sprHellSnakeDown;
	        sprLeft  = sprHellSnakeLeft;
	        sprRight = sprHellSnakeRight;
	        break;
        
	    case 58:
	        Nombre   = "Hardmother Slime";
	        Sprite   = sprHardmotherSlime;
	        sprUp    = sprHardmotherSlime;
	        sprDown  = sprHardmotherSlime;
	        sprLeft  = sprHardmotherSlime;
	        sprRight = sprHardmotherSlime;
	        break;
        
	    case 59:
	        Nombre   = "Fireslime";
	        Sprite   = sprFireslime;
	        sprUp    = sprFireslime;
	        sprDown  = sprFireslime;
	        sprLeft  = sprFireslime;
	        sprRight = sprFireslime;
	        break;
        
	    case 60:
	        Nombre   = "Iceslime";
	        Sprite   = sprIceslime;
	        sprUp    = sprIceslime;
	        sprDown  = sprIceslime;
	        sprLeft  = sprIceslime;
	        sprRight = sprIceslime;
	        break;
        
	    case 61:
	        Nombre   = "Minipapasa";
	        Sprite   = sprMinipapasa;
	        sprUp    = sprMinipapasa;
	        sprDown  = sprMinipapasa;
	        sprLeft  = sprMinipapasa;
	        sprRight = sprMinipapasa;
	        break;
        
	    case 62:
	        Nombre   = "Bigeye Slime";
	        Sprite   = sprBigeyeslime;
	        sprUp    = sprBigeyeslime;
	        sprDown  = sprBigeyeslime;
	        sprLeft  = sprBigeyeslime;
	        sprRight = sprBigeyeslime;
	        break;
        
	    case 63:
	        Nombre   = "Bayo Slime";
	        Sprite   = sprBayoslime;
	        sprUp    = sprBayoslime;
	        sprDown  = sprBayoslime;
	        sprLeft  = sprBayoslime;
	        sprRight = sprBayoslime;
	        break;
        
	    case 64:
	        Nombre   = "Dark Slime";
	        Sprite   = sprDarkslime;
	        sprUp    = sprDarkslime;
	        sprDown  = sprDarkslime;
	        sprLeft  = sprDarkslime;
	        sprRight = sprDarkslime;
	        break;
        
	    case 65:
	        Nombre   = "Kami Slime";
	        Sprite   = sprKamislime;
	        sprUp    = sprKamislime;
	        sprDown  = sprKamislime;
	        sprLeft  = sprKamislime;
	        sprRight = sprKamislime;
	        break;
        
	    case 66:
	        Nombre   = "Minibomb Slime";
	        Sprite   = sprMinibombslime;
	        sprUp    = sprMinibombslime;
	        sprDown  = sprMinibombslime;
	        sprLeft  = sprMinibombslime;
	        sprRight = sprMinibombslime;
	        break;
        
	    case 67:
	        Nombre   = "Clockslime";
	        Sprite   = sprClockslime;
	        sprUp    = sprClockslime;
	        sprDown  = sprClockslime;
	        sprLeft  = sprClockslime;
	        sprRight = sprClockslime;
	        break;
        
	    case 68:
	        Nombre   = "Zombieslime";
	        Sprite   = sprZombieslime;
	        sprUp    = sprZombieslime;
	        sprDown  = sprZombieslime;
	        sprLeft  = sprZombieslime;
	        sprRight = sprZombieslime;
	        break;
        
	    case 69:
	        Nombre   = "Dinoslime";
	        Sprite   = sprDinoslime;
	        sprUp    = sprDinoslime;
	        sprDown  = sprDinoslime;
	        sprLeft  = sprDinoslime;
	        sprRight = sprDinoslime;
	        break;
        
	    case 70:
	        Nombre   = "Red Summoner";
	        Sprite   = sprRedSummonerLeft;
	        sprUp    = sprRedSummonerLeft;
	        sprDown  = sprRedSummonerLeft;
	        sprLeft  = sprRedSummonerLeft;
	        sprRight = sprRedSummonerRight;
	        break;
        
	    case 71:
	        Nombre   = "Slibone";
	        Sprite   = sprSlibone;
	        sprUp    = sprSlibone;
	        sprDown  = sprSlibone;
	        sprLeft  = sprSlibone;
	        sprRight = sprSlibone;
	        break;
        
	    case 72:
	        Nombre   = "Bouncyslime";
	        Sprite   = sprBouncyslime;
	        sprUp    = sprBouncyslime;
	        sprDown  = sprBouncyslime;
	        sprLeft  = sprBouncyslime;
	        sprRight = sprBouncyslime;
	        break;
        
	    case 73:
	        Nombre   = "Priestslime";
	        Sprite   = sprPriestslime;
	        sprUp    = sprPriestslime;
	        sprDown  = sprPriestslime;
	        sprLeft  = sprPriestslime;
	        sprRight = sprPriestslime;
	        break;
        
	    case 74:
	        Nombre   = "Shiftslime";
	        Sprite   = sprShiftslime;
	        sprUp    = sprShiftslime;
	        sprDown  = sprShiftslime;
	        sprLeft  = sprShiftslime;
	        sprRight = sprShiftslime;
	        break;
        
	    case 75:
	        Nombre   = "Clusterslime";
	        Sprite   = sprClusterslime;
	        sprUp    = sprClusterslime;
	        sprDown  = sprClusterslime;
	        sprLeft  = sprClusterslime;
	        sprRight = sprClusterslime;
	        break;
        
	    case 76:
	        Nombre   = "Snow Slime";
	        Sprite   = sprBossSnowSlime;
	        sprUp    = sprBossSnowSlime;
	        sprDown  = sprBossSnowSlime;
	        sprLeft  = sprBossSnowSlime;
	        sprRight = sprBossSnowSlime;
	        break;
        
	    case 77:
	        Nombre   = "Crab Slime";
	        Sprite   = sprBossCrabSlime;
	        sprUp    = sprBossCrabSlime;
	        sprDown  = sprBossCrabSlime;
	        sprLeft  = sprBossCrabSlime;
	        sprRight = sprBossCrabSlime;
	        break;
        
	    case 78:
	        Nombre   = "Spider Slime";
	        Sprite   = sprBossSpiderSlime;
	        sprUp    = sprBossSpiderSlime;
	        sprDown  = sprBossSpiderSlime;
	        sprLeft  = sprBossSpiderSlime;
	        sprRight = sprBossSpiderSlime;
			mini	 = 1.5;
	        break;
        
	    case 79:
	        Nombre   = "Caster Slime";
	        Sprite   = sprBossCasterSlime;
	        sprUp    = sprBossCasterSlime;
	        sprDown  = sprBossCasterSlime;
	        sprLeft  = sprBossCasterSlime;
	        sprRight = sprBossCasterSlime;
	        break;
        
	    case 80:
	        Nombre   = "Skeleton King";
	        Sprite   = sprBossSkeletonKingIdle;
	        sprUp    = sprBossSkeletonKingRunUp;
	        sprDown  =sprBossSkeletonKingRunDown;
	        sprLeft  =sprBossSkeletonKingRunLeft;
	        sprRight =sprBossSkeletonKingRunRight;
	        break;
        
	    case 81:
	        Nombre   = "Master Mimic";
	        Sprite   = sprMasterMimicIdle;
	        sprUp    = sprMasterMimicIdle;
	        sprDown  = sprMasterMimicIdle;
	        sprLeft  = sprMasterMimicIdle;
	        sprRight = sprMasterMimicIdle;
			mini	 = 1.5;
	        break;
        
	    case 82:
	        Nombre   = "Skeleton Mage";
	        Sprite   = sprSkeletonMage;
	        sprUp    = sprSkeletonMage;
	        sprDown  = sprSkeletonMage;
	        sprLeft  = sprSkeletonMage;
	        sprRight = sprSkeletonMage;
	        break;
        
	    case 83:
	        Nombre   = "Floating Skull A";
	        Sprite   = sprFloatingSkull;
	        sprUp    = sprFloatingSkull;
	        sprDown  = sprFloatingSkull;
	        sprLeft  = sprFloatingSkull;
	        sprRight = sprFloatingSkull;
	        break;
        
	    case 84:
	        Nombre   = "Floating Skull B";
	        Sprite   = sprFloatingSkull2;
	        sprUp    = sprFloatingSkull2;
	        sprDown  = sprFloatingSkull2;
	        sprLeft  = sprFloatingSkull2;
	        sprRight = sprFloatingSkull2;
	        break;
        
	    case 85:
	        Nombre   = "Skeleton Summoner";
	        Sprite   = sprSkeletonSummoner;
	        sprUp    = sprSkeletonSummoner;
	        sprDown  = sprSkeletonSummoner;
	        sprLeft  = sprSkeletonSummoner;
	        sprRight = sprSkeletonSummoner;
	        break;
        
	    case 86:
	        Nombre   = "Coin Spider";
	        Sprite   = sprCoinSpider;
	        sprUp    = sprCoinSpider;
	        sprDown  = sprCoinSpider;
	        sprLeft  = sprCoinSpider;
	        sprRight = sprCoinSpider;
	        break;
        
	    case 87:
	        Nombre   = "Samurai Slime";
	        Sprite   = sprEnemigoSamuraiSlime;
	        sprUp    = sprEnemigoSamuraiSlime;
	        sprDown  = sprEnemigoSamuraiSlime;
	        sprLeft  = sprEnemigoSamuraiSlime;
	        sprRight = sprEnemigoSamuraiSlime;
	        break;
        
	    case 88:
	        Nombre   = "Jumping Bomb";
	        Sprite   = sprEnemigoJumpingBombDown;
	        sprUp    = sprEnemigoJumpingBombDown;
	        sprDown  = sprEnemigoJumpingBombDown;
	        sprLeft  = sprEnemigoJumpingBombDown;
	        sprRight = sprEnemigoJumpingBombDown;
	        break;
        
	    case 89:
	        Nombre   = "Mummy Slime";
	        Sprite   = sprEnemigoMummySlime;
	        sprUp    = sprEnemigoMummySlime;
	        sprDown  = sprEnemigoMummySlime;
	        sprLeft  = sprEnemigoMummySlime;
	        sprRight = sprEnemigoMummySlime;
	        break;
        
	    case 90:
	        Nombre   = "Skull Crawler";
	        Sprite   = sprEnemigoSkullCrawler;
	        sprUp    = sprEnemigoSkullCrawler;
	        sprDown  = sprEnemigoSkullCrawler;
	        sprLeft  = sprEnemigoSkullCrawler;
	        sprRight = sprEnemigoSkullCrawler;
	        break;
        
	    case 91:
	        Nombre   = "Ghost Slime";
	        Sprite   = sprEnemigoGhostSlime;
	        sprUp    = sprEnemigoGhostSlime;
	        sprDown  = sprEnemigoGhostSlime;
	        sprLeft  = sprEnemigoGhostSlime;
	        sprRight = sprEnemigoGhostSlime;
	        break;
        
	    case 92:
	        Nombre   = "Fly Eye";
	        Sprite   = sprEnemigoFlyEye;
	        sprUp    = sprEnemigoFlyEye;
	        sprDown  = sprEnemigoFlyEye;
	        sprLeft  = sprEnemigoFlyEye;
	        sprRight = sprEnemigoFlyEye;
	        break;
        
	    case 93:
	        Nombre   = "Slime Jockey";
	        Sprite   = sprSlimeJockeyDown;
	        sprUp    = sprSlimeJockeyUp;
	        sprDown  = sprSlimeJockeyDown;
	        sprLeft  = sprSlimeJockeyLeft;
	        sprRight = sprSlimeJockeyRight;
	        break;
        
	    case 94:
	        Nombre   = "Magic Sword";
	        Sprite   = sprEnemySword;
	        sprUp    = sprEnemySword;
	        sprDown  = sprEnemySword;
	        sprLeft  = sprEnemySword;
	        sprRight = sprEnemySword;
	        break;
        
	    case 95: break;
        
	    case 96: if(argument1 == -1) return -1; break;
        
	}

	// Devolver informacion pedida
	switch(argument1) {
	    case 0: return Nombre;
	    case 1: return Sprite;
	    case 2: return Descripcion;
	    case 3: return sprUp;
	    case 4: return sprDown;
	    case 5: return sprLeft;
	    case 6: return sprRight;
	    case 7: return mini;
	}



}
