// Go to player
if(!instance_exists(obj_Jugador)) { instance_destroy(); exit; }
if(speed < 1) speed = tween_to(speed, 1, 10);
if(speed > 0) {
    speed = tween_to(speed, 3, 20);
    direction = point_direction(x,y,obj_Jugador.x,obj_Jugador.y);
}


