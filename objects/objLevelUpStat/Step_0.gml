// Smooth
switch(stat) {
	case 0:
		x_to = view_xview-40+view_wview/2;
		y_to = view_yview+view_hview-40;
		break;
	case 1:
		x_to = view_xview+view_wview/2;
		y_to = view_yview+view_hview-40;
		break;
	case 2:
		x_to = view_xview+40+view_wview/2;
		y_to = view_yview+view_hview-40;
		break;
}
if(destroy == false) {
	x			= tween_to(x,x_to,1);
	y			= tween_to(y,y_to,1);
	image_angle = tween_to(image_angle,0,10);
	image_xscale = tween_to(image_xscale,1,5);
	image_yscale = tween_to(image_yscale,1,5);
	alpha		= tween_to(alpha,1,10);
} else {
	x			 = tween_to(x,xstart,1);
	y			 = tween_to(y,ystart,1);
	image_xscale = tween_to(image_xscale,0,20);
	image_yscale = tween_to(image_yscale,0,20);
	alpha		 = tween_to(alpha,0,10);
}

var fx = create_effect(x-5+random(10),y-5+random(10),sprSparkle,0.3);
fx.hspeed = -0.5+random(1);
fx.vspeed = -0.5+random(1);


// Use controller
for(var i = 0; i < gamepad_get_device_count(); i++) {


	if(gamepad_button_check(i, global.GP_ACTION)) {
		switch(stat) {
			case 0:
				if(gamepad_button_check_pressed(i, global.GP_SHOOT_LEFT)) {
					event_perform(ev_mouse,ev_left_press);
				}
			break;
	
			case 1:
				if(gamepad_button_check_pressed(i, global.GP_SHOOT_DOWN)) {
					event_perform(ev_mouse,ev_left_press);
				}
			break;
	
			case 2:
				if(gamepad_button_check_pressed(i, global.GP_SHOOT_RIGHT)) {
					event_perform(ev_mouse,ev_left_press);
				}
			break;
		}
	}

	
}