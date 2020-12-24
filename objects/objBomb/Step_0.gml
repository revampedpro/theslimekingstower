// Change depth
depth = -y;

// Magnetic Bombs
if(player_has_item(346)) {
	with(parent_Enemigo) {
		var d = degtorad(point_direction(x,y,other.x,other.y));
		var h =  0.5*cos(d);
		var v = -0.5*sin(d);
		if(place_free(x+h,y)) x += h;
		if(place_free(x,y+v)) y += v;
	}
}

// Throw sparkles
if(choose(0,1)) {
	var fx = create_effect(x,y-12,sprSparkle,0.4+random(3)/10);
	fx.vspeed = -(0.1+random(5)/10);
	fx.hspeed = -(0.1+random(5)/10);
	fx.image_blend = choose(c_red,c_orange,c_yellow,c_white);
}

// Attraction
var Atractor_H = 0;
var Atractor_V = 0;
if(instance_exists(obj_Atractor)) {
    var Atractor = instance_nearest(x,y,obj_Atractor);
    if(distance_to_object(Atractor) < 100) {
        var Atractor_D = point_direction(x,y,Atractor.x,Atractor.y);
        Atractor_H += 0.35 * cos(degtorad(Atractor_D));
        Atractor_V -= 0.35 * sin(degtorad(Atractor_D));
    }
}
if(instance_exists(obj_FloatingSkull)) {
    with(obj_FloatingSkull) {
		if(real(ID) == 58) {
		    var Atractor_D = point_direction(other.x,other.y,x,y);
		    Atractor_H += 0.35 * cos(degtorad(Atractor_D));
		    Atractor_V -= 0.35 * sin(degtorad(Atractor_D));
		}
	}
}

// Attract to nearest enemy
if(player_has_pet(88)) {
	if(instance_exists(parent_Enemigo)) {
		var e = instance_nearest(x,y,parent_Enemigo);
		var Atractor_D = point_direction(x,y,e.x,e.y);
		Atractor_H += 0.35 * cos(degtorad(Atractor_D));
		Atractor_V -= 0.35 * sin(degtorad(Atractor_D));
	}
}

// Move&Stop
if(place_free(x+hSpeed+Atractor_H,y)) x += hSpeed+Atractor_H;
if(place_free(x,y+vSpeed+Atractor_V)) y += vSpeed+Atractor_V;
vSpeed *= 0.9;
hSpeed *= 0.9;