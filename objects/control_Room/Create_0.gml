/// @description  Cargar la room
    
// Cargar semilla
random_set_seed(global.UNIQUE_MAP_SEED + control_Dungeon.Dungeon_Seed[global.Posicion_i, global.Posicion_j]);

// Create floorDetail controller
if(!instance_exists(control_floorDetails)) instance_create(0,0,control_floorDetails);

// Get map type
if(global.Posicion_i > 0) l = (control_Dungeon.Dungeon[global.Posicion_i-1,global.Posicion_j]!=0); else l = 0;
if(global.Posicion_i < control_Dungeon.Dungeon_Ancho-1) r = (control_Dungeon.Dungeon[global.Posicion_i+1,global.Posicion_j]!=0); else r = 0;
if(global.Posicion_j > 0) u = (control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j-1]!=0); else u = 0;
if(global.Posicion_j < control_Dungeon.Dungeon_Alto-1) d = (control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j+1]!=0); else d = 0;
if(u == 1 and d == 0 and l == 0 and r == 0) type = 1;
if(u == 0 and d == 0 and l == 0 and r == 1) type = 2;
if(u == 0 and d == 1 and l == 0 and r == 0) type = 3;
if(u == 0 and d == 0 and l == 1 and r == 0) type = 4;
if(u == 1 and d == 0 and l == 0 and r == 1) type = 5;
if(u == 0 and d == 1 and l == 0 and r == 1) type = 6;
if(u == 0 and d == 1 and l == 1 and r == 0) type = 7;
if(u == 1 and d == 0 and l == 1 and r == 0) type = 8;
if(u == 0 and d == 0 and l == 1 and r == 1) type = 9;
if(u == 1 and d == 1 and l == 0 and r == 0) type = 10;
if(u == 1 and d == 1 and l == 1 and r == 1) type = 11;
if(u == 1 and d == 0 and l == 1 and r == 1) type = 12;
if(u == 1 and d == 1 and l == 0 and r == 1) type = 13;
if(u == 0 and d == 1 and l == 1 and r == 1) type = 14;
if(u == 1 and d == 1 and l == 1 and r == 0) type = 15;
if(u == 0 and d == 0 and l == 0 and r == 0) type = 16;

if(!ds_exists(global.Room_Type[type],		 ds_type_list)) init_room_layouts();
if(!ds_exists(global.Room_Type_Bigger[type], ds_type_list)) init_room_layouts();

ds_list_sort(global.Room_Type[type], true);
ds_list_sort(global.Room_Type_Bigger[type], true);
ds_list_shuffle(global.Room_Type[type]);
ds_list_shuffle(global.Room_Type_Bigger[type]);

// Preparar la sala
if(global.DEBUG_MODE = true and global.DEBUG_MAP != -1) {
    Room_ID = global.DEBUG_MAP;
    do_room_layout(Room_ID);
} else {
    if(room == room_Normal) {
        Room_ID = ds_list_find_value(global.Room_Type[type],0); 
        if(chance(33)) Room_ID = choose(150,152,161,149,169,151,153,171,154,164,175);
        if(global.Mapa_Tipo == 12) { type = 11; Room_ID = 175; } // Portal rooms
        if(control_Dungeon.Dungeon[global.Posicion_i, global.Posicion_j] == 21) { type = 11; Room_ID = 175; } // Secret Rooms
        do_room_layout(Room_ID);
        if(instance_exists(control_Debugger)) control_Debugger.actual_map_id = Room_ID;
    } else if(room == room_Bigger) {
        Room_ID = ds_list_find_value(global.Room_Type_Bigger[type],0); 
        //if(chance(33)) Room_ID = choose(176); // Plain rooms
        if(global.Mapa_Tipo == 12) { type = 11; Room_ID = 176; } // Portal rooms -> plain room
        if(control_Dungeon.Dungeon[global.Posicion_i, global.Posicion_j] == 21) { type = 11; Room_ID = 176; } // Secret Rooms -> plain room
        do_room_layout(Room_ID);
        if(instance_exists(control_Debugger)) control_Debugger.actual_map_id = Room_ID;
	}
}

// Cargar enemigos
alarm[0] = 1;

