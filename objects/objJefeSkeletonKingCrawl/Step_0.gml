/// @description  Behaviour
if(instance_exists(fxTransition2))exit;
if(global.Pausado) exit;
if(alarm[3]>0) exit;
if(HP <= 0) instance_destroy();

// Phase change
if(phase != 1) {
	if(phase_timer < phase_timer_max) {
	    phase_timer++;
	} else {
	    phase_timer = 0;
	    phase++;
	    if(phase > phase_max) phase = 2;
	}
}

// Phase 1: Intro animation
if(phase == 1) and (instance_exists(obj_Jugador)) {

    sprite_index = sprBossSkeletonKingDeath;

}

// Phase 2: Follow player
if(phase == 2) and (instance_exists(obj_Jugador)) {

	image_speed = 0.2;
	
    sprite_index = sprBossSkeletonKingCrawler;
	
	var ph_spd = 0.75;
    var ph_dir = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
    x += ph_spd*cos(degtorad(ph_dir));
    y -= ph_spd*sin(degtorad(ph_dir));

}

// Phase 3: Throw rocks to the player
if(phase == 3) and (instance_exists(obj_Jugador)) {

	image_speed = 0.8;

	var xx = obj_Jugador.x;
	var yy = obj_Jugador.y;

	timer_rocks--;
	if(timer_rocks <= 0) {
		timer_rocks = 30;
		repeat(irandom_range(5,9)) {
			var rocks = instance_create(round((xx-64+random(128))/24)*24, round((yy-64+random(128))/24)*24, objFallingRock);
			rocks.y2 += 100+random(100);
			rocks.spd *= 2;
		}
		var s = audio_play_sound(sndBossGrunt01,0,0);
		audio_sound_pitch(s,1.5+random(5)/10);
		var s = audio_play_sound(snd_Grito_05,0,0);
		audio_sound_pitch(s,0.5+random(5)/10);
		var s = audio_play_sound(snd_Bat_Die,0,0);
		audio_sound_pitch(s,1.5+random(5)/10);
		var s = audio_play_sound(snd_Bat_Die,0,0);
		audio_sound_pitch(s,1.5+random(5)/10);
	}
	
}