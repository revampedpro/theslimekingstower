/// @description  Behaviour
if(!instance_exists(obj_Jugador))exit;
if(instance_exists(fxTransition2))exit;
if(alarm[3]>0) exit;
if(HP <= 0) instance_destroy();

// Follow player
depth = -500;
image_angle = point_direction(x,y,x+hSpeed,y+vSpeed);
x += hSpeed;
y += vSpeed;

