/// @description  Sonido
if( !audio_is_playing( BGM_Menu ) ) { audio_stop_all(); audio_play_sound( BGM_Menu, 1, 1 ); }

window_mouse_set(0,0);

// Pre-Init
/*
// Randomizar
randomize();

// Control
global.GUI_Movimiento_X = 100;
global.GUI_Movimiento_Y = 260;
global.GUI_Disparo_X = 540;
global.GUI_Disparo_Y = 260;

// Mapa
global.Mapa_Nivel = 1;
global.Mapa_Tipo = choose(1, 2, 3, 4, 5, 6);

// Debug
/*
global.Tiempo_Juego = 0;
global.DEBUG_MODE = true;
global.DEBUG_MAP = -1;
global.DEBUG_VERSION = "0.4";
global.DEBUG_ENEMIGOS_DERROTADOS = 0;
global.DEBUG_NOMBRE_SALA = "";
global.DEBUG_MONEDAS = 0;
global.DEBUG_SALUD = 0;
global.DEBUG_MAPAS_DAMAGE = "";
global.DEBUG_ENEMY_DAMAGE = "";
global.DEBUG_MAPAS_APARECIDOS = "";


// Jugador
global.Jugador_Monedas = 0;
global.Jugador_Item_Usable = -1;