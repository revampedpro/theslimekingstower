if(instance_exists(fxTransition2))exit;

// Appear
if(visible == false) {
    visible = true;
    create_effect(x, y, sprMagicEffect2, 0.4);
    audio_stop_sound(sndChestAppears);
    audio_play_sound(sndChestAppears,0,0);
}
// Brillar
if(alarm[0] < 0) and (image_index = 0) {
    alarm[0] = choose(15,15,15,20,20,30);
    var FX = create_effect(x-14+random(28),y-14+random(28),sprSparkle,0.1 + random(2)/10);
    FX.depth = depth-1;
}

// Coger el item

var price2 = floor((1-Free)*(price)/(player_has_item(78)+1));
{
    if(distance_to_object(obj_Jugador) < 2 and obj_Jugador.alarm[4]<0 and (global.Jugador_Monedas >= price2)) {
        
        // Get the item and leave the old one   
		/*
        var preItem = player_get_item(ID,true);
        if(preItem != false) {
            ID = preItem;
        } else {
            ID = -1;
        }
		*/
		
	    // Show item
		var spr = 803
		switch(type) {
			case pickup_chest.heart:
				spr = 804;
			break;
			case pickup_chest.bomb:
				spr = 805;
			break;
			case pickup_chest.rocket:
				spr = 806;
			break;
		}
		obj_Jugador.alarm[4] = 60;
	    obj_Jugador.Show_Item_ID = spr;
		obj_Jugador.ShowItemID = -1;
		audio_stop_sound(sndPickupGet);
		audio_play_sound(sndPickupGet, 1, 0);
		
		// Add item
		switch(type) {
			case pickup_chest.heart:
				with(obj_Jugador) {
					HP += 2;
					if(HP > HP_Max) HP = HP_Max;
				}
			break;
			case pickup_chest.key:
				obj_Jugador.keys++;
			break;
			case pickup_chest.bomb:
				obj_Jugador.bombs++;
			break;
			case pickup_chest.rocket:
				spawn_rocket(1);
			break;
		}
        
        // Discount coins
        global.Jugador_Monedas -= price2;
		Free = false;
        
        // Update price and item in control
        //control_Dungeon.Dungeon_Shop[My_ID] = ID;
        //control_Dungeon.Dungeon_Shop_Price[My_ID] = 0;
        
        //GoogleAnalytics_SendEvent("shop_pickup",string(type));
        image_index = 1;
    }
}

// Restock
/*
if(ID == -1) and (player_has_item(264)) {
    ID = get_random_item_from_pool("treasure");
    control_Dungeon.Dungeon_Shop[My_ID] = ID;
    control_Dungeon.Dungeon_Shop_Price[My_ID] = 10;
}


