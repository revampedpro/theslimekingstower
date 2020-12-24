if(instance_exists(fxTransition2))exit;

// Appear
if(visible == false) {
    visible = true;
    create_effect(x, y, sprMagicEffect2, 0.4);
    audio_play_sound(sndChestAppears,0,0);
}
// Brillar
if(alarm[0] < 0) and (image_index = 0) {
    alarm[0] = choose(15,15,15,20,20,30);
    var FX = create_effect(x-14+random(28),y-14+random(28),sprSparkle,0.1 + random(2)/10);
    FX.depth = depth-1;
}

// Coger el item
if(distance_to_object( obj_Jugador ) < 10 and obj_Jugador.alarm[4]<0) {
    if( ID != -1 ) {
        if( instance_exists( fx_Letras_Mapa ) ) with( fx_Letras_Mapa ) instance_destroy(); 
        
        
        // Get the item and leave the old one      
        var preItem = player_get_item(ID,true);
        if(preItem != false) {
            ID = preItem;
        } else {
            ID = -1;
        }
        
    } else {
    
        // Si el armario esta vacio guarda un objeto
        if(global.Jugador_Item_Usable > -1) {
            global.Armario_Item = global.Jugador_Item_Usable;
            ID = global.Armario_Item;
            global.Jugador_Item_Usable = -1;
            obj_Jugador.alarm[4] = 60;
            audio_play_sound(snd_Armario, 0, 0);
        }
    }
    
    // Cambiar image_index
    if(ID == -1) image_index = 1; else image_index = 0;
    
    // Guardar el nuevo item guardado
    global.Armario_Item = ID;
    ini_open("save.ini");
    ini_write_real( "S", "A", global.Armario_Item );
    ini_close();
    
}


