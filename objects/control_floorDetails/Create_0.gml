// Vars
d = 0;
dMax = 10+ 45*global.Quality;
floorSprite[0] = -1;
floorX[0] = -1;
floorY[0] = -1;
floorColor[0] = -1;
floorAlpha[0] = -1;
floorAngle[0] = 0;

// Surface
if(global.destructionSurface[# global.Posicion_i, global.Posicion_j] == 0) {
	surf = surface_create(room_width,room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black,0);
	surface_reset_target();
	global.destructionSurface[# global.Posicion_i, global.Posicion_j] = surf;
} else {
	surf = global.destructionSurface[# global.Posicion_i, global.Posicion_j];
}