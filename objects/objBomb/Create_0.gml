// Vars
image_speed = 0.15;
xscale = 1.5;
yscale = 1.5;
hSpeed = 0;
vSpeed = 0;
cluster = false;
orb_shoot = player_has_item(312);
audio_stop_sound(sndBombDrop);
audio_play_sound(sndBombDrop, 0, 0);
if(player_has_item(277)) image_index = image_number-1;
audio_stop_sound(sndBombWick);
audio_play_sound(sndBombWick,0,0);
netid = network_generate_id();

// Tell your partner that a bomb has been created
if(network_is_online()) and (global.NETWORK_HOST == true) {
	pack_send_multi("bombSpawn","netid",netid,"x",x,"y",y);	
}