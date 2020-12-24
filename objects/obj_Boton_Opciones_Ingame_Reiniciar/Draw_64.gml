/// @description  Dibujarse en la GUI
draw_sprite(sprite_index, index, x, y);

if(index == 3) {
    draw_sprite_ext(sprite_index, 12, x, y, 1, 1, 0, -1, restart_charge/100);
}

gamepad_button_pressed = false;
gamepad_button = false;
for(i = 0; i < gamepad_get_device_count(); i++) {
    if(gamepad_is_connected(i)) {
        if(gp_any_pressed(i)) {
            if(gamepad_button_check_pressed(i, global.GP_SHOOT_DOWN)) {
                gamepad_button_pressed = true;
            }
        }
        if(gp_any(i)) {
            if(gamepad_button_check_pressed(i, global.GP_SHOOT_DOWN)) {
                gamepad_button = true;
            }
        }
    }
}

// Seleccionar subtexto
var Texto = "";
var SubTexto = "";

// Continue (Gamepad)
if(global.gamepadEnabled) or (instance_exists(obj_LocalPlayer)) {
    var gp_num = gamepad_get_device_count();
    for(var i = 0; i < gp_num; i++;) {
        if gamepad_is_connected(i) {     
            if(gamepad_button_check_released(i, global.GP_PAUSE)) and (index == 0) and (global.Pausado) and (alarm[0]<0){
                global.Pausado = false;
                with(obj_Boton_Opciones_Ingame_Reiniciar) instance_destroy();
                with(obj_UI_Map) instance_destroy();
                ini_open( "save.ini" );
                ini_write_real("S", "C", global.Camara_Modo);
                ini_write_real("S", "M", global.Control_Modo);
                ini_write_real("S", "S", global.Control_Sonido);
                ini_write_real("S", "AS", global.Control_Autosave);
                ini_write_real("S", "QA", global.Quality);
                ini_close();
            }
        }
    }
}


// Usar opcion
for( d = 0; d < 4; d++ ) {
    if( (device_mouse_x_to_gui(d) > x-32) and (device_mouse_x_to_gui(d) < x+32) and (device_mouse_y_to_gui(d) > y-32) and (device_mouse_y_to_gui(d) < y+32) ) {
    
    
        // Reiniciar
        if(device_mouse_check_button(d, mb_left)) or (gamepad_button_pressed) {
            if(index = 3) {
                restart_charge++;
                if(gamepad_button_pressed) restart_charge = 120;
                if(restart_charge > 100) {
                    var FX = instance_create( 0, 0, fx_Transition_Out_Full );
                    FX.depth = depth-1;
                    Destino = 4;
                    restart_charge = 0;
                }
            }
        }
        if(device_mouse_check_button_released(d, mb_left)) restart_charge = 0;
    
        if(device_mouse_check_button_pressed(d, mb_left)) or (gamepad_button_pressed) {
    
            // Continuar
            if(index = 0) {
                global.Pausado = false;
                with(obj_Boton_Opciones_Ingame_Reiniciar) instance_destroy();
                with(obj_UI_Map) instance_destroy();
                ini_open( "save.ini" );
                ini_write_real( "S", "C", global.Camara_Modo );
                ini_write_real( "S", "M", global.Control_Modo );
                ini_write_real( "S", "S", global.Control_Sonido );
                ini_write_real( "S", "AS", global.Control_Autosave );
                ini_write_real( "S", "QA", global.Quality );
                ini_close();
            }
            
            // Quality
            if( index = 1 ) {
                global.Quality++;
                if(global.Quality = 3) global.Quality = 0;
                if(global.Quality < 2) {
                    application_surface_enable(false);
                    application_surface_draw_enable(false);
                } else {
                    application_surface_enable(false);
                    application_surface_draw_enable(false);
                }
            }
            
            // Sonido
            if(index = 2) {
                global.Control_Sonido++;
                if(global.Control_Sonido > 3) global.Control_Sonido = 0;
                switch(global.Control_Sonido) {
                    case 0: audio_master_gain(1); audio_group_set_gain(audiogroup_default, 1, 0); audio_group_set_gain(audiogroup_music, 1, 0); break;
                    case 1: audio_master_gain(1); audio_group_set_gain(audiogroup_default, 1, 0); audio_group_set_gain(audiogroup_music, 0, 0); break;
                    case 2: audio_master_gain(1); audio_group_set_gain(audiogroup_default, 0, 0); audio_group_set_gain(audiogroup_music, 1, 0); break;
                    case 3: audio_master_gain(0); break;
                }
            }
            
            // BombTapMode
            if(index = 5) {
                global.BombTapMode++;
                if( global.BombTapMode > 1 ) { 
                    global.BombTapMode = 0;
                }
                ini_open("save.ini");
                ini_write_real("S", "BTM", global.BombTapMode);
                ini_close();
            }
            
            // Salir
            if( index = 4 ) {
                game_save("temp");
                var FX = instance_create( 0, 0, fx_Transition_Out_Full );
                FX.depth = depth-1;
                Destino = 5;
            }
            
            // Items
            if( index = 6 ) {
                with(obj_Boton_Opciones_Ingame_Reiniciar) instance_destroy();
                with(obj_UI_Map) instance_destroy();
                instance_create(0, 0, objItemViewer);
                mouse_clear(mb_left);
            }
            
            // Save Me!
            if( index = 7 ) and (instance_exists(obj_Jugador)) {
                with(obj_Boton_Opciones_Ingame_Reiniciar) instance_destroy();
                with(obj_UI_Map) instance_destroy();
                obj_Jugador.x = obj_Jugador.xRStart;
                obj_Jugador.y = obj_Jugador.yRStart;
                
                if(global.Modo_Juego != "Arcade") {
                    x = obj_Jugador.xRStart;
                    y = obj_Jugador.yRStart;
                    global.Posicion_i = control_Dungeon.iri;
                    global.Posicion_j = control_Dungeon.irj;
                    random_set_seed(global.UNIQUE_MAP_SEED + control_Dungeon.Dungeon_Seed[global.Posicion_i, global.Posicion_j] );
                    obj_Jugador.visible = true;
                    room_goto(room_Inicial);
                    
                    obj_Jugador.recolocate = 1;
                    
                }
                
                obj_Jugador.HP--;
                obj_Jugador.alarm[3] = obj_Jugador.Delay_Invencibilidad;
                global.Pausado = false;
            }
            
            // Pet Visible
            if( index = 8 ) {
                ini_open("save.ini");
                if(global.PetVisible == false) {
                    global.PetVisible = true;
                    if(instance_exists(objPet)) objPet.visible = true;
                } else {
                    global.PetVisible = false;
                    if(instance_exists(objPet)) objPet.visible = false;
                }
                ini_write_real("S", "PBLE", global.PetVisible);
                ini_close();
            }
            
            // Fullscreen
            if(index = 11) {
                if(global.FULLSCREEN == false) {
                    global.FULLSCREEN = true;
                } else {
                    global.FULLSCREEN = false;
                }
                window_set_fullscreen(global.FULLSCREEN);
                ini_open("save.ini");
                ini_write_real("S", "FLS", global.FULLSCREEN);
                ini_close();
            }
            
        }
    }
}

