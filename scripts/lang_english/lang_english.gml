/// @description lang_english(id)
/// @function lang_english
/// @param id
function lang_english(argument0) {

	// Devuelve el texto traducido al ingles
	switch( argument0 ) {

	    // Transicion jefe
	    case 0: return "Player";
    
	    // Menu principal
	    case 1: return "PLAY"; break;   
	    case 2: return "RANKING"; break;
	    case 3: return "ITEMS"; break;
	    case 4: return "OPTIONS"; break;
	    case 5: return "BACK"; break;
    
	    // Perfil
	    case 6: return "Choose your nickname"; break;
	    case 7: return "Invalid nickname"; break;
	    case 8: return "WELCOME"; break;
	    case 9: return "Tap to choose your nickname"; break;
    
	    // Ranking
	    case 10: return "PLAYER"; break;
	    case 11: return "FLOOR"; break;
	    case 12: return "ENEMIES"; break;
	    case 13: return "TIME"; break;
	    case 14: return "LOADING..."; break;
    
	    // Biblioteca
	    case 15: return "ITEMS"; break;
	    case 16: return "OBTAINED"; break;
	    case 17: return "PAGE"; break;
	    case 18: return "TIME"; break;
    
	    // Opciones
	    case 19: return "ENEMIES"; break;
	    case 20: return "PLAYER"; break;
	    case 21: return "ROOM"; break;
	    case 22: return "CAMERA"; break;
	    case 23: return "VARIABLE"; break;
	    case 24: return "FIXED"; break;
	    case 25: return "CONTROL"; break;
	    case 26: return "OFF"; break;
	    case 27: return "ON"; break;
	    case 28: return "SOUND"; break;
    
	    // Ingame
	    case 29: return spr_Overlay_English; break;
    
	    // UI
	    case 30: return "LIFE"; break;
	    case 31: return "GOLD"; break;
	    case 32: return "ITEM"; break;
	    case 33: return "BOSS LIFE"; break;
    
	    // Ingame Menu
	    case 34: return "CONTINUE"; break;
	    case 35: return "RESTART"; break;
	    case 36: return "EXIT"; break;
    
	    // Cofre Eleccion
	    case 37: return "Very bad choice"; break;
	    case 38: return "Gold coins -99"; break;
	    case 39: return "Bad choice"; break;
	    case 40: return "Gold coins -5"; break;
	    case 41: return "Good choice"; break;
	    case 42: return "Gold coins +5"; break;
    
	    // Game Over
	    case 43: return "STATISTICS"; break;
	    case 44: return "MY STUFF"; break;
	    case 45: return "PLAY"; break;
	    case 46: return "BACK"; break;
	    case 47: return "TOTAL TIME PLAYED: "; break;
	    case 48: return "ENEMIES KILLED: "; break;
	    case 49: return "LAST FLOOR: "; break;
	    case 50: return "COLLECTED COINS: "; break;
	    case 51: return "HEALTH ITEMS: "; break;
    
	    // Ranking Tiempos
	    case 52: return "TODAY"; break;
	    case 53: return "MONTH"; break;
	    case 54: return "YEAR"; break;
	    case 55: return "EVER"; break;
	    case 56: return "ADVENTURE"; break;
	    case 57: return "ENDLESS"; break;
	    case 58: return "ARCADE"; break;
    
	    // Quality
	    case 59: return "LOW"; break;
	    case 60: return "MEDIUM"; break;
	    case 61: return "HIGH"; break;
	    case 62: return "QUALITY"; break;
	    case 63: return "AUTOSAVE"; break;
    
	    // Varios
	    case 70: return "CONTINUE"; break;
	    case 71: return "BUY"; break;
	    case 72: return "BUY THIS ITEM TO GET IT IN YOUR STARTING CLOSET"; break;
	    case 73: return "UNLOCK"; break;
	    case 74: return "GET INFORMATION ABOUT THIS ITEM"; break;
    
	    // Modos de juego
	    case 75: return "ADVENTURE"; break;   
	    case 76: return "ENDLESS"; break;   
	    case 77: return "ARCADE"; break;   
	    case 78: return "NORMAL"; break;  
	    case 79: return "HARD"; break;  
	    case 80: return "INSANE"; break;   
	    case 81: return "DIFFICULTY"; break;  
    
	    // Promotional Code
	    case 82: return "Enter your promotional code"; break; 
	    case 83: return "Internet connection is needed to use this feature"; break;
	    case 84: return "The code is not valid or has been already used"; break; 
	    case 85: return "You've received 250 gold coins."; break; 
	    case 86: return "You've received 500 gold coins."; break; 
	    case 87: return "You've received 1000 gold coins."; break; 
	    case 88: return "Ads have been deactivated."; break; 
	    // case 89 is used !!
    
	    // Arcade
	    case 90: return "ROUND"; break;
	    case 91: return "LEVEL"; break;
    
	    // News
	    case 92: return "NEWS"; break;
	    case 93: return "LOADING"; break;
	    case 94: return "ITEMS"; break;
	    case 95: return "DROP"; break;
	    case 96: return "NO ITEMS"; break;
	    case 97: return "SAVE ME"; break;
	    case 98: return "PET"; break;
	    case 99: return "VISIBLE"; break;
	    case 89: return "INVISIBLE"; break;
    
	    // Pets
	    case 3000: return "LEVEL UP"; break;
	    case 3001: return "REACH PET LEVEL 5 TO UNLOCK ITS ABILITY"; break;
	    case 3002: return "LOCKED"; break;
	    case 3003: return "DEFEAT THIS ENEMY TO UNLOCK IT"; break;
	    case 3004: return "MAX LEVEL"; break;
	    case 3005: return "PETS"; break;
	    case 3006: return "DOUBLE TAP TO EQUIP"; break;
	    case 3007: return "LEFT"; break;
    
	    // Pet Skills
	    case 3008: return "Speed x1.5"; break;
	    case 3009: return "Damage x1.25"; break;
	    case 3010: return "Knockback x1.5"; break;
	    case 3011: return "1% Chance to shoot a super powerful bullet"; break;
	    case 3012: return "10% Chance to teleport when hit"; break;
	    case 3013: return "25% Chance to teleport when hit"; break;
	    case 3014: return "10% Chance to avoid damage when hit"; break;
	    case 3015: return "5% Chance to avoid damage when hit"; break;
	    case 3016: return "1% Chance to full heal when killing an enemy"; break;
	    case 3017: return "5% To heal when killing an enemy"; break;
	    case 3018: return "50% to avoid damage from spikes"; break;
	    case 3019: return "Heart rooms are more likely to appear"; break;
	    case 3020: return "Pots will never spawn spiders"; break;
	    case 3021: return "Challenge rooms are more likely to appear"; break;
	    case 3022: return "Shops are more likely to appear"; break;
	    case 3023: return "10% Chance to drop a dummy when hit"; break;
	    case 3024: return "Mitosis won't split when kill"; break;
	    case 3025: return "50% Chance to avoid fire damage"; break;
	    case 3026: return "25% Chance to Mother Slime not spliting"; break;
	    case 3027: return "20% Chance to avoid damage when hit"; break;
	    case 3028: return "Summoned Skeletons have 1 HP"; break;
	    case 3029: return "Knockback doesn't affect you"; break;
	    case 3030: return "All enemies have +10% chance to drop gold"; break;
	    case 3031: return "Knockback x2"; break;
	    case 3032: return "Damage x1.5"; break;
	    case 3033: return "Speed x2"; break;
	    case 3034: return "10% Chance to hit all enemies when killing an enemy"; break;
	    case 3035: return "5% to spawn a green slime instead of a normal enemy"; break;
	    case 3036: return "Fire damage no longer affects you"; break;
	    case 3037: return "Enemies have a chance to drop a bomb when killed"; break;
	    case 3038: return "75% to avoid damage from spikes"; break;
	    case 3039: return "Usable items slowly charges over time"; break;
	    case 3040: return "Magic Aura no longer heals Aqua Slime"; break;
	    case 3041: return "Magic Aura no longer protects Glow Slime"; break;
	    case 3042: return "All rooms are lit up"; break;
	    case 3043: return "Spawn gold instead of medusas"; break;
	    case 3044: return "Spawn hearts instead of medusas"; break;
	    case 3045: return "25% Chance to drop a dummy when hit"; break;
	    case 3046: return "Teleport when hit"; break;
	    case 3047: return "0.1% Chance to instakill any monster"; break;
	    case 3048: return "Increase your damage by 1 every minute"; break;
	    case 3049: return "Block monsters no longer appear"; break;
	    case 3050: return "Pot monsters no longer appear"; break;
	    case 3051: return "Enemies have a chance to drop gold when body hit"; break;
	    case 3052: return "Enemies have a chance to become minilodes."; break;
	    case 3053: return "Lodeslime no longer spawns minilodes."; break;
	    case 3054: return "Start with +5 keys."; break;
	    case 3055: return "Start with +5 bombs."; break;
	    case 3056: return "Gain +2 damage if you have all item charges."; break;
	    case 3057: return "Chance to spawn 2 clones when hit."; break;
	    case 3058: return "Chance to destroy rocks by shooting them."; break;
	    case 3059: return "All exp x1.5"; break;
	    case 3060: return "Skeletons won't release slimes on death."; break;
	    case 3061: return "Snakes won't release slimes on death."; break;
	    case 3062: return "Challenge slime is less likely to release enemies."; break;
	    case 3063: return "Planet Slime no longer spawns planetoids."; break;
	    case 3064: return "Black skeletons become normal skeletons."; break;
	    case 3065: return "Hell snakes become normal snakes."; break;
	    case 3066: return "Hardmother slimes become normal mother slimes."; break;
	    case 3067: return "Fire deals extra damage."; break;
	    case 3068: return "Paralisis duration reduced."; break;
	    case 3069: return "Enemies bullets might disappear."; break;
	    case 3070: return "Bigeye slimes no longer move."; break;
	    case 3071: return "Chance to shoot to both sides."; break;
	    case 3072: return "Slimes no longer charge."; break;
	    case 3073: return "Bullets can hurt kamislimes."; break;
	    case 3074: return "Chance to get a bomb when an explosion happens."; break;
	    case 3075: return "Chance to not consume a key when used."; break;
	    case 3076: return "Chance to steal exp when shooting."; break;
	    case 3077: return "Chance to spawn a experience explosion."; break;
	    case 3078: return "Red summoner no longer spawns enemies."; break;
	    case 3079: return "Slibones no longer throw bones."; break;
	    case 3080: return "Bouncyslime no longer protects enemies."; break;
	    case 3081: return "Priestslimes might not protect enemies."; break;
	    case 3082: return "Bouncy enemies move slower."; break;
	    case 3083: return "Explosions might multiply."; break;
		case 3084: return "Ice no longer affects you."; break;
		case 3085: return "Move faster horizontally."; break;
		case 3086: return "Killing spiders heal you."; break;
		case 3087: return "Chance to shoot a spike trail."; break;
		case 3088: return "Obtain <Flying Skull> at the start of the game."; break;
		case 3089: return "Mimics drop chests."; break;
		case 3090: return "Obtain <Toxic Caster> at the start of the game."; break;
		case 3091: return "Obtain <Magnetic Bombs> at the start of the game."; break;
		case 3092: return "Obtain <Area Bombs> at the start of the game."; break;
		case 3093: return "Obtain <Grind Book> at the start of the game."; break;
		case 3094: return "Increase the chance of getting better coins."; break;
		case 3095: return "Chance to shoot a nova."; break;
		case 3096: return "Bombs chase enemies."; break;
		case 3097: return "Chance to revive when killed."; break;
		case 3098: return "All rooms are small."; break;
		case 3099: return "Obtain <Ghost Bullets> at the start of the game."; break;
		case 3100: return "Chance to shoot lazers to enemies."; break;
		case 3101: return "Chance to create a dummy when hit."; break;
		case 3102: return "Obtain <Maigc Shield> at the start of the game."; break;
    
	    // Endless Dungeon
	    case 4000: return "Level "; break;
	    case 4001: return "Go through the tower#to level it up"; break;
	    case 4002: return "This feature is locked, play Adventure mode to unlock it"; break;
	    case 4003: return "Complete a run#with different items#every day#and get 200 coins!"; break;
	    case 4004: return "Daily run complete#Come back tomorrow#for a different setup!"; break;
	    case 4005: return "Basement unlocked"; break;
	
		// Tips
		case 4300: return "GET THE DARK CROWN."; break;
		case 4301: return "A DUMMY CAN CONFUSE A MIMIC."; break;
		case 4302: return "NOT EVERYTHING IS WHAT IT SEEMS."; break;
		case 4303: return "CHARGE THE ENDLESS ITEM."; break;
		case 4304: return "YOU CAN GO DEEPER."; break;
		case 4305: return "THE CHEST OF KEYS SAYS THE TRUTH."; break;
		case 4306: return "THE CHEST OF BOMBS DOESN'T SAY THE TRUTH."; break;
		case 4307: return "THE CHEST OF ITEMS DOESN'T SAY ANYTHING."; break;
		case 4308: return "IT'S A SECRET TO EVERYBODY."; break;
		case 4309: return "THIS IS NOT AN ADVICE, I'M JUST TRYING TO MAKE YOU WASTE YOUR TIME WHILE THE REINFORCEMENTS ARRIVE...~"; break;
	    case 4310: return "DEFEAT AN ENEMY 10 TIMES TO UNLOCK IT AS A PET, THEN LEVEL IT TO UNLEASH ITS POWER."; break;
		case 4311: return "COMPLETE THE GAME WITH EVERY CHARACTER TO UNLOCK HARRY'S FULL POWER."; break;
		case 4312: return "USE ... TO UNLOCK ..."; break;
		case 4313: return "YOU CAN BUY AN ITEM FROM THE MENU TO USE IT INGAME."; break;
		case 4314: return "SOME WALLS HIDE SECRETS."; break;
		case 4315: return "OPEN THE DOOR IN THE FIRST ROOM."; break;
		case 4316: return "BOMBS CAN OPEN DOORS."; break;
		case 4317: return "THE DEVELOPER IS A HORRIBLE PERSON FOR CREATING THE SPEEDRUN CHALLENGE."; break;
		case 4318: 
			if(os_type == os_android) return "YOU CAN SEE AN ITEM'S DESCRIPTION BEFORE PICKING IT UP BY TAPPING IT."; 
			if(os_type == os_windows) return "YOU CAN SEE AN ITEM'S DESCRIPTION BEFORE PICKING IT UP BY CLICKING IT.";
		break;
	
	    // Extras
	    case 5000: return "TOWER"; break;
	    case 5001: return "BASEMENT"; break;
	    case 5002: return "YOU HEAR A SOUND FROM THE DUNGEON ENTRANCE"; break;
	    case 5003: return "You have received 50 coins."; break;
	    case 5004: return "LEVEL UP"; break;
	    case 5005: return "Damage upgraded"; break;
	    case 5006: return "Health upgraded"; break;
	    case 5007: return "Shoot speed upgraded"; break;
	    case 5008: return "Doubletap#Player"; break;
	    case 5009: return "Doubletap#R-Stick"; break;
	    case 5010: return "Bomb Mode"; break;
	    case 5011: return spr_OverlayPC_English; break;
	    case 5012: return "SEED"; break;
	    case 5013: return "FULLSCREEN"; break;
    
	    // Characters
	    case 6000: return "Hairry" break;
	    case 6001: return "The original Slime Slayer." break;
	    case 6002: return "-" break;
    
	    case 6003: return "Jade" break;
	    case 6004: return "Starts with One Frame Bomb and 50 bombs." break;
	    case 6005: return "Finish the tower." break;
    
	    case 6006: return "The Collector" break;
	    case 6007: return "Melee character. Starts with The Scythe." break;
	    case 6008: return "Lose all you red hearts." break;
    
	    case 6009: return "Igneous" break;
	    case 6010: return "Can't shoot. Can charge items passively." break;
	    case 6011: return "Be killed by a fireball." break;
    
	    case 6012: return "Void" break;
	    case 6013: return "Can't shoot. Starts with The Finger." break;
	    case 6014: return "Finish the basement with The Collector." break;
    
	    case 6015: return "Maiyan" break;
	    case 6016: return "Shoots special bullets that pierce enemies." break;
	    case 6017: return "Come back to life." break;
    
	    case 6018: return "Midas" break;
	    case 6019: return "All hearts are converted into coins." break;
	    case 6020: return "Die with 99 coins." break;
    
	    case 6021: return "Mind" break;
	    case 6022: return "Starts with 3 random passive items." break;
	    case 6023: return "Finish all challenges." break;
    
	    case 6024: return "..." break;
	    case 6028: return "Starts with the pray." break;
	    case 6026: return "..." break;
    
	    case 6027: return "Prayer" break;
	    case 6025: return "..." break;
	    case 6029: return "It's a secret to everybody" break;
    
	    case 6030: return "Flesh" break;
	    case 6031: return "His soul leaves his body." break;
	    case 6032: return "Purchase an item from an experience shop" break;
    
	    case 6033: return "Slimer" break;
	    case 6034: return "Can't be hit. Lose health when changing room." break;
	    case 6035: return "Kill The Slimeking without shooting." break;
    
	    case 6036: return "Bones" break;
	    case 6037: return "Shoots small bones." break;
	    case 6038: return "Defeat The Skeleton King." break;
    
	    case 6039: return "The Trapped" break;
	    case 6040: return "Gets more items than the other." break;
	    case 6041: return "Defeat Master Mimic." break;
    
	    // Misc
	    case 6500: return "is now playable!"; break;
	    case 6501: return "CHOOSE YOUR#CHARACTER"; break;
	    case 6502: return " KEYS"; break;
	    case 6503: return "CHOOSE#CHALLENGE"; break;
	    case 6504: return "COMPLETE!"; break;
	    case 6505: return "LEVEL UP!"; break;
	    case 6506: return "Sell Random#Item"; break;
	    case 6507: return "CONGRATULATIONS"; break;
		case 6508: return "YOU ARE NOT READY YET.......Ä"; break;
		case 6509: return "NOW YOU ARE READY.......¦"; break;
		case 6510: return "STATUS POINTS LEFT."; break;
    
	    // Challenges
	    case 6700: return "WE ARE#THE CHAMPIONS"; break;
	    case 6701: return "All enemies are champions."; break;
	    case 6702: return "SPEED RUNNER"; break;
	    case 6703: return "Finish the tower in 10 minutes or less."; break;
	    case 6704: return "PURITY"; break;
	    case 6705: return "There are no treasure rooms."; break;
	    case 6706: return "XXL"; break;
	    case 6707: return "The tower grows."; break;
	    case 6708: return "CTHULHU MASTER"; break;
	    case 6709: return "Become the cthulhu master."; break;
	    case 6710: return "THE EVIL#DEVELOPER"; break;
	    case 6711: return "Blame the developer."; break;
	    case 6712: return "RANDOMIZER"; break;
	    case 6713: return "Change your items every floor."; break;
	    case 6714: return "GREED"; break;
	    case 6715: return "Don't be greedy."; break;
	    case 6716: return "DON'T TOUCH ME"; break;
	    case 6717: return "Don't let them touch you."; break;
	    case 6718: return "BAZOOKA"; break;
	    case 6719: return "Big Bang."; break;
	    case 6720: return "LITTLE ONES"; break;
	    case 6721: return "Let them do the dirty work."; break;
	    case 6722: return "ROCKET MAN"; break;
	    case 6723: return "Right from the space."; break;
	    case 6724: return "EYE BLINK"; break;
	    case 6725: return "Superpowers."; break;
	    case 6726: return "WEALTH"; break;
	    case 6727: return "Buy the challenge."; break;
	    case 6728: return "MUSHROOM POWER"; break;
	    case 6729: return "Classic."; break;
	    case 6730: return "PRE-ALPHA"; break;
	    case 6731: return "Start with the items from the first version of the game."; break;
	    case 6732: return "SETBACK"; break;
	    case 6733: return "Running faster than in challenge #02"; break;
	    case 6734: return "OMEGA"; break;
	    case 6735: return "This is cruel."; break;
	    case 6736: return "DEATHMATCH"; break;
	    case 6737: return "Not as difficult as it seems."; break;
	    case 6738: return "MISSION#IMPOSSIBLE"; break;
	    case 6739: return "Unfairest challenge ever."; break;
    
	    // Menus
	    case 7000: return "Play";
	    case 7001: return "Challenges";
	    case 7002: return "Items";
	    case 7003: return "Options";
	    case 7004: return "Pets";
	    case 7005: return "Highscores";
	    case 7006: return "Exit";
	    case 7007: return "Free#Coins";
	    case 7008: return "Adventure#Mode";
	    case 7009: return "Endless#Mode";
	    case 7010: return "Arcade#Mode";
	    case 7011: return "Daily#Run";
	    case 7012: return "Back";
	    case 7013: return "Continue";
	    case 7014: return "Promo#Code";
	    case 7015: return "Play";
	    case 7016: return "Quality#Low"; break;
	    case 7017: return "Quality#Medium"; break;
	    case 7018: return "Quality#High"; break;
	    case 7019: return "Autosave#No"; break;
	    case 7020: return "Autosave#Yes"; break;
	    case 7021: return "Audio#All"; break;
	    case 7022: return "Audio#Sounds"; break;
	    case 7023: return "Next"; break;
	    case 7024: return "Previous"; break;
	    case 7025: return "Config#Controller"; break;
	    case 7026: return "Restore#Controller"; break;
	    case 7027: return "All control buttons reset to default"; break;
	    case 7028: return "Hold"; break;
	    case 7029: return "Audio#Music"; break;
	    case 7030: return "Audio#Off"; break;
	    case 7031: return "NEXT"; break;
		case 7032: return "LOGIN"; break;
		case 7033: return "SIGNUP"; break;
		case 7034: return "GPLAY#SIGN-IN"; break;
		case 7035: return "You have been disconnected from Google Play. Restart the game to log in again."; break;
	    case 7036: return "MIGRATE#SAVEFILE"; break;
	    case 7037: return "EXPORT#SAVEFILE"; break;
	    case 7038: return "IMPORT#SAVEFILE"; break;	
	    case 7039: return "Use the following code in the import savefile option to load your savefile into another platform: "; break;	
		case 7040: return "Enter you import code to retrieve your savefile"; break;
		case 7041: return "The input code is not valid."; break;
		case 7042: return "Boss#Rush"; break;
		case 7043: return "Boss rush unlocked!"; break;
		
	    // Pickups
	    case 7500: return "gold"; break;
	    case 7501: return "keys"; break;
	    case 7502: return "bombs"; break;
	    case 7503: return "shield heart"; break;
	    case 7504: return "time heart"; break;
	    case 7505: return "skull heart"; break;
	    case 7506: return "gold heart"; break;
	    case 7507: return "recharge heart"; break;
	    case 7508: return "boss key"; break;
    
	    // Multiplayer
	    case 7600: return "Player <2>#joins the game."; break;
    
	    // Gamepad Map
	    case 8000: return "TAP THE SCREEN TO START MAPPING"; break;
	    case 8001: return "PRESS <MOVE UP> BUTTON"; break;
	    case 8002: return "PRESS <MOVE DOWN> BUTTON"; break;
	    case 8003: return "PRESS <MOVE LEFT> BUTTON"; break;
	    case 8004: return "PRESS <MOVE RIGHT> BUTTON"; break;
	    case 8005: return "PRESS <SHOOT UP> BUTTON"; break;
	    case 8006: return "PRESS <SHOOT DOWN> BUTTON"; break;
	    case 8007: return "PRESS <SHOOT LEFT> BUTTON"; break;
	    case 8008: return "PRESS <SHOOT RIGHT> BUTTON"; break;
	    case 8009: return "PRESS <PAUSE> BUTTON"; break;
	    case 8010: return "PRESS <BOMB> BUTTON"; break;
	    case 8011: return "PRESS <USE ITEM> BUTTON"; break;
	    case 8012: return "PRESS <ACTION> BUTTON"; break;
	    case 8013: return "PRESS ANY BUTTON"; break;
	    case 8014: return "TAP THE SCREEN TO SKIP"; break;
           
	    // Items
	    case 100: return "Health Up"; break; // Nombre
	    case 200: return "HP+"; break; // Descripcion Rapida
	    case 300: return "Increases life by 1"; break; // Descripcion Detallada
    
	    case 101: return "Hell Power"; break; // Nombre
	    case 201: return "Damage+"; break; // Descripcion Rapida
	    case 301: return "Increases damage by 1"; break; // Descripcion Detallada
    
	    case 102: return "Life Amulet"; break; // Nombre
	    case 202: return "Invencibility Time+"; break; // Descripcion Rapida
	    case 302: return "Increses invencibility time between hits"; break; // Descripcion Detallada
    
	    case 103: return "Delicious Fish"; break; // Nombre
	    case 203: return "HP+"; break; // Descripcion Rapida
	    case 303: return "Increases life by 1"; break; // Descripcion Detallada
    
	    case 104: return "Speed Potion"; break; // Nombre
	    case 204: return "Speed+"; break; // Descripcion Rapida
	    case 304: return "Increases speed by 0.25"; break; // Descripcion Detallada
    
	    case 105: return "Cheese"; break; // Nombre
	    case 205: return "Full HP recovery"; break; // Descripcion Rapida
	    case 305: return "Restores full life"; break; // Descripcion Detallada
    
	    case 106: return "Treasure Map"; break; // Nombre
	    case 206: return "Dungeon revealed"; break; // Descripcion Rapida
	    case 306: return "Shows the map"; break; // Descripcion Detallada
    
	    case 107: return "Eye See You"; break; // Nombre
	    case 207: return "Attack from back"; break; // Descripcion Rapida
	    case 307: return "Shoots also backwards"; break; // Descripcion Detallada
    
	    case 108: return "Magic Shield"; break; // Nombre
	    case 208: return "Protects from the first hit"; break; // Descripcion Rapida
	    case 308: return "Absorbs the first hit recieved in the room"; break; // Descripcion Detallada
    
	    case 109: return "Rocky Ammo"; break; // Nombre
	    case 209: return "Knockback+"; break; // Descripcion Rapida
	    case 309: return "Increases projectile knockback"; break; // Descripcion Detallada
    
	    case 110: return "Big Bullets"; break; // Nombre
	    case 210: return "Damage++ FireRate-- Size+"; break; // Descripcion Rapida
	    case 310: return "Increases damage a lot but reduces cadence"; break; // Descripcion Detallada
    
	    case 111: return "Mark Of Piercing"; break; // Nombre
	    case 211: return "Piercing Bullets"; break; // Descripcion Rapida
	    case 311: return "Bullets pierce first enemy"; break; // Descripcion Detallada
    
	    case 112: return "Angled Shooting"; break; // Nombre
	    case 212: return "Speed changes bullets direction"; break; // Descripcion Rapida
	    case 312: return "Bullets adhere the player's speed"; break; // Descripcion Detallada
    
	    case 113: return "Poison Edge"; break; // Nombre
	    case 213: return "Poison enemies"; break; // Descripcion Rapida
	    case 313: return "Bullets poison enemies and hurt them along the time"; break; // Descripcion Detallada
    
	    case 114: return "Sharp Edge"; break; // Nombre
	    case 214: return "Make'em bleed"; break; // Descripcion Rapida
	    case 314: return "Bullets make enemies bleed and hurt them along the time"; break; // Descripcion Detallada
    
	    case 115: return "Delicious Meat"; break; // Nombre
	    case 215: return "HP++"; break; // Descripcion Rapida
	    case 315: return "Increases life by 2"; break; // Descripcion Detallada
    
	    case 116: return "Frog Legs"; break; // Nombre
	    case 216: return "HP+"; break; // Descripcion Rapida
	    case 316: return "Increases life by 1"; break; // Descripcion Detallada
    
	    case 117: return "Edible Leaf"; break; // Nombre
	    case 217: return "HP+"; break; // Descripcion Rapida
	    case 317: return "Increases life by 1"; break; // Descripcion Detallada
    
	    case 118: return "Magic Skin"; break; // Nombre
	    case 218: return "Spike Damage+"; break; // Descripcion Rapida
	    case 318: return "You return the hit to the enemies that hit you"; break; // Descripcion Detallada
    
	    case 119: return "Hard Skin"; break; // Nombre
	    case 219: return "Spike Damage+"; break; // Descripcion Rapida
	    case 319: return "You return the hit to the enemies that hit you"; break; // Descripcion Detallada
    
	    case 120: return "Blue Fire"; break; // Nombre
	    case 220: return "Fast weak attack"; break; // Descripcion Rapida
	    case 320: return "Increases bullet cadence but reduce range"; break; // Descripcion Detallada
    
	    case 121: return "Bouncing Bullets"; break; // Nombre
	    case 221: return "Boing, boing."; break; // Descripcion Rapida
	    case 321: return "Bullets bounce off the walls up to 3 times"; break; // Descripcion Detallada
    
	    case 122: return "Necroscroll"; break; // Nombre
	    case 222: return "Hit all enemies in the room"; break; // Descripcion Rapida
	    case 322: return "Hit all enemies in the room by 10 points of damage"; break; // Descripcion Detallada
    
	    case 123: return "Ranger Soul"; break; // Nombre
	    case 223: return "Damage- Bullet Range++"; break; // Descripcion Rapida
	    case 323: return "Increases bullets range a lot but reduces damage"; break; // Descripcion Detallada
    
	    case 124: return "Raging Tornado"; break; // Nombre
	    case 224: return "Knockback+ Range+"; break; // Descripcion Rapida
	    case 324: return "Increases bullets knockback and range"; break; // Descripcion Detallada
    
	    case 125: return "Refillable Potion"; break; // Nombre
	    case 225: return "Multi-use heal"; break; // Descripcion Rapida
	    case 325: return "Heals 1 heart to the player"; break; // Descripcion Detallada
    
	    case 126: return "Bat Wing"; break; // Nombre
	    case 226: return "Leech enemies health"; break; // Descripcion Rapida
	    case 326: return "Killing a small amount of enemies heals the player"; break; // Descripcion Detallada
    
	    case 127: return "Time Stop Watch"; break; // Nombre
	    case 227: return "Stop time, for a while"; break; // Descripcion Rapida
	    case 327: return "Freezes enemies for a short period of time"; break; // Descripcion Detallada
    
	    case 128: return "Freezing Contact"; break; // Nombre
	    case 228: return "Freeze enemies on contact"; break; // Descripcion Rapida
	    case 328: return "Enemies freeze when they hit you"; break; // Descripcion Detallada
    
	    case 129: return "Freezing Bullets"; break; // Nombre
	    case 229: return "Freeze enemies on hit"; break; // Descripcion Rapida
	    case 329: return "Bullets have a chance to freeze enemies"; break; // Descripcion Detallada
    
	    case 130: return "Spiral Wind"; break; // Nombre
	    case 230: return "Will blow your mind"; break; // Descripcion Rapida
	    case 330: return "Bullets have weird effects"; break; // Descripcion Detallada 
    
	    case 131: return "Scroll Of Substitution"; break; // Nombre
	    case 231: return "Change enemies"; break; // Descripcion Rapida
	    case 331: return "Kills all enemies in the room and summon new ones"; break; // Descripcion Detallada
    
	    case 132: return "The D6"; break; // Nombre
	    case 232: return "Reroll chests content. Totally original."; break; // Descripcion Rapida
	    case 332: return "Change the items from the chests in the room"; break; // Descripcion Detallada
    
	    case 133: return "All Way Across"; break; // Nombre
	    case 233: return "Shoot in every direction. Rate-"; break; // Descripcion Rapida
	    case 333: return "Shoots in every direction but reduces cadence"; break; // Descripcion Detallada
    
	    case 134: return "Greedy Bag"; break; // Nombre
	    case 234: return "Doubles all money collected"; break; // Descripcion Rapida
	    case 334: return "Coins double their value"; break; // Descripcion Detallada
    
	    case 135: return "Iron Boots"; break; // Nombre
	    case 235: return "Negates damage knockback"; break; // Descripcion Rapida
	    case 335: return "Enemies cannot push you anymore"; break; // Descripcion Detallada
    
	    case 136: return "Speed Elixir"; break; // Nombre
	    case 236: return "Speed+"; break; // Descripcion Rapida
	    case 336: return "Increases speed by 0.5"; break; // Descripcion Detallada
    
	    case 137: return "Sonic Boots"; break; // Nombre
	    case 237: return "Speed++"; break; // Descripcion Rapida
	    case 337: return "Increases speed by 0.5"; break; // Descripcion Detallada
    
	    case 138: return "The Drums"; break; // Nombre
	    case 238: return "Throw enemies away"; break; // Descripcion Rapida
	    case 338: return "Throw enemies away"; break; // Descripcion Detallada
    
	    case 139: return "Static Gloves"; break; // Nombre
	    case 239: return "Pain charges"; break; // Descripcion Rapida
	    case 339: return "Being hurt charges items"; break; // Descripcion Detallada
    
	    case 140: return "Gold Skin"; break; // Nombre
	    case 240: return "Getting money hurts"; break; // Descripcion Rapida
	    case 340: return "Being hurt gives you a chance to spawn money"; break; // Descripcion Detallada
    
	    case 141: return "Swag Glasses"; break; // Nombre
	    case 241: return "More money, more power"; break; // Descripcion Rapida
	    case 341: return "Increases 1 point of damage for every 10 coins you have"; break; // Descripcion Detallada
    
	    case 142: return "Sustained Area"; break; // Nombre
	    case 242: return "Hold bullets"; break; // Descripcion Rapida
	    case 342: return "Stop bullets for a short period of time"; break; // Descripcion Detallada
    
	    case 143: return "Lockpick"; break; // Nombre
	    case 243: return "Open doors"; break; // Descripcion Rapida
	    case 343: return "Opens all room's doors"; break; // Descripcion Detallada
    
	    case 144: return "Non Chaos Emerald"; break; // Nombre
	    case 244: return "+15gold"; break; // Descripcion Rapida
	    case 344: return "Gives you 15 gold coins"; break; // Descripcion Detallada
    
	    case 145: return "Size Ring"; break; // Nombre
	    case 245: return "Bullet Size+"; break; // Descripcion Rapida
	    case 345: return "Increases bullets size"; break; // Descripcion Detallada
    
	    case 146: return "Relocation Staff"; break; // Nombre
	    case 246: return "Random Teleport"; break; // Descripcion Rapida
	    case 346: return "Teleports you to a random location after being hit"; break; // Descripcion Detallada
    
	    case 147: return "Fire Staff"; break; // Nombre
	    case 247: return "FIRE!"; break; // Descripcion Rapida
	    case 347: return "Creates fire around you"; break; // Descripcion Detallada
    
	    case 148: return "Lazaro"; break; // Nombre
	    case 248: return "Second Chance"; break; // Descripcion Rapida
	    case 348: return "Come back to life the first time you die"; break; // Descripcion Detallada
    
	    case 149: return "God's Chosen"; break; // Nombre
	    case 249: return "Low speed, such power"; break; // Descripcion Rapida
	    case 349: return "Increase your damage by a lot but decreases speed"; break; // Descripcion Detallada
    
	    case 150: return "Strength Potion"; break; // Nombre
	    case 250: return "Damage+"; break; // Descripcion Rapida
	    case 350: return "Increases damage by 1"; break; // Descripcion Detallada
    
	    case 151: return "Bullet Explosion"; break; // Nombre
	    case 251: return "Bullets also damage nearby enemies"; break; // Descripcion Rapida
	    case 351: return "Bullets also damage nearby enemies"; break; // Descripcion Detallada
    
	    case 152: return "Homing Bullets"; break; // Nombre
	    case 252: return "Bullets MAY follow the enemies"; break; // Descripcion Rapida
	    case 352: return "Bullets have a chance to follow nearby enemies"; break; // Descripcion Detallada
    
	    case 153: return "Diamond Pickaxe"; break; // Nombre
	    case 253: return "Break spikecraft"; break; // Descripcion Rapida
	    case 353: return "Bullets can destroy spikes"; break; // Descripcion Detallada
    
	    case 154: return "Angel Wing"; break; // Nombre
	    case 254: return "Fly me to the next room"; break; // Descripcion Rapida
	    case 354: return "Fly to the next level"; break; // Descripcion Detallada
    
	    case 155: return "Hard Boots"; break; // Nombre
	    case 255: return "Spikes? What are spikes?"; break; // Descripcion Rapida
	    case 355: return "You can now walk on spikes without being hurt"; break; // Descripcion Detallada
    
	    case 156: return "Gold Pickaxe"; break; // Nombre
	    case 256: return "Better than chopping wood with your hands"; break; // Descripcion Rapida
	    case 356: return "Breaks all spikes in the room"; break; // Descripcion Detallada
    
	    case 157: return "Warrior Soul"; break; // Nombre
	    case 257: return "Damage+"; break; // Descripcion Rapida
	    case 357: return "Increases damage by 1"; break; // Descripcion Detallada
    
	    case 158: return "Mage Soul"; break; // Nombre
	    case 258: return "Damage+"; break; // Descripcion Rapida
	    case 358: return "Increases damage by 1"; break; // Descripcion Detallada
    
	    case 159: return "Sharp Edge"; break; // Nombre
	    case 259: return "Damage+"; break; // Descripcion Rapida
	    case 359: return "Increases damage by 1"; break; // Descripcion Detallada
    
	    case 160: return "Magnet"; break; // Nombre
	    case 260: return "Attract shiny stuff"; break; // Descripcion Rapida
	    case 360: return "Attracts nearby collectables"; break; // Descripcion Detallada
    
	    case 161: return "Sad Mask"; break; // Nombre
	    case 261: return "It makes enemies sad"; break; // Descripcion Rapida
	    case 361: return "Hits nearby enemies once in every room"; break; // Descripcion Detallada
    
	    case 162: return "Last Effort"; break; // Nombre
	    case 262: return "PANIC!"; break; // Descripcion Rapida
	    case 362: return "Increases damage a lot when low life"; break; // Descripcion Detallada
    
	    case 163: return "Dummy"; break; // Nombre
	    case 263: return "It looks like me"; break; // Descripcion Rapida
	    case 363: return "Summons a copy that attracts enemies"; break; // Descripcion Detallada
    
	    case 164: return "Mark Of Accuracy"; break; // Nombre
	    case 264: return "Description no.64"; break; // Descripcion Rapida
	    case 364: return "Allows the player to shoot in 360 degrees"; break; // Descripcion Detallada
    
	    case 165: return "Random Perk"; break; // Nombre
	    case 2651: return "HP+"; break; // Descripcion Rapida
	    case 2652: return "Damage+"; break; // Descripcion Rapida
	    case 2653: return "Speed+"; break; // Descripcion Rapida
	    case 365: return "Grants a random stat buff"; break; // Descripcion Detallada
    
	    case 166: return "Fire Orb"; break; // Nombre
	    case 266: return "Din din din din"; break; // Descripcion Rapida
	    case 366: return "A fire orb flies around the player and damage enemies"; break; // Descripcion Detallada
    
	    case 167: return "Magic Dagger"; break; // Nombre
	    case 267: return "Legend -wait for it- dagger!"; break; // Descripcion Rapida
	    case 367: return "A dagger flies around the player and damage enemies"; break; // Descripcion Detallada
    
	    case 168: return "Guardian Angel"; break; // Nombre
	    case 268: return "It can fly, in circles"; break; // Descripcion Rapida
	    case 368: return "A guardian angel flies around the player and damage enemies"; break; // Descripcion Detallada
    
	    case 169: return "Ice Skates"; break; // Nombre
	    case 269: return "I can walk on ice I can fly"; break; // Descripcion Rapida
	    case 369: return "Allows the player to walk on ice without sliding"; break; // Descripcion Detallada
    
	    case 170: return "Light Disc"; break; // Nombre
	    case 270: return "The light shall burn you!"; break; // Descripcion Rapida
	    case 370: return "A light disc flies around the player and damage enemies"; break; // Descripcion Detallada
    
	    case 171: return "Holy Bible"; break; // Nombre
	    case 271: return "Offer the other cheek"; break; // Descripcion Rapida
	    case 371: return "Kills all enemies in the room but also hits you"; break; // Descripcion Detallada
    
	    case 172: return "War Book"; break; // Nombre
	    case 272: return "FOR ESPARTO!"; break; // Descripcion Rapida
	    case 372: return "Increases damage temporarily in the room"; break; // Descripcion Detallada
    
	    case 173: return "Friendship Book"; break; // Nombre
	    case 273: return "Everyone, get in here!"; break; // Descripcion Rapida
	    case 373: return "Summons a random ally"; break; // Descripcion Detallada
    
	    case 174: return "ASPD Book"; break; // Nombre
	    case 274: return "Who said 190 is the max?"; break; // Descripcion Rapida
	    case 374: return "Increases cadence temporarily in the room"; break; // Descripcion Detallada
    
	    case 175: return "Assault Book"; break; // Nombre
	    case 275: return "HANDS UP!"; break; // Descripcion Rapida
	    case 375: return "Shoots a bullet burst in every direction"; break; // Descripcion Detallada
    
	    case 176: return "The Magician"; break; // Nombre
	    case 276: return "Im not even here"; break; // Descripcion Rapida
	    case 376: return "Teleports the player to a random location in the room"; break; // Descripcion Detallada
    
	    case 177: return "Strike"; break; // Nombre
	    case 277: return "Asura"; break; // Descripcion Rapida
	    case 377: return "The next bullet you shoot will be huge and deal an enormous amount of damage"; break; // Descripcion Detallada
    
	    case 178: return "Summer Sales"; break; // Nombre
	    case 278: return "Discount in all stores"; break; // Descripcion Rapida
	    case 378: return "Cuts all the prices in the shop to half"; break; // Descripcion Detallada
    
	    case 179: return "Poison Touch"; break; // Nombre
	    case 279: return "Dont touch me"; break; // Descripcion Rapida
	    case 379: return "Poisons enemies that hit you"; break; // Descripcion Detallada
    
	    case 180: return "Thief Hand"; break; // Nombre
	    case 280: return "It is my stuff"; break; // Descripcion Rapida
	    case 380: return "Reduces the price of all items in the room to 0"; break; // Descripcion Detallada
    
	    case 181: return "Unfriendly"; break; // Nombre
	    case 281: return "Enemies hate each other"; break; // Descripcion Rapida
	    case 381: return "Enemies hurt other enemies by contact"; break; // Descripcion Detallada
    
	    case 182: return "Dungeon Designer"; break; // Nombre
	    case 282: return "It's so beautiful that heals you"; break; // Descripcion Rapida
	    case 382: return "Breaking pots heals the player"; break; // Descripcion Detallada
    
	    case 183: return "Chest Filler"; break; // Nombre
	    case 283: return "There's no ending"; break; // Descripcion Rapida
	    case 383: return "Refills the chests in the room after taking their items"; break; // Descripcion Detallada
    
	    case 184: return "Magnet Bullets"; break; // Nombre
	    case 284: return "BRRZR"; break; // Descripcion Rapida
	    case 384: return "Enemies attract bullets"; break; // Descripcion Detallada
    
	    case 185: return "Inner Fire"; break; // Nombre
	    case 285: return "There's a fire in the hole"; break; // Descripcion Rapida
	    case 385: return "The player cast fire while being hit"; break; // Descripcion Detallada
    
	    case 186: return "Pulse Ammo"; break; // Nombre
	    case 286: return "A must have"; break; // Descripcion Rapida
	    case 386: return "Bullets stop moving but instead they generate a force field"; break; // Descripcion Detallada
    
	    case 187: return "Lasers"; break; // Nombre
	    case 287: return "PEW PEW"; break; // Descripcion Rapida
	    case 387: return "Bullets become lasers which are faster than normal bullets"; break; // Descripcion Detallada
    
	    case 188: return "Shurikens"; break; // Nombre
	    case 288: return "Feel like a ninja"; break; // Descripcion Rapida
	    case 388: return "You now throw shurikens which are stronger than normal bullets"; break; // Descripcion Detallada
    
	    case 189: return "Illumineye"; break; // Nombre
	    case 289: return "Fire Rigns"; break; // Descripcion Rapida
	    case 389: return "Throws fire rings which can pass through enemies"; break; // Descripcion Detallada
    
	    case 190: return "Rat Size"; break; // Nombre
	    case 290: return "Watch out that nobody steps on you"; break; // Descripcion Rapida
	    case 390: return "Makes the player a lot smaller"; break; // Descripcion Detallada
    
	    case 191: return "Windforce"; break; // Nombre
	    case 291: return "The further, the stronger"; break; // Descripcion Rapida
	    case 391: return "Bullets gain strength as they fly through the room"; break; // Descripcion Detallada
    
	    case 192: return "Fire Tunic"; break; // Nombre
	    case 292: return "Fireproof"; break; // Descripcion Rapida
	    case 392: return "This tunic will protect you from any fire source"; break; // Descripcion Detallada
    
	    case 193: return "Dancing Swords"; break; // Nombre
	    case 293: return "Lock and load"; break; // Descripcion Rapida
	    case 393: return "Raises bullets damage but makes the direction unpredictable"; break; // Descripcion Detallada
    
	    case 194: return "Phantom Shield"; break; // Nombre
	    case 294: return "Load and absorb"; break; // Descripcion Rapida
	    case 394: return "First hit charges a shield, second hit is absorbed by the shield"; break; // Descripcion Detallada
    
	    case 195: return "Gold Armor"; break; // Nombre
	    case 295: return "Twice the damage but pain for everyone"; break; // Descripcion Rapida
	    case 395: return "Hit deals you twice damage but they also damage all enemies"; break; // Descripcion Detallada
    
	    case 196: return "Explorer's Belt"; break; // Nombre
	    case 296: return "It is easier to explore when there are no enemies nearby"; break; // Descripcion Rapida
	    case 396: return "Increases the speed when there's no enemies in the room"; break; // Descripcion Detallada
    
	    case 197: return "Fire Pillar"; break; // Nombre
	    case 297: return "The roof is on fire"; break; // Descripcion Rapida
	    case 397: return "Summons fire in four directions around the player"; break; // Descripcion Detallada
    
	    case 198: return "Boss Slayer"; break; // Nombre
	    case 298: return "More strength against bosses"; break; // Descripcion Rapida
	    case 398: return "Duplicated strength in the boss room"; break; // Descripcion Detallada
    
	    case 199: return "Greed"; break; // Nombre
	    case 299: return "I only want to go shopping"; break; // Descripcion Rapida
	    case 399: return "The special room will always be a shop"; break; // Descripcion Detallada
    
	    case 400: return "Minishots"; break; // Nombre
	    case 500: return "Weird Shots"; break; // Descripcion Rapida
	    case 600: return "Bullets change directions in mid-air"; break; // Descripcion Detallada
    
	    case 401: return "Adeadnaline"; break; // Nombre
	    case 501: return "Power of the dead"; break; // Descripcion Rapida
	    case 601: return "Bullets increase its damage in the room for every enemy killed"; break; // Descripcion Detallada
    
	    case 402: return "Giantkiller"; break; // Nombre
	    case 502: return "Its good for your health"; break; // Descripcion Rapida
	    case 602: return "Recover one heart after killing a boss"; break; // Descripcion Detallada
    
	    case 403: return "Riposte"; break; // Nombre
	    case 503: return "Counterattack"; break; // Descripcion Rapida
	    case 603: return "Auto-shoot bullets when you are hit"; break; // Descripcion Detallada
    
	    case 404: return "Grind Book"; break; // Nombre
	    case 504: return "Best farming technique"; break; // Descripcion Rapida
	    case 604: return "Summons enemies in the room"; break; // Descripcion Detallada
    
	    case 405: return "Life Pact"; break; // Nombre
	    case 505: return "Life VS Power"; break; // Descripcion Rapida
	    case 605: return "Exchange your life for power"; break; // Descripcion Detallada
    
	    case 406: return "Pure Love"; break; // Nombre
	    case 506: return "AndroidGaming <3"; break; // Descripcion Rapida
	    case 606: return "Summons hearts in the room"; break; // Descripcion Detallada
    
	    case 407: return "The Orb"; break; // Nombre
	    case 507: return "360 Degrees"; break; // Descripcion Rapida
	    case 607: return "Bullets explode in circles"; break; // Descripcion Detallada
    
	    case 408: return "Slime Hater"; break; // Nombre
	    case 508: return "Isnt the game about slimes?"; break; // Descripcion Rapida
	    case 608: return "Kill every non-boss slime in the room"; break; // Descripcion Detallada
    
	    case 409: return "Too much gold"; break; // Nombre
	    case 509: return "More than enough to be thrown"; break; // Descripcion Rapida
	    case 609: return "Throw coins to make your bullets much stronger"; break; // Descripcion Detallada
    
	    case 410: return "Hocus Pocus"; break; // Nombre
	    case 510: return "????"; break; // Descripcion Rapida
	    case 610: return "Uses a random item"; break; // Descripcion Detallada
    
	    case 411: return "Geocentric"; break; // Nombre
	   case 511: return "Is this working right? Strength ++"; break; // Descripcion Rapida
	    case 611: return "Greatly increases your strength, bullets appear around you and head to your position"; break; // Descripcion Detallada
    
	    case 412: return "Emergency Wall"; break; // Nombre
	   case 512: return "You shall not p-p-p..."; break; // Descripcion Rapida
	   case 612: return "Four pots appear around you"; break; // Descripcion Detallada
    
	   case 413: return "Dungeon charger"; break; // Nombre
	   case 513: return "HYA!HYAAA!"; break; // Descripcion Rapida
	   case 613: return "Breaking pots charges items "; break; // Descripcion Detallada
   
	   case 414: return "Static Orb"; break; // Nombre
	   case 514: return "This thing is weird"; break; // Descripcion Rapida
	   case 614: return "Bullets travel in circles, you can control them with the right stick"; break; // Descripcion Detallada
   
	   case 415: return "Ricochet"; break; // Nombre
	   case 515: return "It is like a pinball"; break; // Descripcion Rapida
	   case 615: return "Bullets travel to the nearest enemies after hitting them"; break; // Descripcion Detallada
   
	   case 416: return "Boomerang"; break; // Nombre
	   case 516: return "Is this safe?"; break; // Descripcion Rapida
	   case 616: return "Bullets return to you"; break; // Descripcion Detallada
   
	   case 417: return "Bullet Explosion"; break; // Nombre
	   case 517: return "KABOOM!"; break; // Descripcion Rapida
	   case 617: return "Enemies die with an explosion of bullets"; break; // Descripcion Detallada
   
	   case 418: return "Totemic vortex"; break; // Nombre
	   case 518: return "Say hi to my little friend"; break; // Descripcion Rapida
	   case 618: return "A totem that shoots is deployed"; break; // Descripcion Detallada
   
	   case 419: return "Ghost Bullets"; break; // Nombre
	   case 519: return "BOO-urns"; break; // Descripcion Rapida
	   case 619: return "Bullest go through but not through enemies"; break; // Descripcion Detallada
   
	   case 420: return "Gravity Bullets"; break; // Nombre
	   case 520: return "Just like flies..."; break; // Descripcion Rapida
	   case 620: return "Bullets stick to enemies and fly around them, hurting the others"; break; // Descripcion Detallada
   
	   case 421: return "Gravity Bullets v2.1.85"; break; // Nombre
	   case 521: return "Flies for everyone!"; break; // Descripcion Rapida
	   case 621: return "Summons bullets that stick to every enemy in the room"; break; // Descripcion Detallada
   
	   case 422: return "Laser Beam"; break; // Nombre
	   case 522: return "Bring me a cat!"; break; // Descripcion Rapida
	   case 622: return "You shot a laser beam"; break; // Descripcion Detallada
   
	   case 423: return "Amplifire"; break; // Nombre
	   case 523: return "Bright, brighter, brightest, off..."; break; // Descripcion Rapida
	   case 623: return "Lights up the room"; break; // Descripcion Detallada
   
	   case 424: return "Shoot Da Whoop"; break; // Nombre
	   case 524: return "AIMAFAIRINMALEISAAA!"; break; // Descripcion Rapida
	   case 624: return "You shot a laser beam that goes crazy"; break; // Descripcion Detallada
   
	   case 425: return "Dwarven Army"; break; // Nombre
	   case 525: return "*Screaming*"; break; // Descripcion Rapida
	   case 625: return "You release a horde of dwarves that scream and hurt the enemies"; break; // Descripcion Detallada
   
	   case 426: return "Red Cthulhu Eye"; break; // Nombre
	   case 526: return "I need eye drops!"; break; // Descripcion Rapida
	   case 626: return "An eye follows you hitting enemies"; break; // Descripcion Detallada
   
	   case 427: return "Blue Cthulhu Eye"; break; // Nombre
	   case 527: return "X-ray vision!"; break; // Descripcion Rapida
	   case 627: return "An eye follows you shooting laser beams"; break; // Descripcion Detallada
   
	   case 428: return "Green Cthulhu Eye"; break; // Nombre
	   case 528: return "These are not lenses"; break; // Descripcion Rapida
	   case 628: return "An eye follows you shooting short range waves"; break; // Descripcion Detallada
   
	   case 429: return "Yellow Cthulhu Eye"; break; // Nombre
	   case 529: return "My eyes are so beautiful... "; break; // Descripcion Rapida
	   case 629: return "A slow but stronger eye follows you"; break; // Descripcion Detallada
    
	   case 430: return "Panic button"; break; // Nombre
	   case 530: return "Do something, quick!"; break; // Descripcion Rapida
	   case 630: return "Whenever you are hit and the item charge bar is half filled, or more, you use it"; break; // Descripcion Detallada
    
	   case 431: return "Immortallity device"; break; // Nombre
	   case 531: return "You cannot beat me"; break; // Descripcion Rapida
	   case 631: return "You cannot die in the next 5 seconds"; break; // Descripcion Detallada
   
	   case 432: return "Black lenses"; break; // Nombre
	   case 532: return "Bring me the darkness!"; break; // Descripcion Rapida
	   case 632: return "Everything gets darker but you deal more damage"; break; // Descripcion Detallada
    
	   case 433: return "Get down!"; break; // Nombre
	   case 533: return "Off button pressed"; break; // Descripcion Rapida
	   case 633: return "The switches and the spikes are always down"; break; // Descripcion Detallada
    
	   case 434: return "Golden gauntlets"; break; // Nombre
	   case 534: return "Armor is for the weak"; break; // Descripcion Rapida
	   case 634: return "Now the treasure chest and shops contains damage items only"; break; // Descripcion Detallada
    
	   case 435: return "Chaos zone"; break; // Nombre
	   case 535: return "You are in my neighborhood"; break; // Descripcion Rapida
	   case 635: return "A circle is created in the ground, while you are in it, you deal more damage"; break; // Descripcion Detallada
    
	   case 436: return "Odd mushroom"; break; // Nombre
	   case 536: return "Should I eat it?"; break; // Descripcion Rapida
	   case 636: return "You are immortal for a certain time, you deal damage to the enemies you touch and some cool music is played!"; break; // Descripcion Detallada
    
	   case 437: return "Rainbow shots"; break; // Nombre
	   case 537: return "Strength+, Cuteness++++"; break; // Descripcion Rapida
	   case 637: return "Bullets are now colorful and deal more damage"; break; // Descripcion Detallada
    
	  case 438: return "Mono Cell"; break; // Nombre
	  case 538: return "I am a great magician"; break; // Descripcion Rapida
	  case 638: return "Every enemy is tranformed into a pot, except for the bosses"; break; // Descripcion Detallada
    
	  case 439: return "Drunken fury"; break; // Nombre
	  case 539: return "Stop moving!"; break; // Descripcion Rapida
	  case 639: return "Reversed controls and higher damage"; break; // Descripcion Detallada
    
	  case 440: return "Barrier destroyer"; break; // Nombre
	  case 540: return "Nothing can stop me"; break; // Descripcion Rapida
	  case 640: return "Every block in the room disappears"; break; // Descripcion Detallada
  
	     case 441: return "Bombs"; break; // Nombre
	    case 541: return "Finally!"; break; // Descripcion Rapida
	    case 641: return "Drops a bomb in player's position"; break; // Descripcion Detallada
    
	    case 442: return "Bomb Rain"; break; // Nombre
	    case 542: return "Get cover!"; break; // Descripcion Rapida
	    case 642: return "Summon bombs in the room"; break; // Descripcion Detallada
    
	    case 443: return "Bomb Thrower"; break; // Nombre
	    case 543: return "Bombs for everyone"; break; // Descripcion Rapida
	    case 643: return "Throw bombs in 4 directions"; break; // Descripcion Detallada
    
	    case 444: return "Bomb Thrower"; break; // Nombre
	    case 544: return "It's dangerous"; break; // Descripcion Rapida
	    case 644: return "Shoot bombs instead of bullets"; break; // Descripcion Detallada
    
	    case 445: return "Fakir"; break; // Nombre
	    case 545: return "Throat Ache"; break; // Descripcion Rapida
	    case 645: return "Shoot swords instead of bullets. Damage+1"; break; // Descripcion Detallada
    
	    case 446: return "Call Of Cthulhu"; break; // Nombre
	    case 546: return "They're coming"; break; // Descripcion Rapida
	    case 646: return "Summons 4 cthulhus when hit"; break; // Descripcion Detallada
    
	    case 447: return "Armor Up!"; break; // Nombre
	    case 547: return "Tank Mode ON"; break; // Descripcion Rapida
	    case 647: return "HP+4. Damage-2. Speed-2."; break; // Descripcion Detallada
    
	    case 448: return "Mind=Blown"; break; // Nombre
	    case 548: return "Health's power"; break; // Descripcion Rapida
	    case 648: return "Increase damage depending on remaining health."; break; // Descripcion Detallada
    
	    case 449: return "Curiosity Cat"; break; // Nombre
	    case 549: return "Killed him"; break; // Descripcion Rapida
	    case 649: return "It's a mistery"; break; // Descripcion Detallada
    
	    case 450: return "Mark Target"; break; // Nombre
	    case 550: return "Go get him!"; break; // Descripcion Rapida
	    case 650: return "Marks an enemy to make it more vulnerable"; break; // Descripcion Detallada
    
	    case 451: return "Pull bullets"; break; // Nombre
	    case 551: return "Crowd Control"; break; // Descripcion Rapida
	    case 651: return "Enemies are pulled towards bullet's collision point"; break; // Descripcion Detallada
    
	    case 452: return "Mob Doctor"; break; // Nombre
	    case 552: return "It hurts"; break; // Descripcion Rapida
	    case 652: return "Enemies have a higher chance to drop health"; break; // Descripcion Detallada
 
	    case 453: return "Mob Thief"; break; // Nombre
	    case 553: return "Time to be sly"; break; // Descripcion Rapida
	    case 653: return "Enemies have a higher chance of dropping gold."; break; // Descripcion Detallada
    
	    case 454: return "Chaaaaarge!!"; break; // Nombre
	    case 554: return "Leeeeroy!"; break; // Descripcion Rapida
	    case 654: return "Damage+2. Summons 4 bats surrounding the player."; break; // Descripcion Detallada
    
	    case 455: return "Firewalker"; break; // Nombre
	    case 555: return "Without ice boots"; break; // Descripcion Rapida
	    case 655: return "Leaves a trail of fire after being hit."; break; // Descripcion Detallada
    
	    case 456: return "Ring Armor"; break; // Nombre
	    case 556: return "Flying golden rings"; break; // Descripcion Rapida
	    case 656: return "If the player has coins, avoids damage and lose them all."; break; // Descripcion Detallada
    
	    case 457: return "Semi Flash"; break; // Nombre
	    case 557: return "They are not convinced"; break; // Descripcion Rapida
	    case 657: return "Bullets stop and continue intermittently."; break; // Descripcion Detallada
    
	    case 458: return "Pickpocket"; break; // Nombre
	    case 558: return "Like a pro"; break; // Descripcion Rapida
	    case 658: return "All enemies drop a coin."; break; // Descripcion Detallada
    
	    case 459: return "Bomberbullets"; break; // Nombre
	    case 559: return "Carefully"; break; // Descripcion Rapida
	    case 659: return "Bullets have a chance to drop a bomb on hit."; break; // Descripcion Detallada
    
	    case 460: return "The Hard Way"; break; // Nombre
	    case 560: return "Sometimes the fastest"; break; // Descripcion Rapida
	    case 660: return "Damage+2. Enemies dont drop loot."; break; // Descripcion Detallada
    
	    case 461: return "Gotta Go Fast"; break; // Nombre
	    case 561: return "Gotta go faster"; break; // Descripcion Rapida
	    case 661: return "Items recharge twice as fast."; break; // Descripcion Detallada
    
	    case 462: return "Shut Up"; break; // Nombre
	    case 562: return "SHUT UP!"; break; // Descripcion Rapida
	    case 662: return "Skullflames no longer shoot."; break; // Descripcion Detallada
    
	    case 463: return "Portable Shop"; break; // Nombre
	    case 563: return "Online Store"; break; // Descripcion Rapida
	    case 663: return "Buy an item if you have 10 coins."; break; // Descripcion Detallada
    
	    case 464: return "Portable Health Shop"; break; // Nombre
	    case 564: return "Online Health Store"; break; // Descripcion Rapida
	    case 664: return "Exchange one of your hearts for an item."; break; // Descripcion Detallada
    
	    case 465: return "Hard Earned Money"; break; // Nombre
	    case 565: return "With hard work"; break; // Descripcion Rapida
	    case 665: return "Transforms 1 heart into 3 gold coins. Heart doesn't disappear."; break; // Descripcion Detallada
        
	    case 466: return "Portable Sacriffice"; break; // Nombre
	    case 566: return "Kill yourself anyhwere"; break; // Descripcion Rapida
	    case 666: return "Get HP+1 when used 4 times."; break; // Descripcion Detallada
    
	    case 467: return "Burning Place"; break; // Nombre
	    case 567: return "Love is"; break; // Descripcion Rapida
	    case 667: return "Fire hurt enemies."; break; // Descripcion Detallada
    
	    case 468: return "Expensive Shield"; break; // Nombre
	    case 568: return "Better to wait for sales"; break; // Descripcion Rapida
	    case 668: return "Use 5 coins to gain a shield."; break; // Descripcion Detallada
    
	    case 469: return "Triptocaine"; break; // Nombre
	    case 569: return "For when the rain is heavy"; break; // Descripcion Rapida
	    case 669: return "Chance to activate mushroom power when hit."; break; // Descripcion Detallada
    
	    case 470: return "We are not the champions"; break; // Nombre
	    case 570: return "My friend"; break; // Descripcion Rapida
	    case 670: return "Champions don't appear."; break; // Descripcion Detallada
    
	    case 471: return "Change Me Up"; break; // Nombre
	    case 571: return "Before you go go"; break; // Descripcion Rapida
	    case 671: return "Change all your items for random ones."; break; // Descripcion Detallada
    
	    case 472: return "Highlight"; break; // Nombre
	    case 572: return "By consumerism"; break; // Descripcion Rapida
	    case 672: return "Chance to mark an enemy that will drop extra loot."; break; // Descripcion Detallada
    
	    case 473: return "Get Off Me"; break; // Nombre
	    case 573: return "Further"; break; // Descripcion Rapida
	    case 673: return "Throws off enemies when hit"; break; // Descripcion Detallada
    
	    case 474: return "Spiky Spikes"; break; // Nombre
	    case 574: return "Make them bleed"; break; // Descripcion Rapida
	    case 674: return "Spikes hurt enemies."; break; // Descripcion Detallada
    
	    case 475: return "Hero Dagger"; break; // Nombre
	    case 575: return "It used to be a sword"; break; // Descripcion Rapida
	    case 675: return "Shoot a magic beam if you hp is full."; break; // Descripcion Detallada
    
	    case 476: return "Ice Block"; break; // Nombre
	    case 576: return "It doesn't save you from fatigue"; break; // Descripcion Rapida
	    case 676: return "Freeze all enemies."; break; // Descripcion Detallada
    
	    case 477: return "Power Vial I"; break; // Nombre
	    case 577: return "Damage+1"; break; // Descripcion Rapida
	    case 677: return "Damage+1"; break; // Descripcion Detallada
    
	    case 478: return "Power Vial II"; break; // Nombre
	    case 578: return "Damage+1"; break; // Descripcion Rapida
	    case 678: return "Damage+1"; break; // Descripcion Detallada
    
	    case 479: return "Power Vial III"; break; // Nombre
	    case 579: return "Damage+1"; break; // Descripcion Rapida
	    case 679: return "Damage+1"; break; // Descripcion Detallada
    
	    case 480: return "Power Vial IV"; break; // Nombre
	    case 580: return "Damage+1"; break; // Descripcion Rapida
	    case 680: return "Damage+1"; break; // Descripcion Detallada
    
	    case 481: return "Power Vial V"; break; // Nombre
	    case 581: return "Damage+1"; break; // Descripcion Rapida
	    case 681: return "Damage+1"; break; // Descripcion Detallada
    
	    case 482: return "Power Vial VI"; break; // Nombre
	    case 582: return "Damage+1"; break; // Descripcion Rapida
	    case 682: return "Damage+1"; break; // Descripcion Detallada
    
	    case 483: return "Hover Boots"; break; // Nombre
	    case 583: return "From the shadow temple"; break; // Descripcion Rapida
	    case 683: return "Allows you to walk through voids."; break; // Descripcion Detallada
    
	    case 484: return "Golden Cthulhu"; break; // Nombre
	    case 584: return "Shiny"; break; // Descripcion Rapida
	    case 684: return "Cthullhu that drops coins every 10 seconds."; break; // Descripcion Detallada
    
	    case 485: return "Arachnophobia"; break; // Nombre
	    case 585: return "They are not real"; break; // Descripcion Rapida
	    case 685: return "Spiders will not spawn from pots."; break; // Descripcion Detallada
    
	    case 486: return "Bomb Mask"; break; // Nombre
	    case 586: return "Selfdestruct activated"; break; // Descripcion Rapida
	    case 686: return "The player explodes."; break; // Descripcion Detallada
    
	    case 487: return "Welcome"; break; // Nombre
	    case 587: return "To my house"; break; // Descripcion Rapida
	    case 687: return "A mimic appears in the entrance."; break; // Descripcion Detallada
    
	    case 488: return "The Wizard"; break; // Nombre
	    case 588: return "Now you see me"; break; // Descripcion Rapida
	    case 688: return "Teleports the player to a random location in the dungeon."; break; // Descripcion Detallada
    
	    case 489: return "100 Punch Man"; break; // Nombre
	    case 589: return "In one second"; break; // Descripcion Rapida
	    case 689: return "Shoot a lot of bullets in a direction."; break; // Descripcion Detallada
    
	    case 490: return "Shooting Vial I"; break; // Nombre
	    case 590: return "Shooting Speed +1"; break; // Descripcion Rapida
	    case 690: return "Shooting Speed +1."; break; // Descripcion Detallada
    
	    case 491: return "Shooting Vial II"; break; // Nombre
	    case 591: return "Shooting Speed +1"; break; // Descripcion Rapida
	    case 691: return "Shooting Speed +1."; break; // Descripcion Detallada
    
	    case 492: return "Shooting Vial III"; break; // Nombre
	    case 592: return "Shooting Speed +1"; break; // Descripcion Rapida
	    case 692: return "Shooting Speed +1."; break; // Descripcion Detallada
    
	    case 493: return "Boats and coins"; break; // Nombre
	    case 593: return "And a monocle"; break; // Descripcion Rapida
	    case 693: return "Shoot coins in 8 directions. You have to have that amount of coins."; break; // Descripcion Detallada
    
	    case 494: return "Luck Necklace"; break; // Nombre
	    case 594: return "Get lucky"; break; // Descripcion Rapida
	    case 694: return "Increases the chance of mimics giving items."; break; // Descripcion Detallada
    
	    case 495: return "Tension Relax"; break; // Nombre
	    case 595: return "*Sits*"; break; // Descripcion Rapida
	    case 695: return "HP+1 after 10 seconds without moving."; break; // Descripcion Detallada
    
	    case 496: return "Bomb Pots"; break; // Nombre
	    case 596: return "Classic pot content"; break; // Descripcion Rapida
	    case 696: return "Pots may contain bombs."; break; // Descripcion Detallada
    
	    case 497: return "Speed Vial I"; break; // Nombre
	    case 597: return "Speed+1"; break; // Descripcion Rapida
	    case 697: return "Speed+1"; break; // Descripcion Detallada
    
	    case 498: return "Speed Vial II"; break; // Nombre
	    case 598: return "Speed+1"; break; // Descripcion Rapida
	    case 698: return "Speed+1"; break; // Descripcion Detallada
    
	    case 499: return "Speed Vial III"; break; // Nombre
	    case 599: return "Speed+1"; break; // Descripcion Rapida
	    case 699: return "Speed+1"; break; // Descripcion Detallada
    
	    case 700: return "Expensive Health"; break; // Nombre
	    case 800: return "I am broke"; break; // Descripcion Rapida
	    case 900: return "Spend 5 coins to recover 1 HP."; break; // Descripcion Detallada
    
	    case 701: return "Two Face Dice"; break; // Nombre
	    case 801: return "It is physically impossible"; break; // Descripcion Rapida
	    case 901: return "Spawns a coin or a heart."; break; // Descripcion Detallada
    
	    case 702: return "The Engineer"; break; // Nombre
	    case 802: return "Endless supply of resources and ideas"; break; // Descripcion Rapida
	    case 902: return "Your bullets can open doors"; break; // Descripcion Detallada

	    case 703: return "Cloth Jacket"; break; // Nombre
	    case 803: return "HP+"; break; // Descripcion Rapida
	    case 903: return "Increases life by 1"; break; // Descripcion Detallada
    
	    case 704: return "Leather Jacket"; break; // Nombre
	    case 804: return "HP+"; break; // Descripcion Rapida
	    case 904: return "Increases life by 1"; break; // Descripcion Detallada
    
	    case 705: return "Chain Plate"; break; // Nombre
	    case 805: return "HP+"; break; // Descripcion Rapida
	    case 905: return "Increases life by 1"; break; // Descripcion Detallada
    
	    case 706: return "Silver Plate"; break; // Nombre
	    case 806: return "HP+"; break; // Descripcion Rapida
	    case 906: return "Increases life by 1"; break; // Descripcion Detallada
    
	    case 707: return "Gold Plate"; break; // Nombre
	    case 807: return "HP++"; break; // Descripcion Rapida
	    case 907: return "Increases life by 2"; break; // Descripcion Detallada
    
	    case 708: return "Blade"; break; // Nombre
	    case 808: return "Damage+"; break; // Descripcion Rapida
	    case 908: return "Increases damage by 1"; break; // Descripcion Detallada
    
	    case 709: return "Flamesword"; break; // Nombre
	    case 809: return "Damage+ FireRate+"; break; // Descripcion Rapida
	    case 909: return "Increases damage and firerate by 1"; break; // Descripcion Detallada
    
	    case 710: return "Icesword"; break; // Nombre
	    case 810: return "Damage+ FireRate+"; break; // Descripcion Rapida
	    case 910: return "Increases damage and firerate by 1"; break; // Descripcion Detallada
    
	    case 711: return "Windsword"; break; // Nombre
	    case 811: return "FireRate++"; break; // Descripcion Rapida
	    case 911: return "Increases firerate a lot"; break; // Descripcion Detallada
    
	    case 712: return "Terrasword"; break; // Nombre
	    case 812: return "Damage+++ FireRate--"; break; // Descripcion Rapida
	    case 912: return "Increases damage by 3 and reduces firerate"; break; // Descripcion Detallada
    
	    case 713: return "Nova"; break; // Nombre
	    case 813: return "Damage++"; break; // Descripcion Rapida
	    case 913: return "Increases damage by 2"; break; // Descripcion Detallada
        
	    case 714: return "Silver Bow"; break; // Nombre
	    case 814: return "Range++"; break; // Descripcion Rapida
	    case 914: return "Increases range a lot"; break; // Descripcion Detallada
    
	    case 715: return "Obsidian Bow"; break; // Nombre
	    case 815: return "Range++"; break; // Descripcion Rapida
	    case 915: return "Increases range a lot"; break; // Descripcion Detallada
    
	    case 716: return "Golden Bow"; break; // Nombre
	    case 816: return "Range++"; break; // Descripcion Rapida
	    case 916: return "Increases range a lot"; break; // Descripcion Detallada
    
	    case 717: return "Hell Bow"; break; // Nombre
	    case 817: return "Range++++"; break; // Descripcion Rapida
	    case 917: return "Maximum range"; break; // Descripcion Detallada
    
	    case 718: return "Exp Stealer"; break; // Nombre
	    case 719: return "Green Magnet"; break; // Nombre
	    case 720: return "P2W"; break; // Nombre
	    case 721: return "Turbo Mode"; break; // Nombre
	    case 722: return "Key Generator"; break; // Nombre
	    case 723: return "Bomb Generator"; break; // Nombre
	    case 724: return "Watchman"; break; // Nombre
	    case 725: return "Bomb Saver"; break; // Nombre
	    case 726: return "Hands Down!"; break; // Nombre
	    case 727: return "Another Kind Of Rainbow"; break; // Nombre
	    case 728: return "The Gang"; break; // Nombre
	    case 729: return "Deathmatch"; break; // Nombre
	    case 730: return "Word: Strength"; break; // Nombre
	    case 731: return "Word: Bullets"; break; // Nombre
	    case 732: return "Word: Health"; break; // Nombre
	    case 733: return "Word: Wealth"; break; // Nombre
	    case 734: return "Word: Death"; break; // Nombre
	    case 735: return "Word: Focus"; break; // Nombre
	    case 736: return "Red Gem"; break; // Nombre
	    case 737: return "Blue Gem"; break; // Nombre
	    case 738: return "Yellow Gem"; break; // Nombre
	    case 739: return "Purple Gem"; break; // Nombre
	    case 740: return "Deodorant"; break; // Nombre
	    case 741: return "Hyper Bullets"; break; // Nombre
	    case 742: return "USB-C"; break; // Nombre
	    case 743: return "RHCP"; break; // Nombre
	    case 744: return "Rocket Spawner MK.I"; break; // Nombre
	    case 745: return "Rocket Spawner MK.II"; break; // Nombre
	    case 746: return "Rocket Spawner MK.III"; break; // Nombre
	    case 747: return "Lucky Rockets"; break; // Nombre
	    case 748: return "Rockets Inside"; break; // Nombre
	    case 749: return "RHCR"; break; // Nombre
	    case 750: return "Expensive Rocket"; break; // Nombre
	    case 751: return "Bloody Rockets"; break; // Nombre
	    case 752: return "Big Bad Rockets"; break; // Nombre
	    case 753: return "Size Potion"; break; // Nombre
	    case 754: return "Fairy Wings"; break; // Nombre
	    case 755: return "Fake Angel Wings"; break; // Nombre
	    case 756: return "Devil Wings"; break; // Nombre
	    case 757: return "Amethyst Staff"; break; // Nombre
	    case 758: return "Topaz Staff"; break; // Nombre
	    case 759: return "Ruby Staff"; break; // Nombre
	    case 760: return "Flash"; break; // Nombre
	    case 761: return "Big Bombs"; break; // Nombre
	    case 762: return "Experience Bombs"; break; // Nombre
	    case 763: return "Sharpen"; break; // Nombre
	    case 764: return "Digital Sales"; break; // Nombre
	    case 765: return "Damage Rune"; break; // Nombre
	    case 766: return "Health Rune"; break; // Nombre
	    case 767: return "Cadence Rune"; break; // Nombre
	    case 768: return "Usable Rune"; break; // Nombre
	    case 769: return "Speedrun Desiree"; break; // Nombre
	    case 770: return "Cinnamon"; break; // Nombre
	    case 771: return "Rocket Bombs"; break; // Nombre
	    case 772: return "Rockets in Pots"; break; // Nombre
	    case 773: return "Damage Quest"; break; // Nombre
	    case 774: return "Health Quest"; break; // Nombre
	    case 775: return "Leveling Quest"; break; // Nombre
	    case 776: return "Incessant Fire"; break; // Nombre
	    case 777: return "One Frame Bomb"; break; // Nombre
	    case 778: return "The Last Item"; break; // Nombre
	    case 779: return "Life Infuser"; break; // Nombre
	    case 780: return "Little Me"; break; // Nombre
	    case 781: return "Little Ghost"; break; // Nombre
	    case 782: return "Little Piercer"; break; // Nombre
	    case 783: return "Little Lazer"; break; // Nombre
	    case 784: return "Little Ninja"; break; // Nombre
	    case 785: return "Heavy Helmet"; break; // Nombre
	    case 786: return "Overvalued Health"; break; // Nombre
	    case 787: return "Blind Man's Buff"; break; // Nombre
	    case 788: return "Slow but safe"; break; // Nombre
	    case 789: return "Leather Boots"; break; // Nombre
	    case 790: return "Silver Boots"; break; // Nombre
	    case 791: return "Golden Boots"; break; // Nombre
	    case 792: return "Fast Killer"; break; // Nombre
	    case 793: return "Pay To Kill"; break; // Nombre
	    case 794: return "Pots Explosion"; break; // Nombre
	    case 795: return "LEVEL UP!"; break; // Nombre
	    case 796: return "Little Rocketman"; break; // Nombre
	    case 797: return "Toxic Bullets"; break; // Nombre
	    case 798: return "Asymmetric Arms"; break; // Nombre
	    case 799: return "Baseball Bat"; break; // Nombre
    
	    case 1600: return "The Finger"; break; // Nombre
	    case 1601: return "The Scythe"; break; // Nombre
	    case 1602: return "Fire Trail"; break; // Nombre
	    case 1603: return "Autoaim"; break; // Nombre
	    case 1604: return "Cthulhu Aura"; break; // Nombre
        
	    case 818: return "This was mine."; break; // Descripcion Rapida
	    case 819: return "And these too."; break; // Descripcion Rapida
	    case 820: return "No more waiting."; break; // Descripcion Rapida
	    case 821: return "Turbo mode."; break; // Descripcion Rapida
	    case 822: return "It's magical."; break; // Descripcion Rapida
	    case 823: return "It's magical."; break; // Descripcion Rapida
	    case 824: return "Twice the key, twice the fun."; break; // Descripcion Rapida
	    case 825: return "Twice the bomb, twice the fun."; break; // Descripcion Rapida
	    case 826: return "I have no time to waste."; break; // Descripcion Rapida
	    case 827: return "Wonderful."; break; // Descripcion Rapida
	    case 828: return "Help!"; break; // Descripcion Rapida
	    case 829: return "Why would you do that?!"; break; // Descripcion Rapida
	    case 830: return "DAMAGE"; break; // Descripcion Rapida
	    case 831: return "BULLETS"; break; // Descripcion Rapida
	    case 832: return "HEALTH"; break; // Descripcion Rapida
	    case 833: return "WEALTH"; break; // Descripcion Rapida
	    case 834: return "DEATH"; break; // Descripcion Rapida
	    case 835: return "FOCUS"; break; // Descripcion Rapida
	    case 836: return "+8 gold"; break; // Descripcion Rapida
	    case 837: return "+12 gold"; break; // Descripcion Rapida
	    case 838: return "+20 gold"; break; // Descripcion Rapida
	    case 839: return "+50 gold"; break; // Descripcion Rapida
	    case 840: return "Death aura"; break; // Descripcion Rapida
	    case 841: return "No pain no gain"; break; // Descripcion Rapida
	    case 842: return "Gotta go fast"; break; // Descripcion Rapida
	    case 843: return "*sings*"; break; // Descripcion Rapida
	    case 844: return "Designed for robots"; break; // Descripcion Rapida
	    case 845: return "Designed for robots"; break; // Descripcion Rapida
	    case 846: return "Designed for robots"; break; // Descripcion Rapida
	    case 847: return "Finger crossed"; break; // Descripcion Rapida
	    case 848: return "Riposte done good"; break; // Descripcion Rapida
	    case 849: return "Red Hot Chili Rockets"; break; // Descripcion Rapida
	    case 850: return "Pay to destroy"; break; // Descripcion Rapida
	    case 851: return "Ouch!"; break; // Descripcion Rapida
	    case 852: return "Rocket Mind"; break; // Descripcion Rapida
	    case 853: return "Directly from neverlands"; break; // Descripcion Rapida
	    case 854: return "How cute!"; break; // Descripcion Rapida
	    case 855: return "How cute!"; break; // Descripcion Rapida
	    case 856: return "How cute!"; break; // Descripcion Rapida
	    case 857: return "Pierce+"; break; // Descripcion Rapida
	    case 858: return "Pierce+"; break; // Descripcion Rapida
	    case 859: return "Pierce++"; break; // Descripcion Rapida
	    case 860: return "Bazzinga!"; break; // Descripcion Rapida
	    case 861: return "Bomb Mind"; break; // Descripcion Rapida
	    case 862: return "Level up!"; break; // Descripcion Rapida
	    case 863: return "Level down!"; break; // Descripcion Rapida
	    case 864: return "Don't run out of stock."; break; // Descripcion Rapida
	    case 865: return "Runestone"; break; // Descripcion Rapida
	    case 866: return "Runestone"; break; // Descripcion Rapida
	    case 867: return "Runestone"; break; // Descripcion Rapida
	    case 868: return "Runestone"; break; // Descripcion Rapida
	    case 869: return "For you, ranking destroyers"; break; // Descripcion Rapida
	    case 870: return "Cinnamon or poison?"; break; // Descripcion Rapida
	    case 871: return "Pyrotechnics"; break; // Descripcion Rapida
	    case 872: return "These pots have nice things"; break; // Descripcion Rapida
	    case 873: return "Mission complete"; break; // Descripcion Rapida
	    case 874: return "Mission complete"; break; // Descripcion Rapida
	    case 875: return "Mission complete"; break; // Descripcion Rapida
	    case 876: return "or eternal fire?"; break; // Descripcion Rapida
	    case 877: return "No time to explain"; break; // Descripcion Rapida
	    case 878: return "Of this run"; break; // Descripcion Rapida
	    case 879: return "Save me!"; break; // Descripcion Rapida
	    case 880: return "The crew is growing"; break; // Descripcion Rapida
	    case 881: return "The crew is growing"; break; // Descripcion Rapida
	    case 882: return "The crew is growing"; break; // Descripcion Rapida
	    case 883: return "The crew is growing"; break; // Descripcion Rapida
	    case 884: return "The crew is growing"; break; // Descripcion Rapida
	    case 885: return "Bombproof"; break; // Descripcion Rapida
	    case 886: return "Life is gold"; break; // Descripcion Rapida
	    case 887: return "Stand still"; break; // Descripcion Rapida
	    case 888: return "*goes for a walk*"; break; // Descripcion Rapida
	    case 889: return "Speed+"; break; // Descripcion Rapida
	    case 890: return "Speed+"; break; // Descripcion Rapida
	    case 891: return "Speed++"; break; // Descripcion Rapida
	    case 892: return "Kill of be killed"; break; // Descripcion Rapida
	    case 893: return "Only 0.99$ per hit!"; break; // Descripcion Rapida
	    case 894: return "Take cover!"; break; // Descripcion Rapida
	    case 895: return "Du du du dudu durudu"; break; // Descripcion Rapida
	    case 896: return "The crew is growing"; break; // Descripcion Rapida
	    case 897: return "Now I don't need to aim"; break; // Descripcion Rapida
	    case 898: return "Look at my dab!"; break; // Descripcion Rapida
	    case 899: return "Strike one!"; break; // Descripcion Rapida
    
	    case 1700: return "Godly Weapon."; break; // Descripcion Rapida
	    case 1701: return "Godly Weapon."; break; // Descripcion Rapida
	    case 1702: return "Godly Weapon."; break; // Descripcion Rapida
	    case 1703: return "Godly Weapon."; break; // Descripcion Rapida
	    case 1704: return "Godly Weapon."; break; // Descripcion Rapida
    
	    case 918: return "Steal 1 xp point when shooting an enemy."; break; // Descripcion Detallada
	    case 919: return "Steal 5 xp points to each enemy in the room."; break; // Descripcion Detallada
	    case 920: return "Charge up your usable item when picking a coin from the floor."; break; // Descripcion Detallada
	    case 921: return "Experience points are multiplied by 2."; break; // Descripcion Detallada
	    case 922: return "Spawns a key on the floor."; break; // Descripcion Detallada
	    case 923: return "Spawns a bomb on the floor."; break; // Descripcion Detallada
	    case 924: return "Keys are worth double."; break; // Descripcion Detallada
	    case 925: return "Bombs are worth double."; break; // Descripcion Detallada
	    case 926: return "Destroy color blocks by shooting them."; break; // Descripcion Detallada
	    case 927: return "Bullets have random effects."; break; // Descripcion Detallada
	    case 928: return "Summon two clones that attack with you."; break; // Descripcion Detallada
	    case 929: return "Transform all normal enemies into random bosses."; break; // Descripcion Detallada
	    case 930: return "Transform all of your items into damage+1"; break; // Descripcion Detallada
	    case 931: return "Transform all of your items into shoot rate+1"; break; // Descripcion Detallada
	    case 932: return "Transform all of your items into hp+1"; break; // Descripcion Detallada
	    case 933: return "Transform each of your items into 5 coins."; break; // Descripcion Detallada
	    case 934: return "Kill every enemy in the room."; break; // Descripcion Detallada
	    case 935: return "Lose all your hp but 1 heart and get +30 damage."; break; // Descripcion Detallada
	    case 936: return "Gives you 8 gold coins"; break; // Descripcion Detallada
	    case 937: return "Gives you 12 gold coins"; break; // Descripcion Detallada
	    case 938: return "Gives you 20 gold coins"; break; // Descripcion Detallada
	    case 939: return "Gives you 50 gold coins"; break; // Descripcion Detallada
	    case 940: return "Creates an area around you that damages enemies"; break; // Descripcion Detallada
	    case 941: return "Reduces range a lot and increases damage a lot."; break; // Descripcion Detallada
	    case 942: return "Items recharge twice as fast."; break; // Descripcion Detallada
	    case 943: return "Enemies leave fire when killed."; break; // Descripcion Detallada
	    case 944: return "Kill all enemies in the room and transform them into rockets."; break; // Descripcion Detallada
	    case 945: return "Spawn 3 rockets."; break; // Descripcion Detallada
	    case 946: return "Spawn a rocket when an enemy is killed."; break; // Descripcion Detallada
	    case 947: return "You have 10% of spawning a rocket when shooting."; break; // Descripcion Detallada
	    case 948: return "Spawn 2 rockets when hit."; break; // Descripcion Detallada
	    case 949: return "Rockets leave fire when they explode."; break; // Descripcion Detallada
	    case 950: return "Spend 4 coins to spawn a rocket."; break; // Descripcion Detallada
	    case 951: return "Hurt yourself and spawn 3 rockets."; break; // Descripcion Detallada
	    case 952: return "Rockets deal twice the damage."; break; // Descripcion Detallada
	    case 953: return "Extra life and minor stats improvement."; break; // Descripcion Detallada
	    case 954: return "Extra life and wings."; break; // Descripcion Detallada
	    case 955: return "Extra life and wings."; break; // Descripcion Detallada
	    case 956: return "Extra life and wings."; break; // Descripcion Detallada
	    case 957: return "Pierce+"; break; // Descripcion Detallada
	    case 958: return "Pierce+"; break; // Descripcion Detallada
	    case 959: return "Pierce++"; break; // Descripcion Detallada
	    case 960: return "Chance to teleport to the enemy you are hitting and destroy it."; break; // Descripcion Detallada
	    case 961: return "Bombs deal double damage."; break; // Descripcion Detallada
	    case 962: return "Bombs creates experience when they explode."; break; // Descripcion Detallada
	    case 963: return "Spend experience points and deal extra damage."; break; // Descripcion Detallada
	    case 964: return "Shop items restock."; break; // Descripcion Detallada
	    case 965: return "Absorb items from chests and get +1 damage."; break; // Descripcion Detallada
	    case 966: return "Absorb items from chests and get +1 hp."; break; // Descripcion Detallada
	    case 967: return "Absorb items from chests and get +1 cadence."; break; // Descripcion Detallada
	    case 968: return "Absorb items from chests and if they are usable, get their effect."; break; // Descripcion Detallada
	    case 969: return "Teleports you to Sigma."; break; // Descripcion Detallada
	    case 970: return "50% chance to give you a heart and 50% chance to remove a heart from you."; break; // Descripcion Detallada
	    case 971: return "Bombs spawn rockets."; break; // Descripcion Detallada
	    case 972: return "Pots have 5% chance to spawn a rocket."; break; // Descripcion Detallada
	    case 973: return "Increases your damage in +30 and then destroys itself."; break; // Descripcion Detallada
	    case 974: return "Increases your health to maximum and then destroys itself."; break; // Descripcion Detallada
	    case 975: return "Gives you +10 levels and then destroys itself."; break; // Descripcion Detallada
	    case 976: return "Fire last longer."; break; // Descripcion Detallada
	    case 977: return "Bombs explode instantly and don't damage you anymore."; break; // Descripcion Detallada
	    case 978: return "Obtain +10 damage, +4 hp and increase cadence. Special rooms become normal."; break; // Descripcion Detallada
	    case 979: return "Spawns a special heart."; break; // Descripcion Detallada
	    case 980: return "Summons a mini you that shoots bullets with you."; break; // Descripcion Detallada
	    case 981: return "Summons a mini you that shoots ghost bullets with you."; break; // Descripcion Detallada
	    case 982: return "Summons a mini you that shoots pierce bullets with you."; break; // Descripcion Detallada
	    case 983: return "Summons a mini you that shoots lazer bullets with you."; break; // Descripcion Detallada
	    case 984: return "Summons a mini you that shoots shurikens with you."; break; // Descripcion Detallada
	    case 985: return "Bombs no longer damage you."; break; // Descripcion Detallada
	    case 986: return "Spawns as many coins as health you have."; break; // Descripcion Detallada
	    case 987: return "Deal more damage if you are not moving."; break; // Descripcion Detallada
	    case 988: return "Gain +1 damage each run minute."; break; // Descripcion Detallada
	    case 989: return "Speed+"; break; // Descripcion Detallada
	    case 990: return "Speed+"; break; // Descripcion Detallada
	    case 991: return "Speed++"; break; // Descripcion Detallada
	    case 992: return "Teleports all enemies to your spot."; break; // Descripcion Detallada
	    case 993: return "Spend a coin to damage all enemies in the room."; break; // Descripcion Detallada
	    case 994: return "All pots explode."; break; // Descripcion Detallada
	    case 995: return "Activate mushroom power when leveling up."; break; // Descripcion Detallada
	    case 996: return "Summons a mini you that shoots rockets."; break; // Descripcion Detallada
	    case 997: return "Leave a toxic area at impact zone that hurts enemies."; break; // Descripcion Detallada
	    case 998: return "Bullets that go right are bigger and bullets that go left are smaller."; break; // Descripcion Detallada
	    case 999: return "Super knockback."; break; // Descripcion Detallada
    
	    case 1000: return "..."; break; // Nombre
	    case 1100: return "..."; break; // Descripcion Rapida
	    case 1200: return "..."; break; // Descripcion Detallada
	
		case 1001: return "The Goddess"; break; // Nombre
		case 1002: return "Glue"; break; // Nombre
		case 1003: return "Rock Rain"; break; // Nombre
		case 1004: return "Area Bombs"; break; // Nombre
		case 1005: return "Cluster Bombs"; break; // Nombre
		case 1006: return "Remote Control"; break; // Nombre
		case 1007: return "Glitch"; break; // Nombre
		case 1008: return "Sudden Reward"; break; // Nombre
		case 1009: return "Alpha"; break; // Nombre
		case 1010: return "Russian Roulette"; break; // Nombre
		case 1011: return "Sticky Bullets"; break; // Nombre
		case 1012: return "Bullet Bombs"; break; // Nombre
		case 1013: return "Bullet Extruder"; break; // Nombre
		case 1014: return "Small Room"; break; // Nombre
		case 1015: return "Big Room"; break; // Nombre
		case 1016: return "Ram"; break; // Nombre
		case 1017: return "Shop Door"; break; // Nombre
		case 1018: return "Treasure Door"; break; // Nombre
		case 1019: return "Full Charge"; break; // Nombre
		case 1020: return "Out of charge"; break; // Nombre
		case 1021: return "Rage"; break; // Nombre
		case 1022: return "Powered Bullets"; break; // Nombre
		case 1023: return "Aura Bullets"; break; // Nombre
		case 1024: return "Chest Generator"; break; // Nombre
		case 1025: return "Bullet Nova"; break; // Nombre
		case 1026: return "Sack Of Bombs"; break; // Nombre
		case 1027: return "Bomb Keys"; break; // Nombre
		case 1028: return "Coil Lazers"; break; // Nombre
		case 1029: return "Pulse Wave"; break; // Nombre
		case 1030: return "Blue-r Fire"; break; // Nombre
		case 1031: return "Bullet Hell"; break; // Nombre
		case 1032: return "Dragon Head"; break; // Nombre
		case 1033: return "Tiny Bones"; break; // Nombre
		case 1034: return "Electrify"; break; // Nombre
		case 1035: return "Mass Envenom"; break; // Nombre
		case 1036: return "Snowball Effect"; break; // Nombre
		case 1037: return "Coin Explosion"; break; // Nombre
		case 1038: return "Bullet Detonator"; break; // Nombre
		case 1039: return "Toxic Caster"; break; // Nombre
		case 1040: return "Reinforcements"; break; // Nombre
		case 1041: return "Stone Clone"; break; // Nombre
		case 1042: return "Non Secret Rooms"; break; // Nombre
		case 1043: return "Desperado"; break; // Nombre
		case 1044: return "Cthulhu's Tail"; break; // Nombre
		case 1045: return "Winning Rockets"; break; // Nombre
		case 1046: return "Magnetic Bombs"; break; // Nombre
		case 1047: return "Euphoria"; break; // Nombre
		case 1048: return "Spike Trail"; break; // Nombre
		case 1049: return "Flying Skull"; break; // Nombre
		case 1050: return "Big Bad Bombs"; break; // Nombre
	
		case 1101: return "The gift of the goddess."; break; // Descripcion Rapida
		case 1102: return "Nothing glue can't fix."; break; // Descripcion Rapida
		case 1103: return "Rock Shower"; break; // Descripcion Rapida
		case 1104: return "On your stomachs!"; break; // Descripcion Rapida
		case 1105: return "On your stomachs!"; break; // Descripcion Rapida
		case 1106: return "Bluetooth controlled."; break; // Descripcion Rapida
		case 1107: return "Undefined."; break; // Descripcion Rapida
		case 1108: return "Surprise!"; break; // Descripcion Rapida
		case 1109: return "Back to the start."; break; // Descripcion Rapida
		case 1110: return "Damage+999, has a chance to kill you."; break; // Descripcion Rapida
		case 1111: return "Glue them together."; break; // Descripcion Rapida
		case 1112: return "Potential to be overpowered."; break; // Descripcion Rapida
		case 1113: return "Burn that use item button."; break; // Descripcion Rapida
		case 1114: return "Normal rooms."; break; // Descripcion Rapida
		case 1115: return "Big rooms."; break; // Descripcion Rapida
		case 1116: return "Is this useful?"; break; // Descripcion Rapida
		case 1117: return "Key saving."; break; // Descripcion Rapida
		case 1118: return "Key saving."; break; // Descripcion Rapida
		case 1119: return "100%"; break; // Descripcion Rapida
		case 1120: return "Please plug in your charger."; break; // Descripcion Rapida
		case 1121: return "It's like hitting your feet with the table."; break; // Descripcion Rapida
		case 1122: return "Infused with a defensive aura."; break; // Descripcion Rapida
		case 1123: return "Infused with an offesive aura."; break; // Descripcion Rapida
		case 1124: return "Crash generator."; break; // Descripcion Rapida
		case 1125: return "Bring the madness."; break; // Descripcion Rapida
		case 1126: return "Made of lizard skin."; break; // Descripcion Rapida
		case 1127: return "Blast em'"; break; // Descripcion Rapida
		case 1128: return "My new favorite item."; break; // Descripcion Rapida
		case 1129: return "Potential."; break; // Descripcion Rapida
		case 1130: return "Found in a secret cave."; break; // Descripcion Rapida
		case 1131: return "Backwards."; break; // Descripcion Rapida
		case 1132: return "Go crazy."; break; // Descripcion Rapida
		case 1133: return "Hopefully not the femur."; break; // Descripcion Rapida
		case 1134: return "Electric touch."; break; // Descripcion Rapida
		case 1135: return "Intoxication."; break; // Descripcion Rapida
		case 1136: return "Snowball bullets."; break; // Descripcion Rapida
		case 1137: return "The ones I like."; break; // Descripcion Rapida
		case 1138: return "Get cover!"; break; // Descripcion Rapida
		case 1139: return "A small help."; break; // Descripcion Rapida
		case 1140: return "Player mitosis."; break; // Descripcion Rapida
		case 1141: return "Your new bestie."; break; // Descripcion Rapida
		case 1142: return "No more secrets."; break; // Descripcion Rapida
		case 1143: return "Tony get the lazer."; break; // Descripcion Rapida
		case 1144: return "Can you imagine this item in Arcade mode?"; break; // Descripcion Rapida
		case 1145: return "Don't get hit."; break; // Descripcion Rapida
		case 1146: return "They have their own gravity."; break; // Descripcion Rapida
		case 1147: return "STAY STILL!"; break; // Descripcion Rapida
		case 1148: return "Just wow."; break; // Descripcion Rapida
		case 1149: return "Where are they going?"; break; // Descripcion Rapida
		case 1150: return "The bigger, the better."; break; // Descripcion Rapida
	
		case 1201: return "Receive 2 level ups."; break; // Descripcion Detallada   
		case 1202: return "Orbitals stop moving and they do more damage."; break; // Descripcion Detallada   
		case 1203: return "Rocks fall from the ceiling and damage enemies."; break; // Descripcion Detallada   
		case 1204: return "Bombs damage all enemies in the room."; break; // Descripcion Detallada   
		case 1205: return "Bombs summons more bombs."; break; // Descripcion Detallada   
		case 1206: return "Bullets follows player's input."; break; // Descripcion Detallada   
		case 1207: return "Enemies and bullet sprites are mixed. Damage++."; break; // Descripcion Detallada   
		case 1208: return "Enemies have a chance to drop an item."; break; // Descripcion Detallada   
		case 1209: return "Reset the dungeon, keep your items and stats."; break; // Descripcion Detallada   
		case 1210: return "Damage+999, has a chance to kill you."; break; // Descripcion Detallada   
		case 1211: return "Bullets combine and create a bigger bullet."; break; // Descripcion Detallada   
		case 1212: return "Bombs make a bullet explosion."; break; // Descripcion Detallada   
		case 1213: return "Bullets explode in a bullet explosion."; break; // Descripcion Detallada   
		case 1214: return "All rooms are small"; break; // Descripcion Detallada   
		case 1215: return "All rooms are big"; break; // Descripcion Detallada   
		case 1216: return "Boss might appear in normal rooms."; break; // Descripcion Detallada   
		case 1217: return "Shop are always open."; break; // Descripcion Detallada   
		case 1218: return "Treasure rooms are always open."; break; // Descripcion Detallada   
		case 1219: return "Damage increased if you have a charged item."; break; // Descripcion Detallada   
		case 1220: return "Damage increased if you have an uncharged item."; break; // Descripcion Detallada   
		case 1221: return "Increase your size and damage while shooting."; break; // Descripcion Detallada   
		case 1222: return "Bullets destroy enemies' bullets."; break; // Descripcion Detallada   
		case 1223: return "Bullets have an aura that damage enemies."; break; // Descripcion Detallada   
		case 1224: return "Creates a random item chest."; break; // Descripcion Detallada   
		case 1225: return "Shoot an orb that shoot bullets."; break; // Descripcion Detallada   
		case 1226: return "You can pick up active bombs from the floor."; break; // Descripcion Detallada   
		case 1227: return "Locked doors can be opened with bombs."; break; // Descripcion Detallada   
		case 1228: return "Bullets shoot lazers to close enemies."; break; // Descripcion Detallada   
		case 1229: return "Creates a pulse wave instead of shooting."; break; // Descripcion Detallada   
		case 1230: return "Shoots a small fire in front of you."; break; // Descripcion Detallada   
		case 1231: return "Bullets can be charged and release in a burst."; break; // Descripcion Detallada   
		case 1232: return "Chance to shoot a burst of bullets"; break; // Descripcion Detallada   
		case 1233: return "Chance to shoot small bones."; break; // Descripcion Detallada   
		case 1234: return "Chance to shoot a lazer to close enemies."; break; // Descripcion Detallada   
		case 1235: return "Envenom all enemies in the room."; break; // Descripcion Detallada   
		case 1236: return "Bullets get bigger the further they go."; break; // Descripcion Detallada   
		case 1237: return "Enemies have a chance to cause a coin explosion."; break; // Descripcion Detallada   
		case 1238: return "Explode bullets."; break; // Descripcion Detallada   
		case 1239: return "Creates a toxic aura on top of enemies."; break; // Descripcion Detallada   
		case 1240: return "Chance to summon a clone that fights with you."; break; // Descripcion Detallada   
		case 1241: return "Summons a clone that shoots with you."; break; // Descripcion Detallada   
		case 1242: return "Secret rooms are always open."; break; // Descripcion Detallada   
		case 1243: return "Shoot bullets in all directions."; break; // Descripcion Detallada   
		case 1244: return "Killing an enemy has a chance to summon a cthulhu."; break; // Descripcion Detallada   
		case 1245: return "Spawn rockets when entering a room with full health."; break; // Descripcion Detallada   
		case 1246: return "Bombs attract enemies."; break; // Descripcion Detallada   
		case 1247: return "The player can't stop moving. Damage++."; break; // Descripcion Detallada   
		case 1248: return "Shoot a spike trail."; break; // Descripcion Detallada   
		case 1249: return "Shoot skulls that follow enemies."; break; // Descripcion Detallada   
		case 1250: return "Increases bombs' explosion radius."; break; // Descripcion Detallada   
    
	    case 1800: return "Points enemies and damage them instead of shooting."; break; // Descripcion Detallada
	    case 1801: return "Attack enemies with a scythe instead of shooting."; break; // Descripcion Detallada
	    case 1802: return "Tapping an enemy spends a charge and spawns a fire."; break; // Descripcion Detallada
	    case 1803: return "Bullets teleport to random enemies instantly."; break; // Descripcion Detallada
	    case 1804: return "Creates an aura that follows your finger and damages enemies."; break; // Descripcion Detallada   

	}
    
	    return "Undefined";



}
