// Gamepad
for(i = 0; i < gamepad_get_device_count(); i++) {
    if(gamepad_is_connected(i)) {
        if(gp_any_pressed(i)) {
            event_perform(ev_mouse, ev_global_left_release);
            break;
        }
    }
}

