/// @description  Accion despues de la transicion
global.Modo_Juego = "Endless";
global.Daily_Items = obj_Menu_Nuevo_DailyRun_Info.items;
//GoogleAnalytics_SendEvent("ingame","daily_runs");
room_goto(room_Character_Select);
//room_goto(init_Game);

