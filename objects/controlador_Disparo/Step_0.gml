// Ajustarse
if(os_type == os_windows) { visible = false; }
x = xstart;
y = ystart;
X = xstart; 
Y = ystart;
if(doubletap >= 0)doubletap--;

//Apuntar
if( global.Pausado ) exit;
if( !instance_exists(obj_Jugador) )exit;
if( room = room_Transicion_Jefe ) exit;
if( instance_exists(fx_Transition_In) ) exit;
for( i = 0; i < 4; i++ ) {
    if(device_mouse_check_button_pressed( i, mb_left )) and (os_type != os_windows) and (device_mouse_x_to_gui(i) > (320+0)) and (device_mouse_y_to_gui(i) > 100) {
        Device = i;
        x = device_mouse_x_to_gui(i);
        y = device_mouse_y_to_gui(i);
        X = device_mouse_x_to_gui(i);
        Y = device_mouse_y_to_gui(i);
        if(doubletap < 0) doubletap = 20; else if(obj_Jugador.bombs > 0) {
            if(global.BombTapMode == 1) {
                doubletap = -1;
				player_drop_bomb();
				/*
                obj_Jugador.bombs--;
                audio_play_sound(sndBombDrop,0,0);
                instance_create(obj_Jugador.x, obj_Jugador.y, objBomb);
				*/
            }
        }
    }
}
if(device_mouse_x_to_gui(Device) <= (320-0)) Device = -1;
if(device_mouse_y_to_gui(Device) <= (100)) Device = -1;
if(device_mouse_check_button_released(Device, mb_left)) { Device = -1; }

if( global.Control_Modo = 1 ) { X = xstart; Y = ystart; }

if(device_mouse_check_button(Device,mb_left)) {
    H = min((point_distance(X,Y,device_mouse_x_to_gui(Device),device_mouse_y_to_gui(Device))/25),2);
    A = point_direction(X,Y,device_mouse_x_to_gui(Device),device_mouse_y_to_gui(Device));
    visible = true;
} else {
    H = 0;
    A = 0;
    visible = false;
}

// Usar controlador
if(global.gamepadEnabled) {
    var i = obj_Jugador.controlledBy;
    if(gamepad_is_connected(i)){
        gamepad_set_axis_deadzone(i, 0.3);
        A = point_direction(0, 0, gamepad_axis_value(i, gp_axisrh), gamepad_axis_value(i, gp_axisrv));
        H = max(abs(gamepad_axis_value(i, gp_axisrh)), abs(gamepad_axis_value(i, gp_axisrv)))*2;
        
        if(abs(H)>0.5) Device = 99; 
        
        // Botones del controlador
        if(gamepad_button_check(i, global.GP_SHOOT_UP))    { H = 2; A = 90;  Device = 99; }
        if(gamepad_button_check(i, global.GP_SHOOT_LEFT))  { H = 2; A = 180; Device = 99; }
        if(gamepad_button_check(i, global.GP_SHOOT_RIGHT)) { H = 2; A = 0;   Device = 99; }
        if(gamepad_button_check(i, global.GP_SHOOT_DOWN))  { H = 2; A = 270; Device = 99; }
        
        // Use bomb
        if(gamepad_button_check_pressed(i, global.GP_BOMB)) {
            if(obj_Jugador.bombs > 0) {
                doubletap = -1;
				player_drop_bomb();
				/*
                obj_Jugador.bombs--;
                audio_play_sound(sndBombDrop,0,0);
                instance_create(obj_Jugador.x, obj_Jugador.y, objBomb);
				*/
            }
        }
        
    }
}

if(player_has_item(139)) A += 180;
if(A >= 360) A -= 360;



// Mover al jugador
if( H != 0 ) and ( obj_Jugador.alarm[0] < 0 ) and ( obj_Jugador.alarm[4] < 0 ) and (obj_Jugador.paralisis <= 0) {
    if( !instance_exists( fx_Transition_In ) and !instance_exists( fx_Transition_Room ) ) {
    
        // Si tiene disparo estatico lo maneja en vez de disparar
        if(obj_Jugador.Bonus_Static_Shoot == true) {
            with(obj_Jugador_Disparo_Estatico) {
                Velocidad_H = other.H *  cos(degtorad(other.A));
                Velocidad_V = other.H * -sin(degtorad(other.A));
            }
        } else {
        
            if(global.characterSelected == 10) and (instance_exists(objFleshSoul)) {
                with(objFleshSoul) {
                    Velocidad_H = other.H *  cos(degtorad(other.A));
                    Velocidad_V = other.H * -sin(degtorad(other.A));
                }
            }
        
            if( A > 45  and A < 135 ) {  // Arriba
                with(obj_Jugador) { 
                    event_perform(ev_other, ev_user0); 
                    if(player_has_item(7)) or (player_has_pet(63) and chance(10)) { event_perform( ev_other, ev_user1 ); }
                    if(player_has_item(33)) {
                        event_perform(ev_other, ev_user1);
                        event_perform(ev_other, ev_user3);
                        event_perform(ev_other, ev_user2);
                    }
                } 
            }
            
            if( A > 225 and A < 315 ) { // Abajo
                with(obj_Jugador) { 
                    event_perform( ev_other, ev_user1 );
                    if(player_has_item(7)) or (player_has_pet(63) and chance(10)) { event_perform( ev_other, ev_user0 ); }
                    if(player_has_item(33)) {
                        event_perform( ev_other, ev_user0 );
                        event_perform( ev_other, ev_user3 );
                        event_perform( ev_other, ev_user2 );
                    }
                } 
            } 
            
            if( A > 135 and A < 225 ) { // Izquierda
                with(obj_Jugador) { 
                    event_perform( ev_other, ev_user2 );
                    if(player_has_item(7)) or (player_has_pet(63) and chance(10)) { event_perform( ev_other, ev_user3 ); }
                    if(player_has_item(33)) {
                        event_perform( ev_other, ev_user1 );
                        event_perform( ev_other, ev_user3 );
                        event_perform( ev_other, ev_user0 );
                    }
                } 
            } 
            
            if( A > 315 or  A < 45 )  { // Derecha
                with(obj_Jugador) { 
                    event_perform( ev_other, ev_user3 );
                    if(player_has_item(7)) or (player_has_pet(63) and chance(10)) { event_perform( ev_other, ev_user2 ); } 
                    if(player_has_item(33)) {
                        event_perform( ev_other, ev_user1 );
                        event_perform( ev_other, ev_user0 );
                        event_perform( ev_other, ev_user2 );
                    }
                } 
            } 
        }
    }
}


           
           

