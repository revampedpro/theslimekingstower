// Physics
if(global.Pausado) exit;
if(!instance_exists(obj_Jugador)) exit;

// Change visibility
visible = obj_Jugador.visible;

if(room == room_Transicion_Jefe) exit;
if(instance_exists(fx_Transition_In)) exit;

// If no controlled by anyone destroy
if(controlledBy == -1) { instance_destroy(); exit; }

// Deactivate gamepad for player <1>
//global.gamepadEnabled = false;

// Freeze
if(paralisis > 0) { 
    paralisis--; 
    if(player_has_pet(60)) paralisis--;
    if(paralisis == 0) alarm[3] = 90;
    exit; 
}

// Change depth
depth = -(y+8);

// Get gamepad input
var i = controlledBy;
if(gamepad_is_connected(i)) {

    // Despawn
    if(gamepad_button_check(i, global.GP_PAUSE)) {
        despawn++;
        if(despawn > 240) {
            global.controllerID[controlledBy] = false;
            controlledBy = -1;
        }
    } else {
        despawn = 0;
    }

    gamepad_set_axis_deadzone(i, 0.3);
    
    // Left axis
    A = point_direction(0, 0, gamepad_axis_value(i, gp_axislh), gamepad_axis_value(i, gp_axislv));
    H = max(abs(gamepad_axis_value(i, gp_axislh)), abs(gamepad_axis_value(i, gp_axislv)))*2;       
    
    // Right axis
    A2 = point_direction(0, 0, gamepad_axis_value(i, gp_axisrh), gamepad_axis_value(i, gp_axisrv));
    H2 = max(abs(gamepad_axis_value(i, gp_axisrh)), abs(gamepad_axis_value(i, gp_axisrv)))*2;
    
    Device = 99; 
    
    // Botones del controlador
    if(gamepad_button_check(i, global.GP_UP))    { H = 2; A = 90;  Device = 99; }
    if(gamepad_button_check(i, global.GP_LEFT))  { H = 2; A = 180; Device = 99; }
    if(gamepad_button_check(i, global.GP_RIGHT)) { H = 2; A = 0;   Device = 99; }
    if(gamepad_button_check(i, global.GP_DOWN))  { H = 2; A = 270; Device = 99; }
    
    // Botones del controlador
    if(gamepad_button_check(i, global.GP_SHOOT_UP))    { H2 = 2; A2 = 90;  Device = 99; }
    if(gamepad_button_check(i, global.GP_SHOOT_LEFT))  { H2 = 2; A2 = 180; Device = 99; }
    if(gamepad_button_check(i, global.GP_SHOOT_RIGHT)) { H2 = 2; A2 = 0;   Device = 99; }
    if(gamepad_button_check(i, global.GP_SHOOT_DOWN))  { H2 = 2; A2 = 270; Device = 99; }
    
}
        
// Pause game
/*
if(gamepad_button_check_pressed(i, global.GP_PAUSE)) {
    with(control_UI) {
        event_perform(ev_other, ev_user0);
    }
}
*/

// Use bomb
if(gamepad_button_check_pressed(i, global.GP_BOMB)) {
    if(obj_Jugador.bombs > 0) {
        doubletap = -1;
        obj_Jugador.bombs--;
        audio_play_sound(sndBombDrop,0,0);
        instance_create(x, y, objBomb);
    }
}

// Movement
var player_has_drunken_fury = player_has_item(139);
if(player_has_drunken_fury) {
	A += 180;
	A2 += 180;
}
Velocidad_H += + (cos(degtorad(A)) * H / 1 * Aceleracion_H);
Velocidad_V += - (sin(degtorad(A)) * H / 1 * Aceleracion_V);