// Continuar
if( index = 0 ) {
    Texto = lang34;
}

// Quality
if( index = 1 ) {
    Texto = lang62;
    if( global.Quality == 0 ) SubTexto = lang59;
    if( global.Quality == 1 ) SubTexto = lang60;
    if( global.Quality == 2 ) SubTexto = lang61;
}

// Sonido
if( index = 2 ) {
    Texto = lang28;
    if( global.Control_Sonido == 0 ) SubTexto = lang7021;
    if( global.Control_Sonido == 1 ) SubTexto = lang7022;
    if( global.Control_Sonido == 2 ) SubTexto = lang7029;
    if( global.Control_Sonido == 3 ) SubTexto = lang7030;
}

// Reiniciar
if( index = 3 ) {
    Texto = lang35;
    SubTexto = lang7028;
}

// Salir
if( index = 4 ) {
    Texto = lang36;
}

// Bomb Tap Mode (old autosave)
if( index = 5 ) {
    Texto = lang5010;
    if( global.BombTapMode == 0 ) SubTexto = lang5008;
    if( global.BombTapMode == 1 ) SubTexto = lang5009;
}

// Drop items
if( index = 6 ) {
    Texto = lang94;
}

// Save Me!
if( index = 7 ) {
    Texto = lang97;
}

// Pet Visible
if( index = 8 ) {
    Texto = lang98;
    if(global.PetVisible == 1) SubTexto = lang99;
    if(global.PetVisible == 0) SubTexto = lang89;
}

// Fullscreen
if( index = 11 ) {
    Texto = lang5013;
}

// Dibujar texto
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(font_Gold);
draw_set_font(fontCharacterDescription);
draw_set_alpha(control_UI.Alpha);
draw_text_outline_soft(x, y-30, Texto);
draw_set_font(font_Gold_Bigger);
draw_set_font(fontCharacterDescription8);
draw_text_outline_soft(x, y+12, SubTexto);
draw_set_alpha(1);
draw_set_valign(fa_top);



