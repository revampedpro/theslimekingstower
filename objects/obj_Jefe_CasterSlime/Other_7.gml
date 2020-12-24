/// @description Cast pursue ball
if(chance(40)) {
	var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball);
	Fireball.Fuerza = Fuerza;
	Fireball.sprite_index = sprSkeletonMageProjectile;
	Fireball.follow = true;
	Fireball.alarm[1] = 120; // Stop following after 2 seconds
	audio_stop_sound(sndSkeletonMageFire);
	audio_play_sound(sndSkeletonMageFire,0,0);
	create_effect(x,y,sprFxPurpleMuzzy,1);
}