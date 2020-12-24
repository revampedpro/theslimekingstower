action_inherited();
///Move
if( global.Pausado ) exit;
if(instance_exists(fxTransition2))exit;
if(room != room_Title and room != room_Biblioteca and room != room_GameOver and room != room_Modos_Juego and room != room_Opciones and room != room_Ranking) { Objetivo = obj_Jugador; }
if(network_is_online()) and (Objetivo == obj_Jugador) and (distance_to_object(obj_Jugador_Networking)<distance_to_object(obj_Jugador)) Objetivo = obj_Jugador_Networking;
if(instance_exists(obj_Dummy)) Objetivo = obj_Dummy;
if(alarm[11] > 0) { vx = 0; vy = 0; exit; }

// States
var moving = false;
var attacking = false;

// Make it visible
if(visible == false) {
    visible = true;
    if(instance_exists(obj_Jugador)) {
        var fx = create_effect(x,y,sprEnemyDeath,0.4);
        fx.depth = depth-60;
        var fx = create_effect(x,y,sprSmokeEnemyAppear,0.4);
        fx.depth = depth-60;
        audio_stop_sound(sndEnemySpawn);
        audio_play_sound(sndEnemySpawn,0,0);
    }
}

// Cambiar objetivo si esta en el emnu
if(room == room_Title or room == room_Modos_Juego or room == room_GameOver or room == room_Opciones or room == room_Ranking or room == room_Biblioteca
 or room == room_Pets or room == room_DailyRun_Mode or room == room_Endless_Mode) {
    if(distance_to_object(Objetivo)<10 or !instance_exists(Objetivo)) {
        Objetivo = instance_find(obj_Menu_Nuevo_Fake_Objetivo, irandom(instance_number(obj_Menu_Nuevo_Fake_Objetivo)));
    }
}


// Follow target
if(instance_exists(Objetivo)) {
	if(distance_to_object(Objetivo) < 72) {
	    if(move_x == 0 and move_y == 0) and (abs(hspeed) < 2) and (abs(vspeed) < 2) {
	        mp_potential_step(Objetivo.x, Objetivo.y, Velocidad/(1+(2*alarm[7]<40)), false);
			moving = true;
			attacking = true;
			if(alarm[7]<0) alarm[7] = 25;
	    } else {
	        speed = 0;
			moving = false;
			attacking = false;
	    }
	} else {
		if(instance_exists(spawner)) and (alarm[8] < 0) {
		    if(abs(hspeed) < 2) and (abs(vspeed) < 2) {
		        mp_potential_step(spawner.x+12, spawner.y+12, Velocidad, false);
				moving = true;
				if(distance_to_object(spawner)<1) {
					speed = 0;
					moving = false;
					attacking = false;
					if(alarm[8] < 0) alarm[8] = 60 + random(200);
				}
		    } else {
		        speed = 0;
				moving = false;
				attacking = false;
		    }
		}
	}
}


/// Efecto wiggle del sprite
var k = 0.07;
xscale = approach(xscale, 1, k);
yscale = approach(yscale, 1, k);


///Set sprite
if( global.Pausado ) exit;
ax =  (cos(degtorad(direction)));
ay = -(sin(degtorad(direction)));

// Moving
image_speed = 0.2;
if(moving) {
	if(abs(ax) > abs(ay)) {
		if(ax > 0) {
		    sprite_index = spr_Corriendo_Derecha;
			if(attacking) and (alarm[7]<40) {
				image_speed = 0.12;
				sprite_index = spr_Disparando_Caminando_Derecha;
			}
			dir = 0;
		} else {
			image_speed = 0.12;
		    sprite_index = spr_Corriendo_Izquierda;
			if(attacking) and (alarm[7]<40) {
				image_speed = 0.12;
				sprite_index = spr_Disparando_Caminando_Izquierda;
			}
			dir = 2;
		}
	} else {
		if(ay > 0) {
		    sprite_index = spr_Corriendo_Abajo;
			if(attacking) and (alarm[7]<40) {
				image_speed = 0.12;
				sprite_index = spr_Disparando_Caminando_Abajo;
			}
			dir = 3;
		} else {
		    sprite_index = spr_Corriendo_Arriba;
			if(attacking) and (alarm[7]<40) {
				image_speed = 0.12;
				sprite_index = spr_Disparando_Caminando_Arriba;
			}
			dir = 1;
		}
	}
} else {

	if(attacking == true) {
	
		// Shooting
		image_speed = 0.12;
		switch(dir) {
			case 0: sprite_index = spr_Disparando_Derecha;
			case 1: sprite_index = spr_Disparando_Arriba;
			case 2: sprite_index = spr_Disparando_Izquierda;
			case 3: sprite_index = spr_Disparando_Abajo;	
		}
	
	} else {

		// Idle
		switch(dir) {
			case 0: sprite_index = spr_Parado_Derecha;
			case 1: sprite_index = spr_Parado_Arriba;
			case 2: sprite_index = spr_Parado_Izquierda;
			case 3: sprite_index = spr_Parado_Abajo;	
		}
	
	}
	
}


/* */
/*  */
