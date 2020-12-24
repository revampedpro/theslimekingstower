action_inherited();
///Create splash effect
repeat(irandom_range(1, 2))
{
    var s = random_range(0.3, 0.6);
    var a = random_range(0.6, 0.8);
    var xx = x+irandom_range(4, -4);
    var yy = y+z+irandom_range(3, -3);
    //draw_to_floor(sprBlood, 0, x, y+z, s, s, 0, splash_colour, a);
}


