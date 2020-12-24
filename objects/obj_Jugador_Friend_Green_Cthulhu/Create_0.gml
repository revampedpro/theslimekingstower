// Exit if you are online and you are not the host
if(network_is_online() and !network_is_host()) {
	instance_destroy();
	exit;
}
netid = network_generate_id();

// Variables
Aceleracion = 0.1;
Velocidad_H = 0;
Velocidad_V = 0;
Velocidad_Max = 1;
image_speed = 0.2;
Objetivo = noone;
Angulo = 0;

