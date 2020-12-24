// Ajustarse
if(os_type == os_windows) { visible = false; }
x = xstart;
y = ystart;
X = xstart; 
Y = ystart;

//Apuntar
if( global.Pausado ) exit;
if( !instance_exists(obj_Jugador) )exit;
if( room = room_Transicion_Jefe ) exit;
if( instance_exists(fx_Transition_In) ) exit;
if( instance_exists( fx_Game_End ) ) exit;
for( i = 0; i < 4; i++ ) {
    if(device_mouse_check_button_pressed( i, mb_left )) and (os_type != os_windows) and (device_mouse_x_to_gui(i) < (320-0)) and (device_mouse_y_to_gui(i) > 100) {
        Device = i;
        x = device_mouse_x_to_gui(i);
        y = device_mouse_y_to_gui(i);
        X = device_mouse_x_to_gui(i);
        Y = device_mouse_y_to_gui(i);
    }
}

if( global.Control_Modo = 1 ) { X = xstart; Y = ystart; }

if(device_mouse_x_to_gui(Device) >= (320-0)) Device = -1;
if(device_mouse_y_to_gui(Device) <= (100)) Device = -1;
if(device_mouse_check_button_released(Device, mb_left)) { Device = -1; }

if(device_mouse_check_button(Device,mb_left)) {
    H = min((point_distance(X,Y,device_mouse_x_to_gui(Device),device_mouse_y_to_gui(Device))/25),2);
    A = point_direction(X,Y,device_mouse_x_to_gui(Device),device_mouse_y_to_gui(Device));
    visible = true;
} else {
    H = 0;
    A = 0;
    visible = false;
}

if(global.gamepadEnabled) {
    var i = obj_Jugador.controlledBy;
    if(gamepad_is_connected(i)) {
        gamepad_set_axis_deadzone(i, 0.3);
        A = point_direction(0, 0, gamepad_axis_value(i, gp_axislh), gamepad_axis_value(i, gp_axislv));
        H = max(abs(gamepad_axis_value(i, gp_axislh)), abs(gamepad_axis_value(i, gp_axislv)))*2;       
        Device = 99; 
        
        if(gamepad_button_check_released(i, global.GP_PAUSE)) {
            with(control_UI) {
                event_perform(ev_other, ev_user0);
            }
        }
        
        // Botones del controlador
        if(gamepad_button_check(i, global.GP_UP))    { H = 2; A = 90;  Device = 99; }
        if(gamepad_button_check(i, global.GP_LEFT))  { H = 2; A = 180; Device = 99; }
        if(gamepad_button_check(i, global.GP_RIGHT)) { H = 2; A = 0;   Device = 99; }
        if(gamepad_button_check(i, global.GP_DOWN))  { H = 2; A = 270; Device = 99; }
        
    }
}


// Mover al jugador
if(player_has_item(139)) A += 180;
obj_Jugador.Velocidad_H += + (cos(degtorad(A)) * H / 1 * obj_Jugador.Aceleracion_H);
obj_Jugador.Velocidad_V += - (sin(degtorad(A)) * H / 1 * obj_Jugador.Aceleracion_V);

