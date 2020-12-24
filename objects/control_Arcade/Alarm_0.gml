// Empezar a crear enemigos
if(!instance_exists(obj_Jugador)) exit;
if(network_is_online()) and (global.NETWORK_HOST == false) exit; // Exit if you are online and you're not the host
if(Pre_Load == true and global.NO_ANUNCIOS == false) {
    //GoogleMobileAds_LoadInterstitial();
    Pre_Load = false;
} 
Enemies_This_Round++;
if(Enemies_This_Round < Enemies_Per_Round) alarm[0] = Max_Time_Enemies;

// Crear enemigo
if(global.NETWORK_HOST == true) or (!network_is_online()) { // Only the host performs this action
	
	var ID = get_arcade_enemy(control_Dungeon.Ronda);

	// Crea al enemigo en una lista de spawners
	Spawners = ds_list_create();
	for( n = 0; n < instance_number( obj_Enemigo_Spawner ); n++ ) {
	    ds_list_add( Spawners, instance_find( obj_Enemigo_Spawner, n ) );
	} 
	ds_list_shuffle(Spawners);
	Spawner = ds_list_find_value(Spawners, 0);
	var ff = 0;
	while(point_distance(obj_Jugador.x,obj_Jugador.y,Spawner.x,Spawner.y) < 50) {
	    ff++;
	    Spawner = ds_list_find_value(Spawners, ff);
	} 
	ds_list_delete(Spawners,ff);
	ds_list_destroy(Spawners);
	if(!is_undefined(Spawner)) {

		// Appear FX
	    repeat(0) {
	        var v = 8;
	        var xx = Spawner.x+12+random_range(-v, v);
	        var yy = Spawner.y+12+random_range(-v, v);
	        var a = random_range(0.1, 0.4);
	        create_effect(xx, yy, choose(sprSmoke, sprSmokeSmall), a);
	    }
    
		// Retrieve Boss number
	    if(bossNumber > 0) {
	        ID = 500 + choose(1,2,0,5,6,10,17,21,22);
	        bossNumber--;
	    }
    
		// Prepare data
		var _script   = -1;
		var _scriptID = -1;
		
		if(ID < 500) { // Normal monster
			_script = spawn;
			_scriptID = ID;
			
		} else {
			
			_script = spawn_boss;	
			_scriptID = ID-500;
			
		}
		
		// Spawn monster
		var _mob = script_execute(_script,Spawner.x+12,Spawner.y+12,_scriptID);		
    
	}
}