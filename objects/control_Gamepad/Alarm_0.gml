// Connected
alarm[0] = 300;
devices_connected = 0;
for(i = 0; i < gamepad_get_device_count(); i++) {
    if(gamepad_is_connected(i)) devices_connected++;

    // Unassign gamepads
    if(!gamepad_is_connected(i)) and (instance_exists(obj_Jugador))  {
    
        if(obj_Jugador.controlledBy == i) {
            global.controllerID[obj_Jugador.controlledBy] = false;
            obj_Jugador.controlledBy = -1;
        }
        
        if(instance_exists(obj_LocalPlayer)) {
            for(n = 0; n < instance_number(obj_LocalPlayer); n++) {
                p = instance_find(obj_LocalPlayer,n);
                if(p.controlledBy == i) {
                    global.controllerID[p.controlledBy] = false;
                    p.controlledBy = -1;
                }
            }
        }
        
    }
    
}

