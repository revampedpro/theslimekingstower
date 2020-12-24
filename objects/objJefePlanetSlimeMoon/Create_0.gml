if(!instance_exists(obj_Jugador)) { instance_destroy(); exit; }
image_speed = 0.2;
x += -8 + random(16);
y += -8 + random(16);
direction = point_direction(x,y,obj_Jugador.x,obj_Jugador.y);
speed = -5;
value = 1;

netid = network_generate_id();