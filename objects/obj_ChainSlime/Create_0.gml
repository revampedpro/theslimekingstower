action_inherited();
///Set variables
move_speed = 0.3;
ground_acc = 0.05;
ground_frict = 0.025;
image_spd = .2;
damage = 1;
Altura = 0;

charge_timer = room_speed*random_range(3, 6);
charging = false;
charge_speed = 5;
xscale = 1;
yscale = 1;

blood_colour = make_colour_rgb(120, 120, 120);
var chain = instance_create(x, y, obj_ChainSlimeChainBall);
chain.parent = id;

