// Inherit
if(s != -1) {
	audio_stop_sound(s);
}
event_inherited();

if(network_is_online() and network_is_host()) {
	pack_send_multi("objectDestroy","netid",netid,"object",object_index);	
}