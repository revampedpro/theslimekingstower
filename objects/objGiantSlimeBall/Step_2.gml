action_inherited();
///Create "blood" trail
if (percent_chance(0.75))
{
    var s = random_range(0.4, 0.7);
    var a = random_range(0.6, 1);
    //draw_to_floor(sprBlood, 0, x, y+z, s, s, 0, splash_colour, a);
    var fx = instance_create(x, y+z, objFloorDetail);
    fx.sprite_index = sprBlood;
    fx.image_xscale = s;
    fx.image_yscale = s;
    fx.image_blend = splash_colour;
    fx.image_alpha = a;
}


