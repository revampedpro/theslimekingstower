/// @description network_sync_multiobject()
/// @param object_index
function network_sync_multiobject() {
	// Sync several instances that doesn't require special vars

	with(argument[0]) {
	
		// Prepare vars
		var _netid = netid;
		var _x = x;
		var _y = y;
		var _a = image_angle;
		var _o = argument[0];
		var _s = sprite_index;
		if(argument[0] == obj_ChainSlimeChainBall) _a = image_index;
		
		// Send pack
		pack_send_multi("multiObjectPosition","netid",_netid,"x",_x,"y",_y,"a",_a,"o",_o,"s",_s);
		
	}


}
