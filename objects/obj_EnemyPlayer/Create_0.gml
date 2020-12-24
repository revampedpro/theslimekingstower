action_inherited();
///Set variables
ground_acc = 0.05;
ground_frict = 0.025;
image_speed = .2;
damage = 1;
move_speed = .4;
hp = 60;
max_hp = 60;
Altura = 0;
xscale = 1;
yscale = 1;
Objetivo = noone;
shoot_timer = 0;

//blood_colour = c_white;

// Enemies custom
get_character(choose(0,0,0,0,0,0,1,1,1,2,3,4,5,5,5,6,7))
name = "UNDEFINED";
ds_list_shuffle(global.PLAYER_NAMES);
name = ds_list_find_value(global.PLAYER_NAMES,0);
spawner = instance_random(obj_Enemigo_Spawner);
dir = 0;
Disparo_Move = 1;
bullets = irandom_range(6,10);