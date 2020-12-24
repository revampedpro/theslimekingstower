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
if(distance_to_object(obj_Jugador)<2) {
    if(ID != -1) {
        
        // Get the item and leave the old one      
        player_get_item(ID,true);
        
        ID = -1;
        image_index = 1;
        
        control_Dungeon.Especial_Usada = true;
        with( obj_Cofre_Eleccion ) instance_destroy();
        
    } else {
    
        if( instance_exists( fx_Letras_Mapa ) ) with( fx_Letras_Mapa ) instance_destroy(); 
        if( Index = 0 ) { global.Jugador_Monedas = max(0,global.Jugador_Monedas-99); obj_Jugador.Show_Item_ID = 800; obj_Jugador.ShowItemID = -1; create_map_text(room_width/2,-10,lang(37),lang(38)); }
        if( Index = 1 ) { global.Jugador_Monedas = max(0,global.Jugador_Monedas-5);  obj_Jugador.Show_Item_ID = 801; obj_Jugador.ShowItemID = -1; create_map_text(room_width/2,-10,lang(39),lang(40)); }
        if( Index = 2 ) { global.Jugador_Monedas = max(0,global.Jugador_Monedas+5);  obj_Jugador.Show_Item_ID = 802; obj_Jugador.ShowItemID = -1; create_map_text(room_width/2,-10,lang(41),lang(42)); }
    
        audio_play_sound( snd_Get_Item_Big, 1, 0 );
        obj_Jugador.alarm[4] = 120;
        control_Dungeon.Especial_Usada = true;
        with( obj_Cofre_Eleccion ) {
            repeat(4){
                var v = 8;
                var xx = x+random_range(-v, v);
                var yy = y+random_range(-v, v);
                var a = random_range(0.1, 0.4);
                create_effect(xx, yy, choose(sprSmoke, sprSmokeSmall), a);
            }
            instance_destroy();
        }
        
    }
}



