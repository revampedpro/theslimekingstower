/// @description pack_listen_client
/// @param header
/// @param data[map]
function pack_listen_client() {
	//
	// # REMAINDER
	// # Remember to CAST pack data to avoid confussion between strings and integer
	//

	// Vars
	var socket = global.SOCKET;
	var header = argument[0];
	var pack   = argument[1];

	// Both
	switch(header) {
	
		// You are now connected to the network
		case "connected":
	
			// Cast vars
			var _netid = real(pack[? "netid"]);
			var _host  = real(pack[? "host"]);
		
			// Setup networking vars
			global.NETWORKING	= true;
			global.NETID		= _netid;
			global.NETWORK_HOST = _host;
	
		break;
	
		// New player joins the match
		case "newPlayer":
	
			// Cast vars
			var _netid	= string(pack[? "netid"]);
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
		
			// Check if player already exists
			var _instance = network_find_instance_by_id(obj_Jugador_Networking,_netid);
			if(_instance == -1) {
				var _instance = instance_create(_x,_y,obj_Jugador_Networking);
				_instance.netid = _netid;
			}
	
		break;
	
		// Update player's position
		case "positionUpdate":
		
			// Cast vars
			var _netid		= string(pack[? "netid"]);
			var _x			= real(pack[? "x"]);
			var _y			= real(pack[? "y"]);
			var _sprite		= real(pack[? "sprite"]);
			var _direction	= real(pack[? "direction"]);
		
			// Push new data to the instance
			var _instance = network_find_instance_by_id(obj_Jugador_Networking,_netid);
			if(_instance != -1) {
				_instance.x2			  = _x;
				_instance.y2			  = _y;
				_instance.sprite_index	  = _sprite;
				_instance.image_Direction = _direction;
			} else  {
				var _instance = instance_create(_x,_y,obj_Jugador_Networking);
				_instance.netid = _netid;
			}
		
		break;
	
		// Update player cadence
		case "playerCadence":
	
			// Cast vars
			var _cadence = real(pack[? "cadence"]);
		
			// Set var
			with(obj_Jugador) Cadencia_Disparo = _cadence;
	
		break;
	
		// A floating text has been created
		case "floatingText":
		
			// Cast vars
			var _x			= real(pack[? "x"]);
			var _y			= real(pack[? "y"]);
			var _color		= real(pack[? "color"]);
			var _text		= string(pack[? "text"]);
			var _outline	= real(pack[? "outline"]);
		
			// Create floating text
			floating_text(_x,_y,_text,_color,_outline);
		
		break;
	
		// A reward has spawned in the arcade chest
		case "arcadeChestID":
	
			// Cast vars
			var _id = real(pack[? "id"]);
		
			// Set reward
			obj_Cofre_Arcade.ID = _id;
	
		break;
	
		// Another player has picked up the item from the arcade chest
		case "arcadeChestPick":
		
			// Set reward
			obj_Cofre_Arcade.ID = -1;
	
		break;
	
		// A bomb has spawn
		case "bombSpawn":
	
			// Cast vars
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
			var _netid	= string(pack[? "netid"]);
		
			// Create the bomb
			var _bomb = instance_create(_x,_y,objBomb);
			_bomb.netid = _netid;
	
		break;
	
		// Your partner has thrown a bomb
		case "throwBomb":
			with(obj_Jugador_Networking) player_drop_bomb(x,y);
		break;
	
		// Sync bombs' positions
		case "bombPosition":
	
			// Cast vars
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
			var _netid	= string(pack[? "netid"]);
		
			// Apply position to bomb
			var _instance = network_find_instance_by_id(objBomb,_netid);
			if(_instance != -1) {
				_instance.x = _x;
				_instance.y = _y;
			}
	
		break;
	
		// An enemy lazer was created
		case "enemyLazer":
	
			// Cast vars
			var _netid = string(pack[? "netid"]);
			var _direction = real(pack[? "direction"]);
		
			// Create lazer
			var _instance = network_find_instance_by_id(obj_Enemigo_Networking,_netid);
			if(_instance != -1) {
				 var lazer = instance_create(_instance.x,_instance.y,obj_Enemy_Laser); 
				 lazer.Parent	 = _instance; 
				 lazer.Direction = _direction;
			}
	
		break;
	
		// Update enemy alpha
		case "enemyAlpha":
	
			// Cast vars
			var _netid		= string(pack[? "netid"]);
			var _alpha		= real(pack[? "alpha"]);
		
			// Update action time
			var _instance = network_find_instance_by_id(obj_Enemigo_Networking,_netid);
			if(_instance != -1) {
				_instance.image_alpha = _alpha;
			}
	
		break;
	
		// Enemy Shied Lazer
		case "lazerShield":
	
			// Cast vars
			var _x1	= real(pack[? "x1"]);
			var _y1	= real(pack[? "y1"]);
			var _x2	= real(pack[? "x2"]);
			var _y2	= real(pack[? "y2"]);
			var _x3	= real(pack[? "x3"]);
			var _y3	= real(pack[? "y3"]);
		
		    create_effect(_x3, _y3, sprFxPurpleMuzzy, 0.5);
			
	        var lazerShield = instance_create(_x1,_y1,fxLazer);
	        lazerShield.X2 = _x2;
	        lazerShield.Y2 = _y2;
	
		break;
	
		// Update enemy action time
		case "actionTime":
	
			// Cast vars
			var _netid				= string(pack[? "netid"]);
			var _action_time		= real(pack[? "action_time"]);
			var _action_time_max	= real(pack[? "action_time_max"]);
			var _action_color		= real(pack[? "action_color"]);
		
			// Update action time
			var _instance = network_find_instance_by_id(obj_Enemigo_Networking,_netid);
			if(_instance != -1) {
				_instance.actionTime	= _action_time;
				_instance.actionTimeMax = _action_time_max;	
				_instance.actionColor   = _action_color;
			}
	
		break;
	
	
		// Bomb has exploded
		case "bombExplosionHappened":
		
			// Cast vars
			var _x = real(pack[? "x"]);
			var _y = real(pack[? "y"]);
			instance_create(_x,_y,objBombExplosion);
		
		break;
	
		// Bomb has exploded
		case "bombExplosion":
	
			// Cast vars
			var _netid = string(pack[? "netid"]);
		
			// Explode bomb
			var _instance = network_find_instance_by_id(objBomb,_netid);
			if(_instance != -1) {
				_instance.image_index = _instance.image_number-1;	
			}
		
		break;
	
		// A Monster has appeared
		case "monsterAppear":
	
			// Cast vars
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
			var _netid	= string(pack[? "netid"]);
			
			// Spawn monster
			var _mob = instance_create(_x,_y,obj_Enemigo_Networking);
			_mob.netid = _netid;
			
		break;
	
		// Monster sync
		case "monsterSync":
		
			// Cast vars
			var _netid		= string(pack[? "netid"]);
			var _x			= real(pack[? "x"]);
			var _y			= real(pack[? "y"]);
			var _mobid		= real(pack[? "mobid"]);
			var _sprite		= real(pack[? "sprite"]);
			var _imagespeed	= real(pack[? "imagespeed"]);
			var _hp			= real(pack[? "hp"]);
			var _hpMax		= real(pack[? "hpmax"]);
			var _isboss		= real(pack[? "isboss"]);
		
			// Push new data to the instance
			var _instance = network_find_instance_by_id(obj_Enemigo_Networking,_netid);
			if(_instance != -1) {
				_instance.x2			= _x;
				_instance.y2			= _y;
				_instance.sprite_index	= _sprite;
				_instance.image_speed	= _imagespeed;
				_instance.hp			= _hp;
				_instance.hpMax			= _hpMax;
				_instance.ID			= _mobid;
				_instance.IsBoss		= _isboss;
			} else  {
				var _instance = instance_create(_x,_y,obj_Enemigo_Networking);
				_instance.netid		= _netid;
				_instance.hp		= _hp;
				_instance.hpMax		= _hpMax;
				_instance.ID		= _mobid;
				_instance.IsBoss	= _isboss;
			}
		
		break;
	
		// A monster has flashed
		case "monsterFlash":
		
			// Cast vars
			var _netid		= string(pack[? "netid"]);
			var _flash		= real(pack[? "flash"]);
		
			// Push new data to the instance
			var _instance = network_find_instance_by_id(obj_Enemigo_Networking,_netid);
			if(_instance != -1) {
				_instance.alarm[2] = _flash;
			}
		
		break;
	
		// Monster height
		case "monsterHeight":
	
			// Cast vars
			var _netid		= string(pack[? "netid"]);
			var _altura		= real(pack[? "altura"]);
		
			// Push new data to the instance
			var _instance = network_find_instance_by_id(obj_Enemigo_Networking,_netid);
			if(_instance != -1) {
				_instance.Altura = _altura;
			}
	
		break;
	
		// Monster death
		case "monsterDeath":
	
			// Cars varts
			var _netid	= string(pack[? "netid"]);
		
			// Find and destroy monster
			var _instance = network_find_instance_by_id(obj_Enemigo_Networking,_netid);
			if(_instance != -1) {
						
				// Destroy instance
				with(_instance) {
					enemy_perform_death_fx(ID,id);
					instance_destroy();	
				}
			
			}
	
		break;
	
		// A player has been hit by an object
		case "hitByObject":
	
			// Cast vars
			var _object = real(pack[? "object"]);
			var _netid	= string(pack[? "netid"]);
			var _enemy = network_find_instance_by_id(_object,_netid);
		
			// Perform collision
			if(_enemy != -1) {
				with(obj_Jugador) player_damage_collisions(_enemy);
			}
	
		break;
	
		// A player has been hit by an enemy
		case "hitByMonster":
	
			// Cast vars
			var _netid	= string(pack[? "netid"]);
			var _enemy = network_find_instance_by_id(parent_Enemigo,_netid);
		
			// Perform collision
			if(_enemy != -1) {
				with(obj_Jugador) player_damage_collisions(_enemy);
			}
	
		break;
	
		// The host has been hit, perform only fx
		case "hitByMonsterFX":
		
			with(obj_Jugador)			 alarm[3] = obj_Jugador.Delay_Invencibilidad;
			with(obj_Jugador_Networking) alarm[3] = obj_Jugador.Delay_Invencibilidad;
		
		break;
	
		// A screen flash has happened
		case "flash":
		
			// Cast vars
			var _frames = real(pack[? "frames"]);
			var _color  = real(pack[? "color"]);
		
			// Create flash
			flash(_frames,_color);
		
		break;
	
		// Sync player's health
		case "syncHealth":
	
			// Cast vars
			var _HP			= real(pack[? "hp"]);
			var _HP_Max		= real(pack[? "hpmax"]);
			var _HP_Extra_S = real(pack[? "hpextras"]);
			var _HP_Extra	= string(pack[? "hpextra"]);
			var _HP_Extra_Q = string(pack[? "hpextraq"]);
		
			// Read HP Data
			obj_Jugador.HP			= _HP;
			obj_Jugador.HP_Max		= _HP_Max;
			obj_Jugador.HP_Extra_S	= _HP_Extra_S;
	
			// Read arrays
			obj_Jugador.HP_Extra   = explode_real("?",_HP_Extra);
			obj_Jugador.HP_Extra_Q = explode_real("?",_HP_Extra_Q);
		
		break;
	
		// Player left
		case "playerLeft":
	
			// Cast vars
			var _netid		= string(pack[? "netid"]);
	
			// Destroy player's instance
			var _instance = network_find_instance_by_id(obj_Jugador_Networking,_netid);
			if(_instance != -1) {
				with(_instance) instance_destroy();	
			}
	
		break;
	
		// A player has picked up and item
		case "pickedUpItem":
	
			// Cast vars
			var _itemid	 = real(pack[? "itemid"]);
			var _maptext = real(pack[? "maptext"]);
		
			// Pick item
			if(_itemid != -1) {
				player_get_item(_itemid,_maptext,false);
				with(obj_Jugador_Networking) {
					alarm[4] = 120;
					Show_Item_ID = _itemid;
				}
			}
	
		break;
	
		// A player has losed an item
		case "loseItem":
	
			// Cast vars
			var _seed = real(pack[? "seed"]);
		
			// Lose the random item corresponding to that seed
			player_lose_item_random(_seed,false);
	
		break;
	
		// A player has used an item
		case "playerUsedItem":
	
			// Cast vars
			var _itemid		= real(pack[? "itemid"]);
			var _cooldown	= real(pack[? "cooldown"]);
		
			// Show Item
		    obj_Jugador_Networking.Show_Item_ID = global.Jugador_Item_Usable;
		    obj_Jugador_Networking.alarm[4]		= get_skill(global.Jugador_Item_Usable,2,obj_Jugador_Networking);
		    var mzfx = create_effect(obj_Jugador_Networking.x+7,obj_Jugador_Networking.y-22,sprFxRocketMuzzy,0.5);
		    mzfx.depth = obj_Jugador_Networking.depth-60;
	
		break;
	
		// A pickup has spawn
		case "pickupSpawn":
	
			// Cast vars
			var _netid  = string(pack[? "netid"]);
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
			var _object = real(pack[? "object"]);
		
			// Create pickup
			var _pickup = instance_create(_x,_y,_object);
			_pickup.netid = _netid;
	
		break;
	
		// Receive boss bar hp update
		case "bossBar":
	
			// Cast vars
			var _hp		= real(pack[? "hp"]);
			var _hp_max = real(pack[? "hp_max"]);
		
			// Set vars
			with(control_UI) {
				guest_HP	 = _hp;
				guest_HP_Max = _hp_max;
				alarm[2] = 120;
			}
		
		break;
	
		// An item chest has spawn
		case "itemChestSpawn":
	
			// Cast vars
			var _netid  = string(pack[? "netid"]);
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
			var _id     = real(pack[? "id"]);
			var _locked = real(pack[? "locked"]);
		
			// Create pickup
			var _chest = instance_create(_x,_y,obj_Cofre_General);
			_chest.netid = _netid;
			_chest.ID = _id;
			_chest.locked = _locked;
	
		break;
	
		// Item chest has been opened
		case "itemChestOpen":
	
			// Cast vars
			var _netid = string(pack[? "netid"]);
		
			// Find chest and open it
			var _instance = network_find_instance_by_id(obj_Cofre_General,_netid);
			if(_instance != -1) {
				with(_instance) {
					audio_play_sound(sndDoorUnlock,0,0);
					locked = false;
					alarm[2] = 60;
				}
			}
	
		break;
	
		// A chest has spawn
		case "chestSpawn":
	
			// Cast vars
			var _netid  = string(pack[? "netid"]);
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
			var _object = real(pack[? "object"]);
		
			// Create pickup
			var _chest = instance_create(_x,_y,_object);
			_chest.netid = _netid;
	
		break;
	
		// A chest has been opened
		case "chestOpened":
	
			// Cast vars
			var _netid = string(pack[? "netid"]);
		
			// Open
			var _instance = network_find_instance_by_id(objCofreMini,_netid);
			if(_instance != -1) {
				if(_instance.image_index == 0) and (_instance.alarm[1]<0) {
				    _instance.image_index = 1;
				    _instance.alarm[0] = 120;
				    audio_play_sound(sndChestOpen,0,0);
				}
			}
	
		break;
	
		// Sync chest position
		case "chestPosition":
	
			// Cast vars
			var _netid  = string(pack[? "netid"]);
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
		
			// Find the pickup and destroy it
			var _instance = network_find_instance_by_id(objCofreMini,_netid);
			if(_instance != -1) {
				_instance.x = _x;
				_instance.y = _y;
			}
		
		break;
	
		// Sync rocket position
		case "rocketPosition":
	
			// Cast vars
			var _netid  = string(pack[? "netid"]);
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
			var _a		= real(pack[? "a"]);
		
			// Find the rocket and sync it
			var _instance = network_find_instance_by_id(obj_Item_Networking,_netid);
			if(_instance != -1) {
				_instance.x2		  = _x;
				_instance.y2		  = _y;
				_instance.image_angle = _a;
			} else {
				var _rocket = instance_create(_x,_y,obj_Item_Networking);	
				_rocket.image_angle  = _a;
				_rocket.netid		 = _netid;
				_rocket.sprite_index = sprDisparoRocket;
			}
		
		break;
	
		// Rocket was destroyed
		case "rocketDestroyed":
	
			// Cast vars
			var _netid  = string(pack[? "netid"]);
		
			// Find the rocket and destroy it
			var _instance = network_find_instance_by_id(obj_Item_Networking,_netid);
			if(_instance != -1) {
				with(_instance) instance_destroy();
			}
		
		break;
	
		// A pickup has been destroyed
		case "pickupDestroyed":
	
			// Cast vars
			var _netid  = string(pack[? "netid"]);
		
			// Find the pickup and destroy it
			var _instance = network_find_instance_by_id(parent_Pickup,_netid);
			if(_instance != -1) {
				with(_instance) instance_destroy();	
			}
		
		break;
	
		// A bullet has spawned
		case "bulletSpawn":
	
			// Cast vars
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
			var _hspeed = real(pack[? "hspeed"]);
			var _vspeed = real(pack[? "vspeed"]);
			var _angle  = real(pack[? "angle"]);
			var _type   = real(pack[? "type"]);
			var _sprite = real(pack[? "sprite"]);
		
			// Spawne bullet
			bullet_spawn(_x,_y,_hspeed,_vspeed,_angle,_type,_sprite);
	
		break;
	
		// Sync cthulhu position
		case "cthulhuPosition":
	
			// Cast vars
			var _netid  = string(pack[? "netid"]);
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
			var _sprite = real(pack[? "sprite"]);
			var _a		= real(pack[? "angle"]);
		
			// Find the pickup and destroy it
			var _instance = network_find_instance_by_id(obj_Item_Networking,_netid);
			if(_instance != -1) {
				_instance.x2 = _x;
				_instance.y2 = _y;
				_instance.image_angle = _a;
				_instance.sprite_index = _sprite;
			} else {
				_instance = instance_create(_x,_y,obj_Item_Networking);
				_instance.image_angle = _a;
				_instance.sprite_index = _sprite;
				_instance.netid = _netid;
			}
		
		break;
	
		// Sync enemies' projectiles position
		case "projectilePosition":
	
			// Cast vars
			var _netid  = string(pack[? "netid"]);
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
			var _a		= real(pack[? "a"]);
			var _s		= real(pack[? "s"]);
		
			// Find the pickup and destroy it
			var _instance = network_find_instance_by_id(obj_MageSkeleton_Fireball,_netid);
			if(_instance != -1) {
				_instance.x = _x;
				_instance.y = _y;
				_instance.image_angle = _a;
				_instance.sprite_index = _s;
				_instance.Direction = _a;
			} else {
				_instance = instance_create(_x,_y,obj_MageSkeleton_Fireball);
				_instance.netid = _netid;
				_instance.image_angle = _a;
				_instance.Direction = _a;
				_instance.sprite_index = _s;
			}
		
		break;
	
		// Sync multiple objects position
		case "multiObjectPosition":
	
			// Cast vars
			var _netid  = string(pack[? "netid"]);
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
			var _a		= real(pack[? "a"]);
			var _object = real(pack[? "o"]);
			var _sprite = real(pack[? "s"]);
		
			// Find the pickup and destroy it
			var _instance = network_find_instance_by_id(_object,_netid);
			if(_instance != -1) {
				_instance.x			   = _x;
				_instance.y			   = _y;
				_instance.sprite_index = _sprite;
				_instance.image_angle  = _a;
				if(_object == obj_ChainSlimeChainBall) {
					_instance.image_angle = 0;
					_instance.image_index = _a;
				}
			} else {
				_instance = instance_create(_x,_y,_object);
				_instance.netid		   = _netid;
				_instance.image_angle  = _a;
				_instance.sprite_index = _sprite;
				if(_object == obj_ChainSlimeChainBall) {
					_instance.image_angle = 0;
					_instance.image_index = _a;
				}
			}
		
		break;
	
		// An object was destroyed
		case "objectDestroy":
	
			// Cast var
			var _netid  = string(pack[? "netid"]);
			var _object = string(pack[? "object"]);
		
			// destroy object
			var _instance = network_find_instance_by_id(_object,_netid);
			if(_instance != -1) {
				with(_instance) instance_destroy();
			}
		
	
		break;
	
		// Sync pickup position
		case "pickupPosition":
	
			// Cast vars
			var _netid  = string(pack[? "netid"]);
			var _x		= real(pack[? "x"]);
			var _y		= real(pack[? "y"]);
		
			// Find the pickup and destroy it
			var _instance = network_find_instance_by_id(parent_Pickup,_netid);
			if(_instance != -1) {
				_instance.x = _x;
				_instance.y = _y;
			}
		
		break;
	
		// Sync pickups between players
		case "pickupSync":
		
			// Cast vars
			var _coins		= real(pack[? "coins"]);		
			var _keys		= real(pack[? "keys"]);		
			var _bombs		= real(pack[? "bombs"]);		
			var _bosskey	= real(pack[? "bosskey"]);	

			// Set new vars
			global.Jugador_Monedas	= _coins;
			obj_Jugador.keys		= _keys;
			obj_Jugador.bombs		= _bombs;
			obj_Jugador.bosskey		= _bosskey;
		
		break;
	
		// Sync experience
		case "playerExp":
	
			// Cast vars
			var _exp	= real(pack[? "exp"]);
			var _level  = real(pack[? "level"]);
		
			// Update vars
			obj_Jugador.Experience = _exp;
			obj_Jugador.Level = _level;
	
		break;
	
		// Sync friends
		case "friendsPosition":
	
			// Cast vars
			var _r = real(pack[? "r"]);
		
			// Set var
			obj_Jugador.Friends_R = _r;
	
		break;
	
		// Sync player lives
		case "playerLives":
	
			// Cast vars
			var _lives = real(pack[? "lives"]);
		
			// Apply lives
			with(obj_Jugador) Lives = _lives;
	
		break;
	
		// A special heart has been used
		case "specialHeartUsed":
		
			// Cast vars
			var _type = real(pack[? "type"]);
		
			// Apply FX for the heart
			special_heart_used(_type);
	
		break;
	
		// A player has shoot a bullet
		case "playerShoot":
	
			// Cast vars
			var _netid		= string(pack[? "netid"]);
			var _x			= real(pack[? "x"]);
			var _y			= real(pack[? "y"]);
			var _hspeed		= real(pack[? "hspeed"]);
			var _vspeed		= real(pack[? "vspeed"]);
			var _angle		= real(pack[? "angle"]);
			var _direction	= real(pack[? "direction"]);
			var _ammotype	= real(pack[? "ammotype"]);
	
			// Create bullet
			var Disparo = instance_create(_x,_y,_ammotype);
			Disparo.V_SPEED				= _vspeed;
			Disparo.H_SPEED				= _hspeed;
			Disparo.image_angle			= _angle;
			Disparo.Direccion_Relativa	= _direction;
		
			// Assign an unique ID to this bullet
			Disparo.netid = _netid;

			// Crear efecto de disparo
			switch(_direction) {
			
				case 0:
					var FX = create_effect(obj_Jugador_Networking.x,obj_Jugador_Networking.y-5,sprSplatMini,0.4);
					break;
				
				case 1:
					var FX = create_effect(obj_Jugador_Networking.x+14,obj_Jugador_Networking.y-1,sprSplatMini,0.4);
					FX.depth = depth-1;
					break;
				
				case 2:
					var FX = create_effect(obj_Jugador_Networking.x,obj_Jugador_Networking.y+10,sprSplatMini,0.4);
					break;
				
				case 3:
					var FX = create_effect(obj_Jugador_Networking.x-14,obj_Jugador_Networking.y-1,sprSplatMini,0.4);
					FX.depth = depth-1;
					break;
				
			}
			FX.image_blend = make_colour_rgb(255,255,128);

			// Efectos comunes de disparo en los que no importa la direccion
			scr_jugador_common_shoot(Disparo);
	
		break;
	
		// A bullet has died
		case "bulletDeath":
	
			// Cast vars
			var _netid = string(pack[? "netid"]);
		
			// Find the bullet and destroy it
			var _instance = network_find_instance_by_id(parent_Bullet,_netid);
			if(_instance != -1) {
				with(_instance) instance_destroy();	
			}
	
		break;
		
	}

	// Free pack map
	if(ds_exists(pack,ds_type_map)) and (pack != true) ds_map_destroy(pack);





}
