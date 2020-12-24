action_inherited();
///Set variables
ground_acc = 0.05;
ground_frict = 0.025;
image_speed = .4;
damage = 1;
move_speed = random_range(0.25, 0.75);
hp = 10;
max_hp = 10;
can_collide = false;
Altura = 0;
xscale = 1;
yscale = 1;
Squish = 0;

VX = .5;
VY = .5;
if(player_has_pet(74)) {
    VX /= 2;
    VY /= 2;
}

