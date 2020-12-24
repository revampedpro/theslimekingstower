/// @description  Accion despues de la transicion
if(room == room_DailyRun_Mode or room == room_Endless_Mode) { room_goto(room_Modos_Juego); exit; }
if(room == room_Challenge_Select) room_goto(room_Modos_Juego);
if(room == room_Character_Select) room_goto(room_Modos_Juego);
 else room_goto(room_Title);


