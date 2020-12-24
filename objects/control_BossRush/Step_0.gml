/// @description Control
// Activate next boss
if(!instance_exists(parent_Enemigo)) {
	if(distance_to_object(obj_Jugador) < 1) {
		if(counter > 60) {
		
			// Boss rush done
			if(current_boss > max_boss) {
			
				// Drop crown
				if(!instance_exists(objSlimekingCrown)) {
					instance_create(room_width/2,room_height/2,objSlimekingCrown);
					exit;
				}
			
			} else {
		
				spawn_boss((room_width/2)-8,(room_height/2)-16,boss_list[current_boss]);
				current_boss++;
				global.bossRush_Boss = current_boss;
				ad_available = true;
				treasure_available = true;
				counter = 0;
				create_effect(x,y,sprFxEnemyMuzzy,0.5);
			
			}
		
			exit;
		}
		counter++;
	} else {
		counter = 0;	
	}
	
	// Anuncio cada 10 bosses
	if(current_boss mod 10 == 0) and (ad_available == true) {
		
		if(global.NO_ANUNCIOS == false) {
			if(global.Ads_Active == true) {
	            if(unity_ads_is_ready_with_placement_id("ingameAd")) {
	                unity_ads_show_with_placement_id("ingameAd");
	            } else {
	                //GoogleMobileAds_ShowInterstitial();
	            }
				ad_available = false;
			}
        }
		
	}
	
	// Generate treasure
	if(treasure_available) {
		obj_Cofre_BossRush.ID = get_random_item_from_pool("arcade");
		treasure_available = false;
	}
	
}
