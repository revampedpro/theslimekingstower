/// @description  Accion despues de la transicion
global.Modo_Juego = "BossRush";
global.Modo_Sub_Juego = "";
global.Endless_Mob_Level = 1;
global.UNIQUE_MAP_SEED = irandom(999999999);
//GoogleAnalytics_SendEvent("ingame","arcade_runs");
room_goto(room_Character_Select);
//room_goto(init_Game);

