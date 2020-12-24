/// @description Check for animation end
if (attacking)
{
    if (sprite_index == sprGiantSlimeCharge)
    {
        sprite_index = sprGiantSlimeShoot;
        image_index = 0;
        image_speed = 0.4;
        //Fire a load of slime balls
        repeat(30)
        {
            var a = instance_create(x, y, objGiantSlimeBall);
            a.parent = id;
            a.damage = 1;
        }
        audio_play_sound(sndBossSlime01,0,0);
    }
    else
    if (sprite_index == sprGiantSlimeShoot)
    {
        attacking = false;
        sprite_index = sprGiantSlime;
    }
}



