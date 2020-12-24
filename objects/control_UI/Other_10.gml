/// @description  Pausa

    // Pausar
    if(global.Pausado)  { 
        global.Pausado = false;
        } else {
        global.Pausado = true;
    }

    // Crear opciones
    if(global.Pausado) {
    
        var RW = 460;
        var RH = 50;
        var RS = 70;
        var SEP = 80;
        
        var Boton = instance_create(room_width/2,room_height/2,obj_Boton_Opciones_Ingame_Reiniciar);
        Boton.index = 0;
        Boton.dx = RW-SEP;
        Boton.dy = RH + RS;
    
        var Boton = instance_create(room_width/2,room_height/2,obj_Boton_Opciones_Ingame_Reiniciar);
        Boton.index = 1;
        Boton.dx = RW;
        Boton.dy = RH + RS;
    
        var Boton = instance_create(room_width/2,room_height/2,obj_Boton_Opciones_Ingame_Reiniciar);
        Boton.index = 5;
        if(os_type == os_windows) Boton.index = 11;
        Boton.dx = RW+SEP;
        Boton.dy = RH + RS;
        
        var Boton = instance_create(room_width/2,room_height/2,obj_Boton_Opciones_Ingame_Reiniciar);
        Boton.index = 2;
        Boton.dx = RW-SEP;
        Boton.dy = RH + RS*2;
    
        var Boton = instance_create(room_width/2,room_height/2,obj_Boton_Opciones_Ingame_Reiniciar);
        Boton.index = 3;
        Boton.dx = RW;
        Boton.dy = RH + RS*2;
    
        var Boton = instance_create(room_width/2,room_height/2,obj_Boton_Opciones_Ingame_Reiniciar);
        Boton.index = 4;
        Boton.dx = RW+SEP;
        Boton.dy = RH + RS*2;
    
        var Boton = instance_create(room_width/2,room_height/2,obj_Boton_Opciones_Ingame_Reiniciar);
        Boton.index = 6;
        Boton.dx = RW;
        Boton.dy = RH + RS*3;
    
        var Boton = instance_create(room_width/2,room_height/2,obj_Boton_Opciones_Ingame_Reiniciar);
        Boton.index = 7;
        Boton.dx = RW-SEP;
        Boton.dy = RH + RS*3;
    
        var Boton = instance_create(room_width/2,room_height/2,obj_Boton_Opciones_Ingame_Reiniciar);
        Boton.index = 8;
        Boton.dx = RW+SEP;
        Boton.dy = RH + RS*3;
    
        instance_create(0, 0, obj_UI_Map);
        
    } else {
    
        with(obj_Boton_Opciones_Ingame_Reiniciar) instance_destroy();
        with(obj_UI_Map) instance_destroy();
        with(objItemViewer) instance_destroy();
        ini_open( "save.ini" );
        ini_write_real( "S", "C", global.Camara_Modo );
        ini_write_real( "S", "M", global.Control_Modo );
        ini_write_real( "S", "S", global.Control_Sonido );
        ini_write_real( "S", "AS", global.Control_Autosave );
        ini_write_real( "S", "QA", global.Quality );
        ini_close();
    
    }
    

