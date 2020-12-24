speed -= spp;
image_angle += g;
if(speed <= 0) {
    if(global.COMPRESS_DETAILS == true) {
        if(!instance_exists(control_floorDetails)) instance_create(0,0,control_floorDetails);
        var l = control_floorDetails.d;
        control_floorDetails.floorSprite[l] = sprite_index;
        control_floorDetails.floorX[l]		= x;
        control_floorDetails.floorY[l]		= y;
        control_floorDetails.floorColor[l]	= image_blend;
        control_floorDetails.floorAlpha[l]	= image_alpha;
        control_floorDetails.floorAngle[l]	= image_angle;
        control_floorDetails.d++;
        if(control_floorDetails.d > control_floorDetails.dMax) control_floorDetails.d = 0;
        instance_destroy();
    }
	instance_destroy();
}
if(alarm[0] < 0) alarm[0] = 10;
depth = 179;