/// @description

devices = false;
var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;){
   if gamepad_is_connected(i) devices = true;
}

if(devices>0) {
	display_mouse_set(0,0);	
	window_mouse_set(0,0);
}