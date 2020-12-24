// Debug text
if(global.DEBUGGER == false) exit;
/*
draw_set_font(fontUnlock);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_text(640/2, 700/2, "Pre-Alpha Build: " + global.DEBUG_VERSION);
draw_text(640/2, 700/2 - 20, "room: " + string(actual_map_id));
draw_set_halign(fa_left);
draw_set_font(fontCharacterDescription8);
var color = c_orange;
    if(min_fps < 60) {
        color = c_red;
    }
    if(min_fps > 120) color = c_lime;
draw_text_shadow_color(20,80+220,"fps_min: "+string(min_fps),2,color);
var color = c_orange;
    if(max_fps < 120) color = c_red;
    if(max_fps > 240) color = c_lime;
draw_text_shadow_color(20,80+230,"fps_max: "+string(max_fps),2,c_lime);
draw_text_shadow_color(20,80+240,"fps_min_absolute: "+string(min_absolute_fps),2,c_white);
draw_text_shadow_color(20,80+250,"frames_under_60: "+string(floor(frames_under_60/frames*100))+"%",2,c_white);
draw_text_shadow_color(20,80+260,"instances: "+string(instance_number(all)),2,c_orange);
draw_text_shadow_color(20,80+270,"app_surface: "+string(application_surface_is_enabled()),2,c_teal);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
show_debug_overlay(true)
if(alarm[0] < 0) {
    min_fps = 999999;
    max_fps = -999999;
    alarm[0] = 60;
}
if(max_fps < fps_real) max_fps = fps_real;
if(min_fps > fps_real and fps_real > 1) {
    min_fps = fps_real;
    //if(fps_real < 230) show_message_async("hiccup");
}
if(min_absolute_fps > fps_real and fps_real > 1) {
    min_absolute_fps = fps_real;
}
frames++;
if(fps_real<60) frames_under_60++;

/* */
/*  */
