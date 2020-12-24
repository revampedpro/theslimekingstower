action_inherited();
///Movement

///Set acceleration and friction
if( global.Pausado ) exit;
var acc = ground_acc;
var frict = ground_frict;

///Movement
//Left
if (move_x < 0)
{
    if (vx >= -move_speed)
    {
        vx = approach(vx, move_speed*move_x, acc);
    }
    else
    {
        vx = approach(vx, move_speed*move_x, frict);
    }
}
//Right
if (move_x > 0)
{
    if (vx <= move_speed)
    {
        vx = approach(vx, move_speed*move_x, acc);
    }
    else
    {
        vx = approach(vx, move_speed*move_x, frict);
    }
}
//Up
if (move_y < 0)
{
    if (vy >= -move_speed)
    {
        vy = approach(vy, move_speed*move_y, acc);
    }
    else
    {
        vy = approach(vy, move_speed*move_y, frict);
    }
}
//Down
if (move_y > 0)
{
    if (vy <= move_speed)
    {
        vy = approach(vy, move_speed*move_y, acc);
    }
    else
    {
        vy = approach(vy, move_speed*move_y, frict);
    }
}

///Friction
if (move_x == 0)
{
    vx = approach(vx, 0, frict);
}
if (move_y == 0)
{
    vy = approach(vy, 0, frict);
}





///Take damage
///The take_damage variable is set (to the number of damage taken) 
///when you want an entity to take damage.
///This bit of code reduces their hp by the amount of damage.
if( global.Pausado ) exit;
if (take_damage > 0)
{
    //Reduce the entity's hp
    hp -= take_damage;
    //If hp is less than 0 destroy the entity.
    //Death animations and whatnot should be handled
    //in the "destroy" event.
    if (hp <= 0)
    {
        instance_destroy();
    }
    //Reset the take_damage variable
    take_damage = 0;
    //Check if we want to become invincible
    //for a second after being hit.
    //OR flash white for 6 steps.
    if (invincible_when_hit)
    {
        invincible = room_speed;
    }
    else
    {
        damage_timer = 6;
    }
    //Create a blood splat effect
    //and draw some blood splats on the floor
    var fx = create_effect(x, y, sprSplat2, 1/3);
    fx.image_blend = blood_colour;
    repeat(3)
    {
        var v = 6;
        var xx = x+random_range(v, -v);
        var yy = y+random_range(v, -v);
        var sc = random_range(0.25, 0.7);
        draw_to_floor(sprBlood, 0, xx, yy, sc, sc, 0, blood_colour, 0.8);
    }
}
damage_timer--;
invincible--;


