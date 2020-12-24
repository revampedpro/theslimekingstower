/// @description  Behaviour
if(!instance_exists(obj_Jugador))exit;
if(instance_exists(fxTransition2))exit;
if(alarm[3]>0) exit;
if(HP <= 0) instance_destroy();

// Follow player
depth = -500;
var Angle2 = point_direction(x,y,obj_Jugador.x,obj_Jugador.y);
if(Angle < Angle2) Angle += AngleSPD;
if(Angle > Angle2) Angle -= AngleSPD;
if(Angle >= 360) Angle = 0;
image_angle = Angle;

// Move
x += cos(degtorad(Angle)) * SPD;
y -= sin(degtorad(Angle)) * SPD;

