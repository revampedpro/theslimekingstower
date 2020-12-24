// Tell your partner that this pickup was destroyed
if(network_is_online()) and (global.NETWORK_HOST == true) {
	pack_send_multi("pickupDestroyed","netid",netid);	
}