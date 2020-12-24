/// @description init()
/// @function init
function init() {
	// Declara el incio del juego

	// Randomizar
	randomize();

	// Control
	global.GUI_Movimiento_X = 100;
	global.GUI_Movimiento_Y = 260;
	global.GUI_Disparo_X = 540;
	global.GUI_Disparo_Y = 260;
	global.Pausado = false;

	// Iluminacion
	global.Darkness = 0;
	global.Shadow = spr_Block_Shadow;
	global.Shadow_Distance = 250;

	// Mapa
	global.Mapa_Tipo = 1;
	global.Mapa_Nivel = 1;
	global.Mapa_Direccion = 1;
	global.Mapa_Basement = true;

	// Debug
	global.Slime_King_Dead = false;
	global.Tiempo_Juego = 0;
	global.DEBUG_MAP = -1;
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

	// Desactivar application surface
	device_mouse_dbclick_enable(false);

	// Ir al siguiente room
	room_goto_next();



}
