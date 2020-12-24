/// @description sleep_s(ms)
/// @param time
/// @param delay
function sleep() {
	var t = instance_create(0,0,fx_sleep);
	t.alarm[0] = argument[1];
	t.time = argument[0];


}
