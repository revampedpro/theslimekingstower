// Usar item
if(global.Jugador_Item_Usable != -1) and (Cargas = Cargas_Max) and (visible) and (os_type != os_android) {
    Show_Item_ID = global.Jugador_Item_Usable;
    alarm[4] = get_skill(global.Jugador_Item_Usable,2);
    Cargas = 0;    
    if(get_item(global.Jugador_Item_Usable,11)) Cargas = Cargas_Max;
    var mzfx = create_effect(x+7,y-22,sprFxRocketMuzzy,0.5);
    mzfx.depth = depth-60;
	
	// Tell your partner that you've used an item
	if(network_is_online()) {
	
		// Prepare data
		var _itemid = Show_Item_ID;
		var _cooldown = alarm[4];
		
		// Send packet
		pack_send_multi("playerUsedItem","itemid",_itemid,"cooldown",_cooldown);
	
	}
	
}

