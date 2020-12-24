/// @description  Behaviour
if(instance_exists(fxTransition2))exit;
if(global.Pausado) exit;
if(alarm[3]>0) exit;
if(HP <= 0) instance_destroy();

// Jump
yspeed += yacc+(2*(HP>Max_HP/2));
Y += yspeed;
if(Y > 0) { if(yspeed>2.5) { audio_play_sound(sprSpikeBlockHit,0,0); } Y = 0; yspeed = 0;  }
Altura = -Y;

// Phase change
if(phase_timer < phase_timer_max) {
    phase_timer++;
} else {
    phase_timer = 0;
    phase++;
    if(phase > phase_max) phase = 2;
}

// Phase 1: Appear
if(phase == 1) and (instance_exists(obj_Jugador)) {

    sprite_index = sprMasterMimicAppear;

}

// Phase 2: Stay Idle
if(phase == 2) and (instance_exists(obj_Jugador)) {

    sprite_index = sprMasterMimicIdle;
	
	if(alarm[8]<0) alarm[8] = 20; // Throw coins
	
}

// Phase 3: Chase the player
if(phase == 3) and (instance_exists(obj_Jugador)) {

    sprite_index = sprMasterMimicAttack;
	
	var ii = floor(image_index);
	if(ii == 1 or ii == 4) and (Y == 0) {
		audio_stop_sound(sndBombDrop);
		audio_play_sound(sndBombDrop,0,0);	
	}
	
	var ph_spd = 1.0;
	if(ii > 0 and ii < 3) or (ii > 3 and ii < 6) ph_spd = 1.5;
    var ph_dir = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
    if(place_free(x+(ph_spd*cos(degtorad(ph_dir))),y)) x += ph_spd*cos(degtorad(ph_dir));
    if(place_free(x,y-(ph_spd*sin(degtorad(ph_dir))))) y -= ph_spd*sin(degtorad(ph_dir));
	


}

