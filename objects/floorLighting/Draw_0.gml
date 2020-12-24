// Dibujar todas las sombras
//if(global.Quality != 2)exit;
if(room == room_Arcade) exit;

// Menus y especiales
if(room == room_Title or room == room_Modos_Juego or room == room_Saving or room == room_GamepadMapping or room == room_Challenge_Select or room == room_Character_Select or room == room_Opciones or room == room_Biblioteca or room == room_Endless_Mode or room == room_Pets or room == room_DailyRun_Mode or room == room_Ranking or room == room_GameOver or room == room_Arcade or room == room_Jefe_KingSlime or room == room_Jefe_BasementParty or room == room_BossRush or (room = room_Rush)) {

} else {
	if(room != room_Bigger) {
		draw_sprite_ext(sprFloorLighting, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), 1, 1, 0, c_white, .6);
	} else {
		draw_sprite_ext(sprFloorLightingBigger, 0, 156, 83, 1, 1, 0, c_white, .6);
	}
}


