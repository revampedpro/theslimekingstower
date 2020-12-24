/// @description  Variables
ini_open( "save.ini" );
global.Nombre = ini_read_string( "S", "N", "" );
ini_close();
ini_open( "save.ini" );
ini_write_string( "S", "N", global.Nombre );
ini_close();

w = false;