
// CAMBIAR TAMBIEN fxTransition_Room !!!

currentframe = 0;
maxframes = 20;
s = 1;
persistent = true; // when changing room keep this object alive

// copy the old room so we can display it on the second room
sur_oldroom = surface_create(display_get_width(),display_get_height());
surface_copy(sur_oldroom,0,0,application_surface)
surface_copy(sur_oldroom,0,0,application_surface)

// We have recorded what the old room looks like so we can instantly go to the next room.
// Recoloca al jugador
if(i < global.Posicion_i) { Direccion = "izquierda"; obj_Jugador.x = 520-64-24; obj_Jugador.y = 184-20;    if(control_Dungeon.Dungeon[i,j]==1 or (global.Mapa_Tipo = 6 and control_Dungeon.Dungeon[i,j]==3)){ obj_Jugador.x+=72-72; } if(control_Dungeon.Dungeon[i,j]==29 || control_Dungeon.Dungeon[i,j]==30){ obj_Jugador.x+=24; } }
if(i > global.Posicion_i) { Direccion = "derecha";   obj_Jugador.x = 112+58+24; obj_Jugador.y = 184-20;    if(control_Dungeon.Dungeon[i,j]==1 or (global.Mapa_Tipo = 6 and control_Dungeon.Dungeon[i,j]==3)){ obj_Jugador.x-=72-72; } if(control_Dungeon.Dungeon[i,j]==29 || control_Dungeon.Dungeon[i,j]==30){ obj_Jugador.x-=24; } }
if(j > global.Posicion_j) { Direccion = "abajo";     obj_Jugador.x = 320-8 ;    obj_Jugador.y = 112-18+24; if(control_Dungeon.Dungeon[i,j]==1 or (global.Mapa_Tipo = 6 and control_Dungeon.Dungeon[i,j]==3)){ obj_Jugador.y-=72-72; } if(control_Dungeon.Dungeon[i,j]==29 || control_Dungeon.Dungeon[i,j]==30){ obj_Jugador.y-=24; } }
if(j < global.Posicion_j) { Direccion = "arriba";    obj_Jugador.x = 320-8 ;    obj_Jugador.y = 240-4-24 ; if(control_Dungeon.Dungeon[i,j]==1 or (global.Mapa_Tipo = 6 and control_Dungeon.Dungeon[i,j]==3)){ obj_Jugador.y+=72-72; } if(control_Dungeon.Dungeon[i,j]==29 || control_Dungeon.Dungeon[i,j]==30){ obj_Jugador.y+=24; } }
ppi = global.Posicion_i;
ppj = global.Posicion_j;
global.Posicion_i = i;
global.Posicion_j = j;

// Va a la room
random_set_seed(global.UNIQUE_MAP_SEED + control_Dungeon.Dungeon_Seed[ global.Posicion_i, global.Posicion_j ] );
var Room = room_Normal;
Room = room_get_special();

if(control_Dungeon.Dungeon[global.Posicion_i, global.Posicion_j] == 3 ) {
    if ( control_Dungeon.Dungeon_Boss != -1 ) {
        Room = room_Transicion_Jefe; // Jefe
        global.Posicion_i = ppi;
        global.Posicion_j = ppj;
        var ppt = instance_create(0, 0, fx_Transition_Room);
        ppt.i = i;
        ppt.j = j;
        instance_destroy();
        exit;
    } else {
        Room = room_Jefe; // Jefe    
    }
}

obj_Jugador.visible = true;
room_goto(Room);

// Acciona el sonido de la sala
if( control_Dungeon.Dungeon[ global.Posicion_i, global.Posicion_j ] == 4 ) audio_play_sound( snd_Room_Treasure, 1, 0 );
if( control_Dungeon.Dungeon[ global.Posicion_i, global.Posicion_j ] == 7 ) audio_play_sound( snd_Room_Shop, 1, 0 );
if( control_Dungeon.Dungeon[ global.Posicion_i, global.Posicion_j ] == 13 ) audio_play_sound( snd_Room_Treasure, 1, 0 );
if( control_Dungeon.Dungeon[ global.Posicion_i, global.Posicion_j ] == 17 ) audio_play_sound( snd_Room_HealthShop, 1, 0 );

