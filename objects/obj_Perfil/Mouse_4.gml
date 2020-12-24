/// @description  Guardar configuracion
Pre_Nombre = global.Nombre;
get_string_async(lang(6),"");
w = true;

/*
// Pedir nombre
var Pre_Nombre = global.Nombre;
global.Nombre = "";
for( i = 0; global.Nombre = ""; i++ ) {
    global.Nombre = get_string(lang(6),"");
    if( global.Nombre = "" ) { show_message_async(lang(7)); global.Nombre = Pre_Nombre; exit; }
    global.Nombre = string_upper(string_lettersdigits(global.Nombre));
    global.Nombre = string_copy(global.Nombre, 0, 10);
}

if( global.Nombre = "" ) global.Nombre = Pre_Nombre;
global.Comprobar_Primera_Vez = false;

ini_open( "save.ini" );
ini_write_string( "S", "N", global.Nombre );
ini_close();




