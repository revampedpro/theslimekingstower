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
if(ID != -1) {
    if(distance_to_object(obj_Jugador) < 10  and obj_Jugador.alarm[4]<0 and (obj_Jugador.Level >= get_item(ID, 12) or control_Dungeon.God_Shop_Price[My_ID] == 0)) {
        if( instance_exists( fx_Letras_Mapa ) ) with( fx_Letras_Mapa ) instance_destroy();

        if(get_item(ID,6) == false) {
            if(control_Dungeon.God_Shop_Price[My_ID] > 0) obj_Jugador.Level -= get_item(ID,12);
            obj_Jugador.Show_Item_ID = ID;
            create_map_text(room_width/2,-10,get_item(ID,2),get_item(ID,4));
            get_item(ID,0);
            control_Dungeon.Jugador_Items[array_length_1d(control_Dungeon.Jugador_Items)] = ID;
            ID = -1;
            control_Dungeon.God_Shop[My_ID] = ID;
        } else {
            if(obj_Jugador.Cargas > get_item(ID,7)) { obj_Jugador.Cargas = get_item( ID, 7 ); }
            obj_Jugador.Cargas_Max = get_item(ID,7);
            if(get_item(ID,14) == false) obj_Jugador.Cargas = 0; 
            if(control_Dungeon.God_Shop_Price[My_ID] > 0) obj_Jugador.Level -= get_item(ID,12);
            obj_Jugador.Show_Item_ID = ID;
            create_map_text(room_width/2,-10,get_item(ID,2),get_item(ID,4));
            var pre_Item_ID = global.Jugador_Item_Usable;
            global.Jugador_Item_Usable = ID;
            control_Dungeon.Jugador_Items[array_length_1d(control_Dungeon.Jugador_Items)] = ID;
            ID = pre_Item_ID;
            control_Dungeon.God_Shop[My_ID] = ID;
        }
        
        control_Dungeon.God_Shop_Price[My_ID] = 0;
        audio_play_sound( snd_Get_Item_Big, 1, 0 );
        obj_Jugador.alarm[4] = 120;
        image_index = 1;
        
        if(!check_character_unlocked(10,0)) unlock_character(10);
            
    }
}