// Clamp
var player_has_explorer_belt = player_has_item(96);
Velocidad_H = clamp(Velocidad_H, -Velocidad_H_Max * (1+((!instance_exists(parent_Enemigo))*.5*player_has_explorer_belt)), Velocidad_H_Max * (1+((!instance_exists(parent_Enemigo))*.5*player_has_explorer_belt)));
Velocidad_V = clamp(Velocidad_V, -Velocidad_V_Max * (1+((!instance_exists(parent_Enemigo))*.5*player_has_explorer_belt)), Velocidad_V_Max * (1+((!instance_exists(parent_Enemigo))*.5*player_has_explorer_belt)));


// Conveyor Belt
/*
if(instance_exists(obj_ConveyorBelt)) {
	if(place_meeting(x,y,obj_ConveyorBelt)) {
		switch(other.image_angle) {
			case 0: Velocidad_H += 0.25; break;
			case 1: Velocidad_V -= 0.25; break;
			case 2: Velocidad_H -= 0.25; break;
			case 3: Velocidad_V += 0.25; break;
		}
	}
}
*/

// Aplicar velocidades
with(obj_Void)                       solid = false;
with(obj_Bloqueador)                 solid = false;
with(obj_Rocas)                      solid = false;
with(obj_Skeletons)                  solid = false;
with(obj_Vasija)                     solid = false;
with(obj_Antorcha)                   solid = false;
with(obj_Bloqueador_Activado_Rojo)   solid = false;
with(obj_Bloqueador_Activado_Azul)   solid = false;
with(objSkullFlame)                  solid = false;
with(obj_Bloqueador_Laser)           solid = false;
with(obj_Agua)                       solid = false;
var Frenar_H = false;
var Frenar_V = false;
if(place_free(x + Velocidad_H + sign(Velocidad_H)*0, y)) { x += Velocidad_H } else Frenar_H = true;
if(place_free(x, y + Velocidad_V + sign(Velocidad_V)*0)) { y += Velocidad_V } else Frenar_V = true;
with(obj_Void)                       solid = true;
with(obj_Bloqueador)                 solid = true;
with(obj_Rocas)                      solid = true;
with(obj_Skeletons)                  solid = true;
with(obj_Vasija)                     solid = true;
with(obj_Antorcha)                   solid = true;
with(obj_Agua)                       solid = true;
with(obj_Bloqueador_Activado_Rojo)   solid = true;
with(obj_Bloqueador_Activado_Azul)   solid = true;
with(objSkullFlame)                  solid = true;
with(obj_Bloqueador_Laser)           solid = true;

// Frenar
if(Frenar_H) Velocidad_H = 0;
if(Frenar_V) Velocidad_V = 0;

// Fuerza de rozamiento
Velocidad_H *= Fuerza_Rozamiento;
Velocidad_V *= Fuerza_Rozamiento;

// Sprites
if(abs(Velocidad_H) > abs(Velocidad_V)) {
    if(Velocidad_H > 0) { sprite_index = spr_Parado_Derecha;   image_Direction = 1; }
    if(Velocidad_H < 0) { sprite_index = spr_Parado_Izquierda; image_Direction = 2; }
}
if(abs(Velocidad_V) >= abs(Velocidad_H)) {
    if(Velocidad_V < 0) { sprite_index = spr_Parado_Arriba; image_Direction = 3; }
    if(Velocidad_V > 0) { sprite_index = spr_Parado_Abajo;  image_Direction = 4; }
}

// Ajustar image_Direction segun tecla de disparo
if(gamepad_button_check(i, global.GP_SHOOT_UP))    image_Direction = 3;
if(gamepad_button_check(i, global.GP_SHOOT_LEFT))  image_Direction = 2;
if(gamepad_button_check(i, global.GP_SHOOT_RIGHT)) image_Direction = 1;
if(gamepad_button_check(i, global.GP_SHOOT_DOWN))  image_Direction = 4;

// Use item (gamePad)
if(gamepad_button_check_pressed(i, global.GP_USE_ITEM)) {
    event_perform(ev_keypress, vk_space);
}

