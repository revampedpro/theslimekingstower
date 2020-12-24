action_inherited();
///Set variables
image_index = random(image_number);
splash_colour = make_colour_rgb(120, 66, 140);
weight = random_range(0.02, 0.05);
Altura = 0;

//Fire in a random direction (and up in the air a little)
z = irandom_range(8, 16);
vz = random_range(0, -1);
set_speed(random_range(2, 4), random(360));


