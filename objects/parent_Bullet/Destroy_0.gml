// Tell your partner that this bullet died
if(network_is_online()) and (global.NETWORK_HOST == true) {
	
	// Prepare vars
	var _netid = netid;
	
	// Send pack
	pack_send_multi("bulletDeath","netid",_netid);
	
}