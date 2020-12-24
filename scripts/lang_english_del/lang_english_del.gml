/// @description lang_english(id)
/// @function lang_english
/// @param id
function lang_english_del(argument0) {

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
	    case 94: return "DROP ITEM"; break;
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
    
	    // Endless Dungeon
	    case 4000: return "Dungeon Level: "; break;
	    case 4001: return "Go through the tower to level it up"; break;
	    case 4002: return "This feature is locked, play Adventure mode to unlock it"; break;
	    case 4003: return "Complete a run with different items every day#and get 200 coins!"; break;
	    case 4004: return "Daily run complete.#Come back tomorrow for a different setup!"; break;
	    case 4005: return "Basement unlocked"; break;
    
	    // Extras
	    case 5000: return "TOWER"; break;
	    case 5001: return "BASEMENT"; break;
	    case 5002: return "YOU HEAR A SOUND FROM THE DUNGEON ENTRANCE"; break;
	    case 5003: return "You have received 50 coins."; break;
           
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
   
	   case 421: return "Gravity Bullets v2.3.1.1"; break; // Nombre
	   case 521: return "Moscas para todos!"; break; // Descripcion Rapida
	   case 621: return "Invocas balas que se adhieren a todos los enemigos de la sala, hiriendo a los de alredeor"; break; // Descripcion Detallada
   
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
	   case 636: return "You are immortal for a certain time, you deal damage to de enemies you touch and some cool music is played!"; break; // Descripcion Detallada
    
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

	}
    
	    return "Undefined";



}
