// Tell partner
if(network_is_online() and !network_is_host()) {
	pack_send_multi("hitByObject","netid",other.netid,"object",other.object_index);	
}

// Perform collision
player_damage_collisions(other);

