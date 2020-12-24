// Be repelled
if(enemy_common_repel(other)) exit;

// Tell your partner that he has been hit
if(alarm[3]<0) {
	if(network_is_online()) {
		if(!network_is_host()) {
			pack_send_multi("hitByMonster","netid",other.netid);
			alarm[3] = Delay_Invencibilidad;
		}
	}
}
