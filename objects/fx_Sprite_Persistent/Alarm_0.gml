if(global.COMPRESS_DETAILS == true) {
    if(!instance_exists(control_floorDetails)) instance_create(0,0,control_floorDetails);
	
	// If quality it's less than high, use sprite drawer
	var l = control_floorDetails.d;
	control_floorDetails.floorSprite[l] = sprite_index;
	control_floorDetails.floorX[l] = x;
	control_floorDetails.floorY[l] = y;
	control_floorDetails.floorColor[l] = image_blend;
	control_floorDetails.floorAlpha[l] = image_alpha;
	control_floorDetails.floorAngle[l] = image_angle;
	control_floorDetails.d++;
	if(control_floorDetails.d > control_floorDetails.dMax) control_floorDetails.d = 0;
		
	if(global.Quality == 2) { // If it's high, use surface instead
		with(control_floorDetails) {
			surface_set_target(surf);
				draw_sprite_ext(other.sprite_index,other.image_index,other.x,other.y,other.image_xscale,other.image_yscale,other.image_angle,other.image_blend,other.image_alpha);
			surface_reset_target();
		}
	}
	
    instance_destroy();
}

action_kill_object();
