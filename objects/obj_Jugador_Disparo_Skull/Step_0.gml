// Go to player
if(!instance_exists(obj_Jugador)) { create_effect(x,y,spr_FX_Hit,0.5); instance_destroy(); exit; }
if(!instance_exists(ins))		  { 
	if(instance_exists(parent_Enemigo)) {
		ins = instance_nearest(x,y,parent_Enemigo);
		direction = point_direction(x,y,ins.x,ins.y);
	} else {
		create_effect(x,y,spr_FX_Hit,0.5); 
		instance_destroy(); 
		exit; 
	}
}
if(speed < 1) speed = tween_to(speed, 1, 10);
if(speed > 0) {
    speed = tween_to(speed, 4, 20);
    direction = point_direction(x,y,ins.x,ins.y);
}


