// Vars
local_player_spawn = 0;

// Connected
alarm[0] = 300;
devices_connected = 0;
for(i = 0; i < gamepad_get_device_count(); i++) {
    if(gamepad_is_connected(i)) devices_connected++;
}

