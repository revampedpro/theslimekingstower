//Mantener alarmas en pausa
if(global.Pausado) {
    for( i = 0; i < 11; i++ ) {
        if(alarm[i]>0) alarm[i]++;
    }
}
if(HP <= 0) instance_destroy();

/// Frenar
if( global.Pausado ) exit;
hspeed *= .97;
vspeed *= .97;

// Get hit by Aura Bullets
if(aura_delay > -1) aura_delay--;
if(player_has_item(323)) and (aura_delay < 0) {
	if(distance_to_object(instance_nearest(x,y,obj_Jugador_Disparo))<24) {
		HP -= 1;
		floating_text(x,y,1,c_yellow,true);
		alarm[2] = 4;
	}
	aura_delay = 14;
}

// Dañarse por la sad mask
if(instance_exists(obj_Jugador)) {
    if(player_has_item(61)) and ( distance_to_object(obj_Jugador) < 100 ) {
        if( Sad_Hit = false ) {
            Sad_Hit = true;
            HP--;
            if(HP <= 0) instance_destroy();
            alarm[2] = 4;
        }
    }
}

// Die if outside of the room
if(!IsBoss) and (room != room_Arcade) and (room != room_Jefe_KingSlime) and (room != room_Jefe_BasementParty) and (room != room_Jefe_SkeletonKing) and (room != room_Bigger) and (room != room_Rush) {
    if(x <= __view_get( e__VW.XView, 0 ) or y <= __view_get( e__VW.YView, 0 ) or x >= __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) or y >= __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )) instance_destroy();
}

// Update enemy common vars
if(IsBoss == false) and (AI == -1) {
	AI = get_enemy(ID,0);
}