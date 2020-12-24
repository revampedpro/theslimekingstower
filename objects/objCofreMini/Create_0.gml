// Vars
image_speed = 0;
image_index = 0;
xScale = 0.5;
yScale = 0;
effect = false;
Y = 0;
vy = 0;
g = 0.2;
get_chest_pool(chp_mini);
Pool = chp_mini;
netid = network_generate_id();

// Obtener variables para guardado
Posicion_i = global.Posicion_i;
Posicion_j = global.Posicion_j;
alarm[1] = 45;
visible = false;

// Tell your partner that this chest has spawned
if(network_is_online()) and (global.NETWORK_HOST == true) {
	pack_send_multi("chestSpawn","netid",netid,"x",x,"y",y,"object",object_index);
}