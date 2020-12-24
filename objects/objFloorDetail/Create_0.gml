action_inherited();
/// Morir
alarm[0] = random(300) + 180;

///Set variables
ground_frict = 0.4;
rotate = 1;

///Set speed
var s = random_range(2, 5);
if (percent_chance(10))
{
    s *= 2;
}
set_speed(s, random(360));
Desactivar = false;

// Limit shoot number
if(instance_number(objFloorDetail)>(10+10*global.Quality)) with(objFloorDetail.id) instance_destroy();


