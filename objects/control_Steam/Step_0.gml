if(global.STEAM == true) {
    if(steam_is_screenshot_requested()){
       var file = "theslimekingstower_" + string(get_timer()) + ".png";
       screen_save(file);
       steam_send_screenshot(file, window_get_width(), window_get_height());
    }
} else {
    steam_enable();
}

