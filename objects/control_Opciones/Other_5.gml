/// @description  Guardar configuracion
ini_open( "save.ini" );
ini_write_real( "S", "C", global.Camara_Modo );
ini_write_real( "S", "M", global.Control_Modo );
ini_write_real( "S", "S", global.Control_Sonido );
ini_write_real( "S", "AS", global.Control_Autosave );
ini_write_real( "S", "QA", global.Quality );
ini_close();

