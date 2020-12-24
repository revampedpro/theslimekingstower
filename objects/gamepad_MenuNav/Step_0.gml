// Navigate through menus with a gamepad
for(i = 0; i < gamepad_get_device_count(); i++) {
    if(gamepad_is_connected(i)) {
        if(gp_any_pressed(i)) { break; }
        
        // Axis Movement
        if(gamepad_axis_value(i, gp_axislh) < -0.75) {
            if(axisLeft == 1) axisLeft = 2;
            if(axisLeft == 0) axisLeft = 1;
            alarm[0] = 2;
        }
        if(gamepad_axis_value(i, gp_axislh) >  0.75) {
            if(axisRight == 1) axisRight = 2;
            if(axisRight == 0) axisRight = 1;
            alarm[0] = 2;
        }
    }
}

// Control
var pre_pos = pos;
switch(room) {
    
    case room_Character_Select:
    case room_Challenge_Select:
        if(gamepad_button_check_pressed(i, global.GP_RIGHT) or axisRight == 1) with(objCharacterSelectNext)     event_perform(ev_mouse, ev_left_release);
        if(gamepad_button_check_pressed(i, global.GP_LEFT)  or axisLeft  == 1) with(objCharacterSelectPrevious) event_perform(ev_mouse, ev_left_release);
    break;
    
    default:
        if(gamepad_button_check_pressed(i, global.GP_RIGHT) or axisRight == 1) pos++;
        if(gamepad_button_check_pressed(i, global.GP_LEFT)  or axisLeft  == 1) pos--;
    break;
    
}

// Enter
if(gamepad_button_check_pressed(i, global.GP_SHOOT_DOWN)) { with(instance_position(mouse_x,mouse_y,parent_Menu_Nuevo)) event_perform(ev_mouse, ev_left_release); }
if(gamepad_button_check_pressed(i, global.GP_SHOOT_DOWN)) { with(obj_Menu_Nuevo_CharacterSelect) event_perform(ev_mouse, ev_left_release); }
if(gamepad_button_check_pressed(i, global.GP_SHOOT_DOWN)) { with(obj_Biblioteca_Comprar) { if(distance_to_point(mouse_x,mouse_y)<1) event_perform(ev_mouse, ev_left_press); } }
if(gamepad_button_check_pressed(i, global.GP_SHOOT_DOWN)) { with(obj_Pets_Comprar) { if(distance_to_point(mouse_x,mouse_y)<1) event_perform(ev_mouse, ev_left_press); } }

// Back 
if(gamepad_button_check_pressed(i, global.GP_SHOOT_RIGHT)) { window_mouse_set(0,0); with(obj_Menu_Nuevo_Back) event_perform(ev_mouse, ev_left_release); }

if(pos == pre_pos) exit;

// Menus
switch(room) {

    case room_Title:
        pos_max = 5;
        pos_list[0] = "199,240";
        pos_list[1] = "368,185";
        pos_list[2] = "470,189";
        pos_list[3] = "572,186";
        pos_list[4] = "428,263";
        pos_list[5] = "528,264";
        
        // Free coins are only available on android
        if(os_type == os_android) {
            pos_max++;
            pos_list[4] = "368,263";
            pos_list[5] = "468,264";
            pos_list[6] = "570,260";
        }
        
    break;

    case room_Modos_Juego:
        pos_max = 8;
        pos_list[0] = "77,206";
        pos_list[1] = "174,238";
        pos_list[2] = "271,206";
        pos_list[3] = "366,236";
        pos_list[4] = "464,204";
        pos_list[5] = "560,240";
        pos_list[6] = "320,314";
        pos_list[7] = "470,113";     
		pos_list[8] = "552,113";		
    break;

    case room_Endless_Mode:
    case room_DailyRun_Mode:
        pos_max = 2;
        pos_list[0] = "466,227";
        pos_list[1] = "569,227";
        pos_list[2] = "562,120";    
    break;

    case room_Opciones:
        pos_max = 6;
        pos_list[0] = "130,222";  
        pos_list[1] = "226,222";  
        pos_list[2] = "334,222";  
        pos_list[3] = "426,222";  
        pos_list[4] = "520,222";  
        pos_list[5] = "440,85";  
        pos_list[6] = "544,110";      
    break;

    case room_Ranking:
        pos_max = 3;
        pos_list[0] = "270,60";  
        pos_list[1] = "395,60";  
        pos_list[2] = "506,60";  
        pos_list[3] = "585,60";      
    break;

    case room_GameOver:
        pos_max = 3;
        pos_list[0] = "490,70";  
        pos_list[1] = "563,70";      
    break;

    case room_Biblioteca:
    case room_Pets:
        pos_max = 18;
        pos_list[0] = "64,240";  
        pos_list[1] = "128,240";  
        pos_list[2] = "192,240";  
        pos_list[3] = "256,240";  
        pos_list[4] = "320,240";  
        pos_list[5] = "384,240";  
        pos_list[6] = "450,240";  
        pos_list[7] = "512,240";  
        pos_list[8] = "64,300";
        pos_list[9] = "128,300";
        pos_list[10] = "192,300";
        pos_list[11] = "256,300";
        pos_list[12] = "320,300";
        pos_list[13] = "384,300";
        pos_list[14] = "450,300";
        pos_list[15] = "512,300";
        pos_list[16] = "576,224";
        pos_list[17] = "576,300";
        pos_list[18] = "90,160";
    break;
    
    default:
        if(!instance_exists(objItemViewer)) {
            if(global.Pausado == true) {
                pos_max = 8;
                pos_list[0] = "190,60";  
                pos_list[1] = "230,60";  
                pos_list[2] = "270,60";  
                pos_list[3] = "190,90";  
                pos_list[4] = "230,90";  
                pos_list[5] = "270,90";  
                pos_list[6] = "190,130";  
                pos_list[7] = "230,130";  
                pos_list[8] = "270,130";  
            }
        } else {
            pos_max = 25;
            pos_list[0]  = "40,40";  
            pos_list[1]  = "70,40";  
            pos_list[2]  = "100,40";  
            pos_list[3]  = "130,40";  
            pos_list[4]  = "160,40";  
            pos_list[5]  = "190,40";  
            
            pos_list[6]  = "40,70";  
            pos_list[7]  = "70,70";  
            pos_list[8]  = "100,70";  
            pos_list[9]  = "130,70";  
            pos_list[10] = "160,70";  
            pos_list[11] = "190,70";  
            
            pos_list[12] = "40,105";  
            pos_list[13] = "70,105";  
            pos_list[14] = "100,105";  
            pos_list[15] = "130,105";  
            pos_list[16] = "160,105";  
            pos_list[17] = "190,105"; 
            
            pos_list[18] = "40,140";  
            pos_list[19] = "70,140";  
            pos_list[20] = "100,140";  
            pos_list[21] = "130,140";  
            pos_list[22] = "160,140";  
            pos_list[23] = "190,140"; 
            
            pos_list[24] = "230,110"; 
            pos_list[25] = "230,140"; 
        }
    break;

}

// Perform movement
if(pos < 0) pos = pos_max;
if(pos > pos_max) pos = 0;
string_explode(pos_list[pos],",");
var mx = real(level[0])*(window_get_width()/__view_get( e__VW.WView, 0 ));
var my = real(level[1])*(window_get_height()/__view_get( e__VW.HView, 0 ));
window_mouse_set(mx,my);



