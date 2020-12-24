//track_object_type(0,obj_Seguido_Por_Camara,minsize)
image_index = global.Camara_Modo;


// Nueva camara

// Seguir al jugador
/* no */

// Control de la camara
if(instance_exists(obj_Jugador)) {

    //view_wview[0] = 480;
    //view_hview[0] = 270;
	
	limit_camera = false;
	camera_x_to = camera_x_default;
	camera_y_to = camera_y_default;
	
	/*
	if((room == room_Jefe_KingSlime) or (room == room_Jefe_BasementParty) or (room == room_Jefe_SkeletonKing)) {
	    __view_set(e__VW.WView,0,480);
	    __view_set(e__VW.HView,0,270);
		camera_x_to = 380;
		camera_y_to = 225;
		limit_camera = true;
	}
	*/
	
	// Smooth camera
	camera_x = tween_to(camera_x,camera_x_to,6);
	camera_y = tween_to(camera_y,camera_y_to,6);
	
	// Set view
    __view_set(e__VW.WView,0,camera_x);
    __view_set(e__VW.HView,0,camera_y);

    if(abs(Shake_X) > 0) Shake_X *= choose(1, -1);
    if(abs(Shake_Y) > 0) Shake_Y *= choose(1, -1);
    Shake_X = tween_to(Shake_X, 0, 10);
    Shake_Y = tween_to(Shake_Y, 0, 10);
	
	// Point ahead of the player
	if(!instance_exists(fxTransition2)) and (!instance_exists(fxTransition3)) {
		switch(obj_Jugador.image_Direction) {
			case 1: px = tween_to(px,16,20);  py = tween_to(py,0,15); break;
			case 2: px = tween_to(px,-16,20); py = tween_to(py,0,15); break;
			case 3: py = tween_to(py,-16,20); px = tween_to(px,0,15); break;
			case 4: py = tween_to(py,16,20);  px = tween_to(px,0,15); break;
		}
	}
    
    // Seguir al jugador si esta en la sala del slimeking o en modo arcade
    if(room == room_Jefe_KingSlime) or room == room_BossRush or (room == room_Jefe_BasementParty) or (room = room_Arcade) or (room = room_Bigger) or (room = room_Rush) or (room_width > 640) or (room_height > 360) {
        __view_set( e__VW.XView, 0, tween_to(__view_get( e__VW.XView, 0 ), obj_Jugador.x + px - (__view_get( e__VW.WView, 0 )/2), 5) + Shake_X );
        __view_set( e__VW.YView, 0, tween_to(__view_get( e__VW.YView, 0 ), obj_Jugador.y + py - (__view_get( e__VW.HView, 0 )/2), 5) + Shake_Y );
    } else {
        //view_xview[0] = 75 + Shake_X;
        //view_yview[0] = 32 + Shake_Y;
        __view_set( e__VW.XView, 0, 152 + Shake_X );
        __view_set( e__VW.YView, 0, 78 + Shake_Y );
    }
	
	// Limit room bigger
	if(room == room_Bigger) or room == room_BossRush or (room == room_Jefe_KingSlime) or (room == room_Jefe_BasementParty) or (room = room_Rush) or (room = room_Arcade) {
		__view_set(	e__VW.XView,0,clamp(__view_get(e__VW.XView, 0),128,496 - __view_get( e__VW.WView, 0 )));
		__view_set(	e__VW.YView,0,clamp(__view_get(e__VW.YView, 0),54, 282 - __view_get( e__VW.HView, 0 )));
	}
    
    if(room == room_Transicion_Jefe) {
        __view_set( e__VW.WView, 0, 480 );
        __view_set( e__VW.HView, 0, 270 );
        __view_set( e__VW.XView, 0, 75 );
        __view_set( e__VW.YView, 0, 32 );
    }
    
}

/* */
/*  */
