// Dibujar todas las sombras
//if(global.Quality < 1)exit;
if(room == room_Arcade) exit;
var Color = make_color_rgb(220,220,220);

// Dibujar la iluminacion falsa

// Menus y especiales
if(room == room_Title or room == room_Modos_Juego or room == room_Opciones or room == room_Saving or room == room_GamepadMapping or room == room_Character_Select or room == room_Challenge_Select or room == room_Biblioteca or room == room_Endless_Mode or room == room_Pets or room == room_DailyRun_Mode or room == room_Ranking or room == room_GameOver or room == room_Jefe_KingSlime or room == room_BossRush or room == room_Jefe_BasementParty) {
    
    draw_set_blend_mode(bm_subtract);

    // Menu normal
    draw_sprite_ext(spr_Fake_Lighting_High, 0, 0, 0, 1, 1, 0, Color, 1);

    // Arcade && Slimeking
    if(room == room_Jefe_KingSlime or room == room_Jefe_BasementParty) or (room = room_Rush) or room == room_BossRush {
        draw_set_color(make_color_rgb(255, 255, 255));
        draw_rectangle(-200, -200, room_width+200, 0, 0); // TOP
        draw_rectangle(-200, 1, 0, room_height, 0); // LEFT
        draw_rectangle(room_width, 1, room_width+200, room_height, 0); // RIGHT
        draw_rectangle(-200, room_height, room_width+200, room_height+200, 0); // BOTTOM
    } else {
    
        draw_sprite_ext(spr_Fake_Lighting_High, 0, 0, 0, 1, 1, 0, Color, 1);
    
    }

} else {

    // Ingame
	if(room != room_Bigger) {
	    draw_set_blend_mode(bm_normal);
	    draw_sprite_ext(spr_Fake_Lighting_Smaller, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), 1, 1, 0, Color, 1);
	} else {
	    draw_set_blend_mode(bm_normal);
	    draw_sprite_ext(spr_Fake_Lighting_Bigger, 0, 128, 54, 1, 1, 0, Color, 1);
	}

}


draw_set_blend_mode(bm_normal);

