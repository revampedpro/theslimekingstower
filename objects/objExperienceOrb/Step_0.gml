// Go to player
if(!instance_exists(obj_Jugador)) { instance_destroy(); exit; }
var player = obj_Jugador;
if(network_is_online()) {
	player = instance_nearest(x,y,parent_Jugador);	
}
if(speed < 1) speed = tween_to(speed, 1, 10);
if(speed > 0) {
    speed = tween_to(speed, 4, 20);
    direction = point_direction(x,y,player.x,player.y);
}


