// Timers
timer_sync_faster--;
timer_sync_fast--;
timer_sync_medium--;
timer_sync_slow--;
timer_sync_long--;
if(timer_sync_faster < 1) timer_sync_faster = 1;
if(timer_sync_fast < 0)   timer_sync_fast   = 10;
if(timer_sync_medium < 0) timer_sync_medium = 30;
if(timer_sync_slow < 0)   timer_sync_slow   = 60;
if(timer_sync_long < 0)   timer_sync_long   = 120;

// Online Synchronizing
if(network_is_online()) {
	
	// Synchronize my player
	if(instance_exists(obj_Jugador)) and (timer_sync_faster == 1) {
		
		// Prepare vars
		var _x			= obj_Jugador.x;
		var _y			= obj_Jugador.y;
		var _sprite		= obj_Jugador.sprite_index;
		var _direction  = obj_Jugador.image_Direction;
		
		// Change sprite in special cases
		if(obj_Jugador.alarm[4] > 0) _sprite = obj_Jugador.spr_Get_Item;
		
		// Send packet
		pack_send_multi("positionUpdate","x",_x,"y",_y,"sprite",_sprite,"direction",_direction);	
		
		// Sync friends movement
		if(global.NETWORK_HOST == true) {
		var fl = min(6,array_length_1d(obj_Jugador.Friends));
		var _r = obj_Jugador.Friends_R;
		if(fl > 0) pack_send_multi("friendsPosition","r",_r);	
		}
		
		// Keep health in sync
		if(global.NETWORK_HOST == true) and (timer_sync_medium == 0) network_player_sync_health();
		
		// Keep pickups (keys, bombs, coins, bosskey) in sync
		if(global.NETWORK_HOST == true) and (timer_sync_medium == 0) network_player_sync_pickups();
		
		// Sync experience & level
		if(global.NETWORK_HOST == true) and (timer_sync_medium == 0) network_player_sync_experience();
		
		// Sync player lives
		if(global.NETWORK_HOST == true) and (timer_sync_long == 0) pack_send_multi("playerLives","lives",obj_Jugador.Lives);
		
		// Sync player fire rate
		if(global.NETWORK_HOST == true) and (timer_sync_long == 0) pack_send_multi("playerCadence","cadence",obj_Jugador.Cadencia_Disparo);
		
		
	}
	
	// Sync multi objects
	if(global.NETWORK_HOST == true) and (timer_sync_faster == 1)  {
		
		network_sync_multiobject(objEnemigoLazerInvoke);
		network_sync_multiobject(obj_TomahawkSkull);
		network_sync_multiobject(objEnemigoMummyLeftover);
		network_sync_multiobject(obj_Enemy_ClockStop);
		network_sync_multiobject(objJefePlanetSlimeMoon);
		network_sync_multiobject(obj_ChainSlimeChainBall);
		
	}
	
	// Synchronize enemy projectiles
	if(global.NETWORK_HOST == true) and (timer_sync_faster == 1)  {
		
		with(obj_MageSkeleton_Fireball) {
			// Prepare vars
			var _netid = netid;
			var _x = x;
			var _y = y;
			var _a = image_angle;
			var _s = sprite_index;
		
			// Send pack
			pack_send_multi("projectilePosition","netid",netid,"x",_x,"y",_y,"a",_a,"s",_s);
		
		}
	}
	
	// Synchronize pickups
	if(global.NETWORK_HOST == true) and (timer_sync_faster == 1)  {
		
		with(parent_Pickup) {
			// Prepare vars
			var _netid = netid;
			var _x = x;
			var _y = y;
		
			// Send pack
			pack_send_multi("pickupPosition","netid",netid,"x",_x,"y",_y);
		
		}
	}
	
	// Synchronize cthulhus
	if(global.NETWORK_HOST == true) and (timer_sync_faster == 1)  {
		
		with(parent_Jugador_Friend) {
			// Prepare vars
			var _netid = netid;
			var _x = x;
			var _y = y;
			var _sprite = sprite_index;
			var _a = image_angle;
		
			// Send pack
			pack_send_multi("cthulhuPosition","netid",netid,"x",_x,"y",_y,"sprite",_sprite,"angle",_a);
		
		}
	}
	
	// Synchronize mini chests
	if(global.NETWORK_HOST == true) and (timer_sync_faster == 1)  {
		
		with(objCofreMini) {
			// Prepare vars
			var _netid = netid;
			var _x = x;
			var _y = y;
		
			// Send pack
			pack_send_multi("chestPosition","netid",_netid,"x",_x,"y",_y);
		
		}
	}
	
	// Synchronize rockets
	if(global.NETWORK_HOST == true) and (timer_sync_faster == 1)  {
		
		with(obj_Jugador_Rocket) {
			// Prepare vars
			var _netid = netid;
			var _x = x;
			var _y = y;
			var _a = image_angle;
		
			// Send pack
			pack_send_multi("rocketPosition","netid",_netid,"x",_x,"y",_y,"a",_a);
		
		}
	}
	
	// Synchronize bombs
	if(global.NETWORK_HOST == true) and (timer_sync_faster == 1)  {
		with(objBomb) {
			string_explode(netid,".");
			if(real(level[0]) == global.NETID) {
				pack_send_multi("bombPosition","netid",netid,"x",x,"y",y);
			}
		}
	}
	
	// Synchronize monsters
	if(global.NETWORK_HOST == true) and (timer_sync_faster == 1)  {
		with(parent_Enemigo) {
		
			// Prepare vars
			var _netid		= netid;
			var _x			= x;
			var _y			= y;
			var _sprite		= sprite_index;
			var _imagespeed	= image_speed;
			var _hp			= HP;
			var _hpMax		= Max_HP;
			var _mobid		= ID;
			var _isboss		= IsBoss;
		
			// Send pack
			pack_send_multi("monsterSync","x",_x,"y",_y,"sprite",_sprite,"netid",_netid,"hp",_hp,"hpmax",_hpMax,"imagespeed",_imagespeed,"mobid",_mobid,"isboss",_isboss);	
		
			// Flash
			if(alarm[2] > 0) {
			
				// Prepare vars
				var _flash	= alarm[2];
			
				// Send packet
				pack_send_multi("monsterFlash","netid",_netid,"flash",_flash);	
				
			}
		
			// Altura
			if(Altura != 0) {
				pack_send_multi("monsterHeight","netid",netid,"altura",Altura);	
			}
		
		}
	}
	
}