// Si es la sala del jefe, y aun no esta muerto crearlo
if(control_Dungeon.Dungeon[global.Posicion_i, global.Posicion_j] == 3 and control_Dungeon.Dungeon_Boss != -1) {

        // Boss normales
        if(control_Dungeon.Dungeon_Boss < 100) and (control_Dungeon.Dungeon_Boss != 98) and (global.Mapa_Tipo != 14) {
            instance_create(room_width/2, room_height/2, get_boss(control_Dungeon.Dungeon_Boss,0));
        }
        
        // Basement Party
        if(control_Dungeon.Dungeon_Boss == 100) and (global.Mapa_Tipo != 14) {
            control_Dungeon.Dungeon_Boss = 12;
            instance_create(room_width/2, room_height/2, get_boss(control_Dungeon.Dungeon_Boss,0));
            control_Dungeon.Dungeon_Boss = 99;
            instance_create(room_width/2, room_height/2, get_boss(control_Dungeon.Dungeon_Boss,0));
        }
        
        // Final Slimeking
        if(control_Dungeon.Dungeon_Boss == 98) and (global.Mapa_Tipo != 14) {
            control_Dungeon.Dungeon_Boss = 98;
            instance_create(room_width/2, room_height/2, get_boss(control_Dungeon.Dungeon_Boss,0));
        }
        
        // Dark Slimeking
        if(control_Dungeon.Dungeon_Boss == 101) and (global.Mapa_Tipo != 14) {
            control_Dungeon.Dungeon_Boss = 101;
            instance_create(room_width/2, room_height/2, get_boss(control_Dungeon.Dungeon_Boss,0));
        }
        
        // The Skeleton King
        if(control_Dungeon.Dungeon_Boss == 102) and (global.Mapa_Tipo != 14) {
            control_Dungeon.Dungeon_Boss = 102;
            instance_create(room_width/2, room_height/2, get_boss(control_Dungeon.Dungeon_Boss,0));
        }
        
        // Master Mimic
        if(control_Dungeon.Dungeon_Boss == 104) and (global.Mapa_Tipo != 14) {
            control_Dungeon.Dungeon_Boss = 104;
            instance_create(room_width/2, room_height/2, get_boss(control_Dungeon.Dungeon_Boss,0));
        }
		
}
		
// Inside Mimic load the textbox
if(control_Dungeon.Dungeon[global.Posicion_i, global.Posicion_j] == 3) and (global.Mapa_Tipo == 14) {
	if(instance_exists(obj_Jugador)) and (global.Jugador_Monedas >= 99) {
		var textbox = create_textbox((room_width/2)-4,(room_height/2)-8,lang(6509));	
	} else {
		var textbox = create_textbox((room_width/2)-4,(room_height/2)-8,lang(6508));	
	}
	textbox.depth = -1000;
	with(obj_Escaleras)    { x = 999; y = 999; }
	
	// Close doors
	with(obj_Puerta) {
		if(image_index != 3) {
			audio_play_sound(sprSpikeBlockHit, 0, 0);
			image_index = 1;
		}
	}
	
}

// Cargar items guardados
for(ai = 0; ai < global.Dungeon_Room_Items_Cantidad; ai++) {

    // Comprobar que esta en la misma habitacion
    if(global.Dungeon_Room_Items_i[ai] == global.Posicion_i and global.Dungeon_Room_Items_j[ai] == global.Posicion_j and global.Dungeon_Room_Items_ID[ai] > -1) {

        // Si es una vasija en lugar de crearla destruye la que haya en su lugar
        if(global.Dungeon_Room_Items_ID[ai] == obj_Vasija) {
            with(obj_Vasija) {
                if(x-12 == global.Dungeon_Room_Items_x[other.ai] and y-12 == global.Dungeon_Room_Items_y[other.ai]) instance_destroy();
            }
        } else
        
        // Si es unos huesos en lugar de crearlos destruye los que haya en su lugar
        if(global.Dungeon_Room_Items_ID[ai] == obj_Skeletons) {
            with(obj_Skeletons) {
                if(x == global.Dungeon_Room_Items_x[other.ai] and y == global.Dungeon_Room_Items_y[other.ai]) instance_destroy();
            }
        } else
        
        // Si es unos rocas en lugar de crearlos destruye los que haya en su lugar
        if(global.Dungeon_Room_Items_ID[ai] == obj_Rocas) {
            with(obj_Rocas) {
                if(x == global.Dungeon_Room_Items_x[other.ai] and y == global.Dungeon_Room_Items_y[other.ai]) instance_destroy();
            }
        } else {
            var ins = instance_create(global.Dungeon_Room_Items_x[ai], global.Dungeon_Room_Items_y[ai], global.Dungeon_Room_Items_ID[ai]);
			if(global.Dungeon_Room_Items_ID[ai] == obj_Cofre_General) {
				ins.ID = global.Dungeon_Room_Items_extra[ai];
				ins.locked = global.Dungeon_Room_Items_extra2[ai];
			}
            global.Dungeon_Room_Items_ID[ai] = -1; // Como ya ha spawneado se borra, si no se recoge se volvera a apuntar automaticamente
        }
        
    }
    
}


