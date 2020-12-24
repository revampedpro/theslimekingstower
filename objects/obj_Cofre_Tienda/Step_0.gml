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
var price = (1-Free)*(control_Dungeon.Dungeon_Shop_Price[My_ID])/(player_has_item(78)+1);
if(ID != -1) {
    if(distance_to_object(obj_Jugador) < 2 and obj_Jugador.alarm[4]<0 and (global.Jugador_Monedas >= price or control_Dungeon.Dungeon_Shop_Price[My_ID] == 0)) {
        
        // Get the item and leave the old one      
        var preItem = player_get_item(ID,true);
        if(preItem != false) {
            ID = preItem;
        } else {
            ID = -1;
        }
        
        // Discount coins
        if(control_Dungeon.Dungeon_Shop_Price[My_ID] > 0) global.Jugador_Monedas -= price;
		Free = false;
        
        // Update price and item in control
        control_Dungeon.Dungeon_Shop[My_ID] = ID;
        control_Dungeon.Dungeon_Shop_Price[My_ID] = 0;
        
        //GoogleAnalytics_SendEvent("shop_item",string(ID));
        image_index = 1;
    }
}

// Restock
if(ID == -1) and (player_has_item(264)) {
    ID = get_random_item_from_pool("treasure");
    control_Dungeon.Dungeon_Shop[My_ID] = ID;
    control_Dungeon.Dungeon_Shop_Price[My_ID] = 10;
}


