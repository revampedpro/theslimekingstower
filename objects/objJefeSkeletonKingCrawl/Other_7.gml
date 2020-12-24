// Change phase
if(phase == 1) {
	
	// Destroy fake transition
	with(fx_Transition_Out_Full) instance_destroy();
	
	// Flash
	flash(10,c_white);
	
	// Go to phase 2
	phase = 2;
	
	// Appear effects
	repeat(5) create_effect(x+random_range(-4,4),y+random_range(-4,4),sprFxBombMuzzy,0.7);
	audio_play_sound(sndChestAppears,0,0);
	audio_play_sound(sndBonesDestroy,0,0);
	audio_play_sound(sndBossGrunt01,0,0);
	audio_play_sound(sndBossGrunt02,0,0);
	audio_play_sound(sndBossGrunt03,0,0);
	audio_play_sound(snd_Bomb,0,0);
	
	// Summon Fire
	var D = 0;
	repeat(8) {
        var Fire = instance_create( x, y, obj_Jefe_Fuego );
		Fire.sprite_index = sprTomahawkSkull;
		Fire.image_speed = 0.3;
        Fire.Direction = D;
        Fire.Velocidad_Direction = 2;
        D += 360/8;
    }
	
	// Summon enemies
	repeat(8) spawn(x,y,19);
	
	// Throw bones
	alarm[7] = 360;
	
}