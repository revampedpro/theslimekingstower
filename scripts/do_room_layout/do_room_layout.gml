/// @description do_room_layout(id)
/// @function do_room_layout
/// @param id
function do_room_layout(argument0) {

	// Vars
	var Room;
	var W = 13+0-2;
	var H = 7+0-2;
	var X = 156-0+24;
	var Y = 84-0+24;

	// Big rooms
	if(room == room_Bigger) {
		X -= 24;
		Y -= 24;	
		W += 2;
		H += 2;	
	}

	// Room Matrix
	for( j = 0; j < H; j++ ) {
	    Room[j] = get_room(argument0,j);
	}

	// Create Room
	for( j = 0; j < H; j++ ) {

	    var Layout = string(Room[j]);
	    for( i = 0; i < string_length( Layout ); i++ ) {
    
	        if( string_char_at( Layout, i+1 ) == "0" ) { /* No hay nada */ } 
	        if( string_char_at( Layout, i+1 ) == "1" ) { instance_create( X + i*24, Y + j*24, obj_Enemigo_Spawner ); }
	        if( string_char_at( Layout, i+1 ) == "2" ) { instance_create( X + i*24, Y + j*24, obj_Bloqueador ); }
	        if( string_char_at( Layout, i+1 ) == "3" ) { instance_create( X + i*24, Y + j*24, obj_Antorcha ); }
	        if( string_char_at( Layout, i+1 ) == "4" ) { instance_create( X + i*24, Y + j*24, obj_Vasija ); }
	        if( string_char_at( Layout, i+1 ) == "5" ) { instance_create( X + i*24, Y + j*24, obj_Agua ); }
	        if( string_char_at( Layout, i+1 ) == "6" ) { instance_create( X + i*24, Y + j*24, obj_Void ); }
	        if( string_char_at( Layout, i+1 ) == "7" ) { var Pinchos = instance_create( X + i*24, Y + j*24, obj_Pinchos ); Pinchos.image_index = 0; }
	        if( string_char_at( Layout, i+1 ) == "8" ) { var Pinchos = instance_create( X + i*24, Y + j*24, obj_Pinchos ); Pinchos.image_index = 1; }
	        if( string_char_at( Layout, i+1 ) == "9" ) { var Pinchos = instance_create( X + i*24, Y + j*24, obj_Pinchos ); Pinchos.image_index = 2; }
	        if( string_char_at( Layout, i+1 ) == "a" ) { var Pinchos = instance_create( X + i*24, Y + j*24, obj_Pinchos ); Pinchos.image_index = 3; }
	        if( string_char_at( Layout, i+1 ) == "b" ) { instance_create( X + i*24, Y + j*24, obj_Hielo ); }
	        if( string_char_at( Layout, i+1 ) == "c" ) { instance_create( X + i*24, Y + j*24, obj_Rebotador ); }
	        if( string_char_at( Layout, i+1 ) == "d" ) { instance_create( X + i*24, Y + j*24, obj_Hielo ); var Pinchos = instance_create( X + i*24, Y + j*24, obj_Pinchos ); Pinchos.image_index = 0; }
	        if( string_char_at( Layout, i+1 ) == "e" ) { instance_create( X + i*24, Y + j*24, obj_Hielo ); var Pinchos = instance_create( X + i*24, Y + j*24, obj_Pinchos ); Pinchos.image_index = 1; }
	        if( string_char_at( Layout, i+1 ) == "f" ) { instance_create( X + i*24, Y + j*24, obj_Hielo ); var Pinchos = instance_create( X + i*24, Y + j*24, obj_Pinchos ); Pinchos.image_index = 2; }
	        if( string_char_at( Layout, i+1 ) == "g" ) { instance_create( X + i*24, Y + j*24, obj_Hielo ); var Pinchos = instance_create( X + i*24, Y + j*24, obj_Pinchos ); Pinchos.image_index = 3; }
	        if( string_char_at( Layout, i+1 ) == "h" ) { instance_create( X + i*24, Y + j*24, obj_Hielo ); instance_create( X + i*24, Y + j*24, obj_Rebotador ); }
	        if( string_char_at( Layout, i+1 ) == "i" ) { instance_create( X + i*24, Y + j*24, obj_Atractor ); }
	        if( string_char_at( Layout, i+1 ) == "j" ) { instance_create( X + i*24, Y + j*24, obj_Hielo ); instance_create( X + i*24, Y + j*24, obj_Enemigo_Spawner ); }
	        if( string_char_at( Layout, i+1 ) == "k" ) { instance_create( X + i*24, Y + j*24, obj_Bloqueador_Laser ); }
	        if( string_char_at( Layout, i+1 ) == "l" ) { instance_create( X + 12 + i*24, Y + 12 + j*24, obj_Bloqueador_Activado_Rojo ); }
	        if( string_char_at( Layout, i+1 ) == "m" ) { instance_create( X + 12 + i*24, Y + 12 + j*24, obj_Bloqueador_Activado_Azul ); }
	        if( string_char_at( Layout, i+1 ) == "n" ) { instance_create( X + 12 + i*24, Y + 12 + j*24, obj_Pinchos_Suelo ); }
    
	        if( string_char_at( Layout, i+1 ) == "o" ) { instance_create( X + i*24, Y + j*24, objSpikeBlock ); }
        
	        if( string_char_at( Layout, i+1 ) == "q" ) { var skt = instance_create(X + i*24, Y + j*24, objSkullFlame); skt.dir = 0; skt.sprite_index = sprSkullFlameDown;}
	        if( string_char_at( Layout, i+1 ) == "r" ) { var skt = instance_create(X + i*24, Y + j*24, objSkullFlame); skt.dir = 3; skt.sprite_index = sprSkullFlameUp;}
	        if( string_char_at( Layout, i+1 ) == "s" ) { var skt = instance_create(X + i*24, Y + j*24, objSkullFlame); skt.dir = 2; skt.sprite_index = sprSkullFlameLeft;}
	        if( string_char_at( Layout, i+1 ) == "t" ) { var skt = instance_create(X + i*24, Y + j*24, objSkullFlame); skt.dir = 1; skt.sprite_index = sprSkullFlameRight;}
        
	        if( string_char_at( Layout, i+1 ) == "u" ) { instance_create( X + i*24, Y + j*24, obj_Rocas ); }
	        if( string_char_at( Layout, i+1 ) == "v" ) { instance_create( X + i*24, Y + j*24, obj_Skeletons ); }
	        if( string_char_at( Layout, i+1 ) == "w" ) and (control_Dungeon.Dungeon_Visitado[global.Posicion_i, global.Posicion_j]==0) { create_chest(X + 12 + i*24, Y - 10 + 24 + j*24, chest_pools("room")); }
	        if( string_char_at( Layout, i+1 ) == "x" ) and (control_Dungeon.Dungeon_Visitado[global.Posicion_i, global.Posicion_j]==0) { create_chest_big(X + 12 + i*24, Y - 13 + 24 + j*24, get_random_item_from_pool("treasure")); }
		
	        if( string_char_at( Layout, i+1 ) == "y" ) { instance_create(X + 12 + i*24, Y + 18 + j*24, objBombFlower); }
		
	        if( string_char_at( Layout, i+1 ) == "A" ) { var belt = instance_create(X + 12 + i*24, Y + 12 + j*24, obj_ConveyorBelt); }
	        if( string_char_at( Layout, i+1 ) == "B" ) { var belt = instance_create(X + 12 + i*24, Y + 12 + j*24, obj_ConveyorBelt); belt.image_angle += 90;  }
	        if( string_char_at( Layout, i+1 ) == "C" ) { var belt = instance_create(X + 12 + i*24, Y + 12 + j*24, obj_ConveyorBelt); belt.image_angle += 180; }
	        if( string_char_at( Layout, i+1 ) == "D" ) { var belt = instance_create(X + 12 + i*24, Y + 12 + j*24, obj_ConveyorBelt); belt.image_angle += 270; }
		
	        if( string_char_at( Layout, i+1 ) == "E" ) { instance_create( X + i*24, Y + j*24, obj_Bloqueador ); instance_create( X+12 + i*24, Y+12 + j*24, obj_BallBlock ); }
		
	        if( string_char_at( Layout, i+1 ) == "F" ) { var b = instance_create( X + 12 + i*24, Y + 12 + j*24, obj_MusicalBlock ); b.image_index = 0; }
	        if( string_char_at( Layout, i+1 ) == "G" ) { var b = instance_create( X + 12 + i*24, Y + 12 + j*24, obj_MusicalBlock ); b.image_index = 1; }
	        if( string_char_at( Layout, i+1 ) == "H" ) { var b = instance_create( X + 12 + i*24, Y + 12 + j*24, obj_MusicalBlock ); b.image_index = 2; }
	        if( string_char_at( Layout, i+1 ) == "I" ) { var b = instance_create( X + 12 + i*24, Y + 12 + j*24, obj_MusicalBlock ); b.image_index = 3; }
	        if( string_char_at( Layout, i+1 ) == "J" ) { var b = instance_create( X      + i*24, Y      + j*24, control_MusicBlocks ); }
		
	        if( string_char_at( Layout, i+1 ) == "K" ) { var b = instance_create( X + 12 + i*24, Y + 12 + j*24, objWarpBlock); b.image_index = 0; }
	        if( string_char_at( Layout, i+1 ) == "L" ) { var b = instance_create( X + 12 + i*24, Y + 12 + j*24, objWarpBlock); b.image_index = 1; }
	        if( string_char_at( Layout, i+1 ) == "M" ) { var b = instance_create( X + 12 + i*24, Y + 12 + j*24, objWarpBlock); b.image_index = 2; }
	        if( string_char_at( Layout, i+1 ) == "N" ) { var b = instance_create( X + 12 + i*24, Y + 12 + j*24, objWarpBlock); b.image_index = 3; }
        
	    }

	}



}
