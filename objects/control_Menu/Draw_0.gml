// Draw particles on surface
if(global.Quality == 2) {
	if(!surface_exists(surf)) surf = surface_create(room_width,room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black,0);
	part_system_drawit(Particle_System);
	surface_reset_target();
	draw_surface(surf,0,0);
} else {
	part_system_drawit(Particle_System);
}


