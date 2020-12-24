/// @description  Tiempo pensar entre saltos
Objetivo = obj_Jugador;
if( instance_exists( obj_Dummy ) ) Objetivo = obj_Dummy;
if(!instance_exists(Objetivo)) exit;
if(network_is_online() and network_is_host()) {
	if(Objetivo == obj_Jugador) {
		Objetivo = instance_nearest(x,y,parent_Jugador);	
	}
}

alarm[0] = 50 + random(100); // Tiempo pensar entre saltos
Salto_Inicio_X = x;
Salto_Inicio_Y = y;

if(real(ID) == enemies.slime_jockey) {
	// Jumping to player
	var D = min(34,distance_to_object(Objetivo)+5);
	var dir = point_direction(x,y,Objetivo.x,Objetivo.y);
	var X = x + D*cos(degtorad(dir));
	var Y = y - D*sin(degtorad(dir));
	Waypoint_X = X;
	Waypoint_Y = Y;
	alarm[0] = 30;
} else {
	// Find random point
	for(i = 0; i < 999; i++) {
	    var X = irandom_range(168,432);
	    var Y = irandom_range(96,216);
	    if(TargetPlayer == true) {
	        X = Objetivo.x;
	        Y = Objetivo.y;
	    }
	    Waypoint_X = X;
	    Waypoint_Y = Y;
	    if(place_free(Waypoint_X,Waypoint_Y) and point_distance(X,Y,obj_Jugador.x,obj_Jugador.y)>24) break;
	}
}

var A = point_direction( x, y, Objetivo.x, Objetivo.y );
if( A > 45  and A < 135 ) {  // Arriba
    sprite_index = Sprite_Up;
}
if( A > 225 and A < 315 ) { // Abajo
    sprite_index = Sprite_Down;
} 
if( A > 135 and A < 225 ) { // Izquierda
    sprite_index = Sprite_Left;
} 
if( A > 315 or  A < 45 )  { // Derecha
    sprite_index = Sprite_Right;
} 

Saltar = true;
xscale = 0.5;
yscale = 1.5;

