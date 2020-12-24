// Skeleton Mage
if(real(ID) == 57) {
	image_speed = 0;
	var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball);
	Fireball.Fuerza = Fuerza;
	Fireball.sprite_index = sprSkeletonMageProjectile;
	Fireball.follow = true;
	Fireball.alarm[1] = 120; // Stop following after 2 seconds
	audio_stop_sound(sndSkeletonMageFire);
	audio_play_sound(sndSkeletonMageFire,0,0);
	create_effect(x,y,sprFxPurpleMuzzy,1);
	exit;
}

// Skeleton Summoner
if(real(ID) == 60) {
	var D = choose(0,90,180,270);
	repeat(2) {
        var Skull = instance_create(x,y,obj_MageSkeleton_Fireball);
        Skull.Direction = D;
        Skull.DirectionSpeed = 2;
		Skull.sprite_index = sprThrowableSkull;
		Skull.alarm[0] = 60 + random(120);
        D += 360/8;
    }
	if(choose(0,1)) image_speed = 0;
	exit;
}

image_speed = 0;
var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball);
Fireball.Fuerza = Fuerza;
audio_stop_sound(sndFireball);
audio_play_sound(sndFireball,0,0);
create_effect(x,y,sprFxEnemyMuzzy,1);