// Activate GamePad if any button pressed
if(!instance_exists(obj_Jugador)) exit;
for(i = 0; i < gamepad_get_device_count(); i++) {
    if(gp_any(i)) {
    
        if(devices_connected == 1 and !instance_exists(obj_LocalPlayer)) or (devices_connected > 1) {
            global.gamepadEnabled = true;
            if(obj_Jugador.controlledBy == -1) {
                obj_Jugador.controlledBy = i;
                gp_assign(i);
            }
        }
        
        break;
    }
}

// Deactivate Gamepad
if(mouse_check_button(mb_left)) {
    global.gamepadEnabled = false;
}

// Create local player
if(gamepad_button_check(i, global.GP_PAUSE)) and (!gp_check_assigned(i) or (devices_connected == 1 and !instance_exists(obj_LocalPlayer))) {
    local_player_spawn += 2;
    if(local_player_spawn > 360) {
        if(devices_connected == 1) obj_Jugador.controlledBy = -1;
        local_player_spawn = 0;
        audio_play_sound(sndChestAppears, 0, 0);
        var localPlayer = instance_create(obj_Jugador.x, obj_Jugador.y, obj_LocalPlayer);
        localPlayer.controlledBy = i;
        gp_assign(i);
        var fx = create_effect(obj_Jugador.x, obj_Jugador.y, sprSmokeEnemyAppear, 0.5);
        fx.depth = -1000;
        fx = create_effect(obj_Jugador.x, obj_Jugador.y, sprFxActionMuzzy, 0.5);
        fx.depth = -1000;
        create_map_text(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2, lang(7600), "");
    }
} else {
    local_player_spawn--;
}
local_player_spawn = max(0, local_player_spawn);

