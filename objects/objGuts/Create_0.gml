action_inherited();
///Set variables
ground_frict = 0.4;
rotate = 1;
blood_trail = true;
blood_colour = c_white;
image_index = irandom(image_number-1);


// Morir
alarm[0] = random(300) + 180;

// Limit guts number
if(instance_number(objGuts)>(10+10*global.Quality)) with(objGuts.id) instance_destroy();

