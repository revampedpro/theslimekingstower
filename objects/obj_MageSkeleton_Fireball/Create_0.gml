// Vars
Objetivo = obj_Jugador;
if( instance_exists( obj_Dummy ) ) Objetivo = obj_Dummy;
if(!instance_exists(Objetivo))exit;
if(network_is_online() and network_is_host() and Objetivo == obj_Jugador) {
	Objetivo = instance_nearest(x,y,parent_Jugador);	
}

Direction = point_direction(x,y,Objetivo.x,Objetivo.y);
Velocidad = 1.75;
DirectionSpeed = 0;
image_speed = 0.12;
image_angle = Direction;
xscale = 0;
yscale = 0;
if(player_has_pet(61)) and (chance(10)) instance_destroy();

// Behaviour
follow = false; // Does the bullet follow the player?
destroy_with_solid = false; // Does the bullet gets destroyed with solid blocks?
netid = network_generate_id();