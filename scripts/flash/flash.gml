/// @description flash(frames,color)
/// @function flash
/// @param frames
/// @param color
function flash() {
	var _f = instance_create(0, 0, fxRoomFlash);
	_f.length = argument[0];
	_f.lengthmax = argument[0];
	_f.color = argument[1];

	// Tell your partner that a flash has happen
	if(network_is_online()) and (global.NETWORK_HOST == true) {
		pack_send_multi("flash","frames",argument[0],"color",argument[1]);
	}


}
