// Explode
var e = instance_create(x, y, objBombExplosion);
if(player_has_item(350)) {
	e.image_xscale *= 2;
	e.image_yscale *= 2;
}
audio_stop_sound(snd_Bomb);
audio_play_sound(snd_Bomb, 0, 0);
instance_destroy();
shake_camera(5,5);

// Create particles on the floor
if(global.Quality == 2) {
	repeat(5*global.Quality) {
	    var v = 6;
	    var xx = x+random_range(v, -v);
	    var yy = y+random_range(v, -v);
	    var sc = random_range(0.25, 0.7);
	    var in = instance_create(xx,yy,fx_Sprite_Persistent);
	    in.image_xscale = sc;
	    in.image_yscale = sc;
	    in.sprite_index = sprBlood;
	    in.image_blend = make_color_rgb(20,20,20);
	    in.image_alpha = 0.8;
		in.image_angle = random_range(-20,20);
	}
}

// Create cluster bombs
if(cluster == false) and player_has_item(305) {
	repeat(4) {
		var a = random(360);
		var b = instance_create(x,y,objBomb);
		b.cluster = true;
		b.hSpeed = 2 * cos(degtorad(a));
		b.vSpeed = 2 *-sin(degtorad(a));
		b.image_xscale *= .75;
		b.image_yscale *= .75;
		b.image_index += irandom(10);
	}
}

// Orb shoot
if(orb_shoot) {
	if(!instance_exists(obj_Jugador))exit;
	var Disparo_Angulo = random(360);
	repeat(5) {
	    Disparo_Angulo += 360/5;
	    bullet_spawn(x,y,1,1,Disparo_Angulo);
	}
	instance_destroy();
}

// Tell your partner that this bomb has exploded
if(network_is_online()) {
	pack_send_multi("bombExplosion","netid",netid);	
}