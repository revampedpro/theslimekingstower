// Draw
draw_set_color(c_white);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(fontCharacterName);
draw_text_outline_soft(x,y,text);
draw_set_font(fontCharacterDescription);
draw_text_outline_soft(x,y+20,text2);
draw_set_font(fontCharacterName);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Skip
if(mouse_check_button_pressed(mb_left)) and (step > 0) {
    switch(step) {
        case 1:  global.GP_UP           = -1; break;
        case 2:  global.GP_DOWN         = -1; break;
        case 3:  global.GP_LEFT         = -1; break;
        case 4:  global.GP_RIGHT        = -1; break;
        case 5:  global.GP_SHOOT_UP     = -1; break;
        case 7:  global.GP_SHOOT_LEFT   = -1; break;
        case 8:  global.GP_SHOOT_RIGHT  = -1; break;
        case 6:  global.GP_SHOOT_DOWN   = -1; break;
        case 9:  global.GP_PAUSE        = -1; break;
        case 10: global.GP_BOMB         = -1; break;
        case 11: global.GP_USE_ITEM     = -1; break;
        case 12: global.GP_ACTION       = -1; break;
        case 13: global.GP_ANY          = -1; break;
    }    
    step++;
    gp = -1;
    text = lang(8000+step);
    if(step == 14) {
        instance_create( 0, 0, fx_Transition_Out );
        obj_Menu_Nuevo_Back.Activado = true;
        
        ini_open("save.ini");
            ini_write_real("MCTRL", "gp_padu",       global.GP_UP);
            ini_write_real("MCTRL", "gp_padd",       global.GP_DOWN);
            ini_write_real("MCTRL", "gp_padl",       global.GP_LEFT);
            ini_write_real("MCTRL", "gp_padr",       global.GP_RIGHT);
            ini_write_real("MCTRL", "gp_face4",      global.GP_SHOOT_UP);
            ini_write_real("MCTRL", "gp_face3",      global.GP_SHOOT_LEFT);
            ini_write_real("MCTRL", "gp_face2",      global.GP_SHOOT_RIGHT);
            ini_write_real("MCTRL", "gp_face1",      global.GP_SHOOT_DOWN);
            ini_write_real("MCTRL", "gp_start",      global.GP_PAUSE);
            ini_write_real("MCTRL", "gp_shoulderr",  global.GP_BOMB);
            ini_write_real("MCTRL", "gp_shoulderrb", global.GP_USE_ITEM);
            ini_write_real("MCTRL", "gp_shoulderl",  global.GP_ACTION);
        ini_close();
        
    }
}

// Start
var gp_pressed = false;
for(i = 0; i < gamepad_get_device_count(); i++) {
    if(gamepad_is_connected(i)) {
        if(gp_any_pressed(i)) { gp_pressed = true; break; }
    }
}
if(mouse_check_button_pressed(mb_left) or (gp_pressed)) and (step == 0) {
    step = 1;
    text = lang(8000+step);
    exit;
}

// Mapping control
if(step > 0 and step < 13)  {
    gp = gp_map(0);
    for(i = 0; i < gamepad_get_device_count(); i++) {
        if(gp_map(i) != -1) {
            gp = gp_map(i);
            break;
        }
    }
    
    if(gp != -1) {
        switch(step) {
            case 1:  global.GP_UP           = gp; break;
            case 2:  global.GP_DOWN         = gp; break;
            case 3:  global.GP_LEFT         = gp; break;
            case 4:  global.GP_RIGHT        = gp; break;
            case 5:  global.GP_SHOOT_UP     = gp; break;
            case 6:  global.GP_SHOOT_DOWN   = gp; break;
            case 7:  global.GP_SHOOT_LEFT   = gp; break;
            case 8:  global.GP_SHOOT_RIGHT  = gp; break;
            case 9:  global.GP_PAUSE        = gp; break;
            case 10: global.GP_BOMB         = gp; break;
            case 11: global.GP_USE_ITEM     = gp; break;
            case 12: global.GP_ACTION       = gp; break;
            case 13: global.GP_ANY          = gp; break;
        }
        step++;
        gp = -1;
        text = lang(8000+step);
        if(step == 13) {
            instance_create( 0, 0, fx_Transition_Out );
            obj_Menu_Nuevo_Back.Activado = true;
            
            ini_open("save.ini");
                ini_write_real("MCTRL", "gp_padu",       global.GP_UP);
                ini_write_real("MCTRL", "gp_padd",       global.GP_DOWN);
                ini_write_real("MCTRL", "gp_padl",       global.GP_LEFT);
                ini_write_real("MCTRL", "gp_padr",       global.GP_RIGHT);
                ini_write_real("MCTRL", "gp_face4",      global.GP_SHOOT_UP);
                ini_write_real("MCTRL", "gp_face3",      global.GP_SHOOT_LEFT);
                ini_write_real("MCTRL", "gp_face2",      global.GP_SHOOT_RIGHT);
                ini_write_real("MCTRL", "gp_face1",      global.GP_SHOOT_DOWN);
                ini_write_real("MCTRL", "gp_start",      global.GP_PAUSE);
                ini_write_real("MCTRL", "gp_shoulderr",  global.GP_BOMB);
                ini_write_real("MCTRL", "gp_shoulderrb", global.GP_USE_ITEM);
				ini_write_real("MCTRL", "gp_shoulderl",  global.GP_ACTION);
            ini_close();
            
        }
    }
}

