
Y = 0;
vy = -2;
g = 0.2;
alarm[0] = 50; // Delay antes de poder ser cogidas
netid = network_generate_id();

// Tell your partner to spawn the same pickup
if(network_is_online()) and (global.NETWORK_HOST == true) {
	pack_send_multi("pickupSpawn","netid",netid,"x",x,"y",y,"object",object_index);
}