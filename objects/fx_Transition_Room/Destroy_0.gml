/// @description  Ir a la room
// CAMBIAR TAMBIEN fxTransition2 !!!
if(!instance_exists(obj_Jugador)) exit;
obj_Jugador.visible = true;

// Recoloca al jugador
if(i < global.Posicion_i) { obj_Jugador.x = 520-64-24; obj_Jugador.y = 184-20; if(control_Dungeon.Dungeon[i,j]==1 or (global.Mapa_Tipo = 6 and control_Dungeon.Dungeon[i,j]==3)){ obj_Jugador.x+=72-72; } if(control_Dungeon.Dungeon[i,j]==29 || control_Dungeon.Dungeon[i,j]==30){ obj_Jugador.x+=24; } }
if(i > global.Posicion_i) { obj_Jugador.x = 112+58+24; obj_Jugador.y = 184-20; if(control_Dungeon.Dungeon[i,j]==1 or (global.Mapa_Tipo = 6 and control_Dungeon.Dungeon[i,j]==3)){ obj_Jugador.x-=72-72; } if(control_Dungeon.Dungeon[i,j]==29 || control_Dungeon.Dungeon[i,j]==30){ obj_Jugador.x-=24; } }
if(j > global.Posicion_j) { obj_Jugador.x = 320-8 ; obj_Jugador.y = 112-18+24; if(control_Dungeon.Dungeon[i,j]==1 or (global.Mapa_Tipo = 6 and control_Dungeon.Dungeon[i,j]==3)){ obj_Jugador.y-=72-72; } if(control_Dungeon.Dungeon[i,j]==29 || control_Dungeon.Dungeon[i,j]==30){ obj_Jugador.y-=24; } }
if(j < global.Posicion_j) { obj_Jugador.x = 320-8 ; obj_Jugador.y = 240-4-24 ; if(control_Dungeon.Dungeon[i,j]==1 or (global.Mapa_Tipo = 6 and control_Dungeon.Dungeon[i,j]==3)){ obj_Jugador.y+=72-72; } if(control_Dungeon.Dungeon[i,j]==29 || control_Dungeon.Dungeon[i,j]==30){ obj_Jugador.y+=24; } }
global.Posicion_i = i;
global.Posicion_j = j;

// Va a la room
random_set_seed(global.UNIQUE_MAP_SEED + control_Dungeon.Dungeon_Seed[ global.Posicion_i, global.Posicion_j ] );
var Room = room_Normal;
Room = room_get_special();

if( control_Dungeon.Dungeon[ global.Posicion_i, global.Posicion_j ] == 3 ) {
    if ( control_Dungeon.Dungeon_Boss != -1 ) {
        Room = room_Transicion_Jefe; // Jefe
    } else {
        Room = room_Jefe; // Jefe    
    }
}

room_goto(Room);

// Acciona el sonido de la sala
if( control_Dungeon.Dungeon[ global.Posicion_i, global.Posicion_j ] == 4 ) audio_play_sound( snd_Room_Treasure, 1, 0 );
if( control_Dungeon.Dungeon[ global.Posicion_i, global.Posicion_j ] == 7 ) audio_play_sound( snd_Room_Shop, 1, 0 );
if( control_Dungeon.Dungeon[ global.Posicion_i, global.Posicion_j ] == 13 ) audio_play_sound( snd_Room_Treasure, 1, 0 );
if( control_Dungeon.Dungeon[ global.Posicion_i, global.Posicion_j ] == 17 ) audio_play_sound( snd_Room_HealthShop, 1, 0 );

