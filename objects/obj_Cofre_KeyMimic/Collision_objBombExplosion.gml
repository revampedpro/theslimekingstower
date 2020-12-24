/// @description Destroy and create entrance to the skeleton lair
if(room == room_Arcade) exit;
if(room == room_BossRush) exit;

// Destroy
instance_destroy();

// Smoke
repeat(10) {
	var fx = create_effect(x-4+random(8),y-4+random(8),sprSmoke,0.2+random(2)/10);
	fx.vspeed = -(0.1+random(3)/10);
}

// Create entrance
instance_create(x,y,objSkeletonLairEntrance);