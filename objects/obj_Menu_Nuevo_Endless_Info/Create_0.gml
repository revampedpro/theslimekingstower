// Vars
ini_open( "save.ini" );
level = ini_read_real("S", "EDL"+string(global.Modo_Dificultad), 1);
global.Endless_Mob_Level = level;
ini_close();