// Shooting
if(H2 != 0) and (alarm[0] < 0) and (alarm[4] < 0) {
    if(!instance_exists(fx_Transition_In) and !instance_exists(fx_Transition_Room)) {
        if(A2 > 45  and A2 < 135) {  // Arriba
            { 
                event_perform(ev_other, ev_user0); 
                if(player_has_item(7)) or (player_has_pet(63) and chance(10)) { event_perform(ev_other, ev_user1); }
                if(player_has_item(33)) {
                    event_perform(ev_other, ev_user1);
                    event_perform(ev_other, ev_user3);
                    event_perform(ev_other, ev_user2);
                }
            } 
        }
        
        if(A2 > 225 and A2 < 315) { // Abajo
            { 
                event_perform( ev_other, ev_user1 );
                if(player_has_item(7)) or (player_has_pet(63) and chance(10)) { event_perform( ev_other, ev_user0 ); }
                if(player_has_item(33)) {
                    event_perform(ev_other, ev_user0);
                    event_perform(ev_other, ev_user3);
                    event_perform(ev_other, ev_user2);
                }
            } 
        } 
        
        if(A2 > 135 and A2 < 225) { // Izquierda
            { 
                event_perform( ev_other, ev_user2 );
                if(player_has_item(7)) or (player_has_pet(63) and chance(10)) { event_perform( ev_other, ev_user3 ); }
                if(player_has_item(33)) {
                    event_perform(ev_other, ev_user1);
                    event_perform(ev_other, ev_user3);
                    event_perform(ev_other, ev_user0);
                }
            } 
        } 
        
        if(A2 > 315 or  A2 < 45)  { // Derecha
            { 
                event_perform( ev_other, ev_user3 );
                if(player_has_item(7)) or (player_has_pet(63) and chance(10)) { event_perform( ev_other, ev_user2 ); } 
                if(player_has_item(33)) {
                    event_perform(ev_other, ev_user1);
                    event_perform(ev_other, ev_user0);
                    event_perform(ev_other, ev_user2);
                }
            } 
        } 
    }
}

// Sprite handler
if(alarm[4] < 0) {
    if(abs(Velocidad_H) > abs(Velocidad_V)) {
        if(Velocidad_H > 0) { sprite_index = spr_Parado_Derecha;   image_Direction = 1; }
        if(Velocidad_H < 0) { sprite_index = spr_Parado_Izquierda; image_Direction = 2; }
    }
    
    if(abs(Velocidad_V) >= abs(Velocidad_H)) {
        if(Velocidad_V < 0) { sprite_index = spr_Parado_Arriba; image_Direction = 3; }
        if(Velocidad_V > 0) { sprite_index = spr_Parado_Abajo;  image_Direction = 4; }
    }
    
    if(gamepad_button_check(i, global.GP_SHOOT_UP))    and (bulletShootAnimation == true) { sprite_index = spr_Disparando_Arriba; image_Direction = 3; }
    if(gamepad_button_check(i, global.GP_SHOOT_LEFT))  and (bulletShootAnimation == true) { sprite_index = spr_Disparando_Izquierda; image_Direction = 2; }
    if(gamepad_button_check(i, global.GP_SHOOT_RIGHT)) and (bulletShootAnimation == true) { sprite_index = spr_Disparando_Derecha; image_Direction = 1; }
    if(gamepad_button_check(i, global.GP_SHOOT_DOWN))  and (bulletShootAnimation == true) { sprite_index = spr_Disparando_Abajo; image_Direction = 4; }
    if(H2 != 0) {
        if(A2 > 315 or  A2 < 45)  and (bulletShootAnimation == true) { sprite_index = spr_Disparando_Derecha; image_Direction = 1; }
        if(A2 > 135 and A2 < 225) and (bulletShootAnimation == true) { sprite_index = spr_Disparando_Izquierda; image_Direction = 2; }
        if(A2 > 225 and A2 < 315) and (bulletShootAnimation == true) { sprite_index = spr_Disparando_Abajo; image_Direction = 4; }
        if(A2 > 45  and A2 < 135) and (bulletShootAnimation == true) { sprite_index = spr_Disparando_Arriba; image_Direction = 3; }
    }
}

/* */
/*  */
