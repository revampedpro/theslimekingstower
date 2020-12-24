// Draw details
if(global.Quality < 2) {
	for(var i = 0; i < array_length_1d(floorSprite); i++) {
		if(floorSprite[i] != -1) {
			draw_sprite_ext(floorSprite[i],0,floorX[i],floorY[i],1,1,floorAngle[i],floorColor[i],floorAlpha[i]);
		}
	}
} else {

	// Draw surface
	if(!surface_exists(surf)) {
		surf = surface_create(room_width,room_height);	
		surface_set_target(surf);
		draw_clear_alpha(c_black,0);
		surface_reset_target();
		global.destructionSurface[# global.Posicion_i, global.Posicion_j] = surf;
	} else {
		
		surface_set_target(surf);
		for(var i = 0; i < array_length_1d(floorSprite); i++) {
			if(floorSprite[i] != -1) {
				draw_sprite_ext(floorSprite[i],0,floorX[i],floorY[i],1,1,floorAngle[i],floorColor[i],floorAlpha[i]);
			}
		}
		surface_reset_target();
		
		draw_surface(surf,0,0);	
	}

}