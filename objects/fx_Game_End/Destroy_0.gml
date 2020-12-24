/// @description  Ir al gameover
var crownTaken = false;
if(instance_exists(obj_Jugador)) {
    crownTaken = obj_Jugador.crownTaken;
}

// Pasar la lista de items recogidos a una cadena de items global
global.Jugador_Items_Obtenidos = "-1|";
for( i = 0; i < array_length_1d( control_Dungeon.Jugador_Items ); i++ ) {
    if(control_Dungeon.Jugador_Items[i]>0) global.Jugador_Items_Obtenidos += string(control_Dungeon.Jugador_Items[i]) + "|";
}

// Guardar uno de los items obtenidos en el .ini para usarlo en un futuro en la sala Ultimo Yo
ini_open("save.ini");

var UY_Posicion = irandom(array_length_1d(control_Dungeon.Jugador_Items));
var UY_Item = 0;
for(i = UY_Posicion; i < array_length_1d(control_Dungeon.Jugador_Items); i++) {
    if(control_Dungeon.Jugador_Items[i] > 0 and control_Dungeon.Jugador_Items[i] < 500) {
        var UY_Item = control_Dungeon.Jugador_Items[i];
        break;
    }
    UY_Item = 0;
} 

ini_write_real( "S", "UL", UY_Item );


ini_close();

// Eliminar todos los objetos persistentes
with( obj_Jugador_Disparo ) instance_destroy();
with( obj_Jugador_Disparo_Fuego ) instance_destroy();
with( obj_Dummy ) instance_destroy();
with(all) {
    if(persistent == true) and (object_index != control_Gamepad) instance_destroy();
}

// Cambiar de room
if(global.Modo_Juego == "Normal") and (global.Slime_King_Dead) {
    ini_open("save.ini");
        var trials = ini_read_real("S","TRLS",0);
    ini_close();
    /*
    if(trials <= 7) {
        file_delete("temp");
        room_goto(room_Transicion_Unlock);
    } else {
        file_delete("temp");
        room_goto(room_GameOver);
    }
    */
    room_goto(room_GameOver);
} else {
    file_delete("temp");
    room_goto(room_GameOver);
}

if(crownTaken == true) {
    if(global.Mapa_Tipo == 6)  room_goto(cutscene05);
    if(global.Mapa_Tipo == 11) room_goto(cutscene06);
    if(global.Mapa_Tipo == 12) room_goto(cutscene01_04);
    audio_stop_all();
}

/* */
/*  */
