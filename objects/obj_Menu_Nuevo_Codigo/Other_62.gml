// Respuesta de la petición de código promocional

if ds_map_find_value(async_load, "status") == 0 {

   var DATA = real(ds_map_find_value(async_load, "result"));
   
   if(DATA == 0) { // No se encontro ningún código o ya ha sido usado
        show_message_async(lang(84));
   }
   if(DATA == 1) { // 250 Monedas añadidas
        global.Monedas_General += 250;
        show_message_async(lang(85));
   }
   if(DATA == 2) { // 500 Monedas añadidas
        global.Monedas_General += 500;
        show_message_async(lang(86));
   }
   if(DATA == 3) { // 1000 Monedas añadidas
        global.Monedas_General += 1000;
        show_message_async(lang(87));
   }
   if(DATA == 4) { // Publicidad desactivada
       global.Ads_Active = false;
        ini_open( "save.ini" );
        ini_write_real("S", "KJ", global.Ads_Active);
        ini_close();
        show_message_async(lang(88));
   }
   if(DATA == 5) { // Basement unlocked
        ini_open("save.ini");
            ini_write_real("S", "TRLS", 7);
        ini_close();
        show_message_async(lang(4005));
   }
   if(DATA == 6) { // Unlock player
        
   }
   
    /// Guardar configuracion
    ini_open( "save.ini" );
    ini_write_real( "S", "MG", global.Monedas_General );
    ini_close();
    
    // Borrar la transicion Out y crear la In
    with(fx_Transition_Out) instance_destroy();
    instance_create(0, 0, fx_Transition_In);
    room_restart();
   
}

