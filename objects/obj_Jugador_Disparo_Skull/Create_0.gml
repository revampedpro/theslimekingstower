if(!instance_exists(obj_Jugador)) { instance_destroy(); exit; }
image_speed = 0.2;
x += -8 + random(16);
y += -8 + random(16);
direction = random(360);
ins = -1;
if(instance_exists(parent_Enemigo)) {
	ins = instance_nearest(x,y,parent_Enemigo);
	direction = point_direction(x,y,ins.x,ins.y);
}
speed = -5;
value = 1;
depth = -800;