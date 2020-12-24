// Comprobar si no quedan enemigos
if(network_is_online()) and (global.NETWORK_HOST == false) exit; // Exit if you are online and you're not the host
if(Enemies_This_Round >= Enemies_Per_Round and !instance_exists(parent_Enemigo)) {

    // Pasar de ronda
	ronda_activa = false;
    Max_Time_Enemies = clamp(Max_Time_Enemies-Time_Reduction,Min_Time_Enemies,Max_Time_Enemies);
    if(control_Dungeon.Ronda > 40) Enemies_Per_Round += 2;
    bossNumber = control_Dungeon.Ronda - 20;
    Enemies_Per_Round+= choose(0,0,0,0,1);
    Enemies_This_Round = 0;
    alarm[0] = Max_Time_Enemies;
    if(control_Dungeon.Ronda == 9    
	or control_Dungeon.Ronda == 19 
	or control_Dungeon.Ronda == 29 
	or control_Dungeon.Ronda == 39 
	or control_Dungeon.Ronda == 49) and global.NO_ANUNCIOS == false {
        alarm[0] = 400;
        if(global.Ads_Active == true) {
            if(unity_ads_is_ready_with_placement_id("ingameAd")) {
                unity_ads_show_with_placement_id("ingameAd");
            } else {
                //GoogleMobileAds_ShowInterstitial();
            }
        }
        Pre_Load = true;
    }
    
    // Declarar los tesoros
    obj_Cofre_Arcade.ID = get_random_item_from_pool("arcade");
	
	// Tell your partner that this chest has spawned
	if(network_is_online()) and (global.NETWORK_HOST == true) {
		pack_send_multi("arcadeChestID","id",obj_Cofre_Arcade.ID);
	}

    
} 

// Spawn enemies
if(distance_to_object(obj_Jugador)<1) and (ronda_activa == false) {
	if(counter > 60) {
		ronda_activa = true;
		control_Dungeon.Ronda++;
		alarm[0] = 1;
		create_effect(x,y,sprFxFlashMuzzy,0.5);
		counter = 0;	
	} else {
		counter++;	
	}
} else {
	counter = 0;	
}
if(ronda_activa == false) {
	alarm[0]++;
}