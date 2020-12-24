action_inherited();
/// Efecto wiggle del sprite
var k = 0.07;
xscale = approach(xscale, 1, k);
yscale = approach(yscale, 1, k);



///Move
if(instance_exists(fxTransition2))exit;
Objetivo = obj_Jugador;
if(network_is_online()) and (Objetivo == obj_Jugador) and (distance_to_object(obj_Jugador_Networking)<distance_to_object(obj_Jugador)) Objetivo = obj_Jugador_Networking;
if( instance_exists( obj_Dummy ) ) Objetivo = obj_Dummy;
if(alarm[11] > 0) { vx = 0; vy = 0; exit; }

// Stick to starting point
x = xstart;
y = ystart;

// Create area
if(real(ID) == 58) { // Slow area
	var ss = 0.2 + random(0.6);
	var max_area = 32;
	var area = random(max_area);
	var aa = random(360);
	var xx = x + area*cos(degtorad(aa));
	var yy = y - area*sin(degtorad(aa));
	var fx = create_effect(xx,yy+10,spr_FX_Pixel,0.25);
	fx.vspeed = -(0.1+random(1)/10);
	fx.image_blend = choose(c_blue,c_aqua,c_aqua);
	fx.image_xscale = ss;
	fx.image_yscale = ss;
	fx.depth = depth+2;
}
if(real(ID) == 59) { // Pain area
	var ss = 0.2 + random(0.6);
	var max_area = 24;
	var area = random(max_area);
	var aa = random(360);
	var xx = x + area*cos(degtorad(aa));
	var yy = y - area*sin(degtorad(aa));
	var fx = create_effect(xx,yy+10,spr_FX_Pixel,0.25);
	fx.vspeed = -(0.1+random(1)/10);
	fx.image_blend = choose(c_red,c_yellow,c_orange);
	fx.image_xscale = ss;
	fx.image_yscale = ss;
	fx.depth = depth+2;
	if(instance_exists(obj_Jugador)) {
		if(distance_to_object(obj_Jugador)<max_area/2) {
			with(obj_Jugador) player_damage_collisions(other);
		}
	}
}

// Make it visible
if(visible == false) {
    visible = true;
    if(instance_exists(obj_Jugador)) {
        var fx = create_effect(x,y,sprEnemyDeath,0.4);
        fx.depth = depth-60;
        var fx = create_effect(x,y,sprSmokeEnemyAppear,0.4);
        fx.depth = depth-60;
        audio_stop_sound(sndEnemySpawn);
        audio_play_sound(sndEnemySpawn,0,0);
    }
}



