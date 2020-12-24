// Ir hacia el jugador
if( global.Pausado ) exit;
if(!instance_exists(Objetivo)) { instance_destroy(); exit; }
x += cos(degtorad(Direction)) * Velocidad;
y -= sin(degtorad(Direction)) * Velocidad;

// Turn
Direction += DirectionSpeed;

// Destroy 
if(destroy_with_solid) and (!place_free(x,y)) { instance_destroy(); exit; }

if(sprite_index == sprBone) or (sprite_index == sprBigBone) or (sprite_index == sprSkeletonMageProjectile) image_angle += 6;

// Follow
if(follow == true) and (instance_exists(obj_Jugador)) {

	Direction -= angle_difference(Direction,point_direction(x,y,obj_Jugador.x,obj_Jugador.y))/60;
	
}

// Leave trail
if(sprite_index == sprSkeletonMageProjectile) {
	
	var fx = create_effect(x,y,sprite_index,0.25);	
	fx.image_blend = make_color_hsv(random(255),255,255);
	fx.image_alpha = 0.5 + random(5)/10;
	
	if(choose(0,1)) {
		//var fx = instance_create(x,y,fxTrail);
		//fx.color  = make_color_rgb(215,123,186);
		fx.color = make_color_rgb(118,66,138);
		fx.color2 = make_color_rgb(118,66,138);
	}
}

// Throwable skull trail
if(sprite_index == sprThrowableSkull) {
	
	if(choose(0,1)) {
		var fx    = instance_create(x,y,fxTrail);
		fx.color  = make_color_rgb(118,66,138);
		fx.color2 = make_color_rgb(118,66,138);
		create_effect(x,y,sprSparkle,0.2);
	}
}