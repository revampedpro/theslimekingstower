action_inherited();
///Move & Charge
if(instance_exists(fxTransition2))exit;
if(alarm[3]>0) exit;
if (!attacking)
{
    if (charging > 0)
    {
        image_speed = 0;
        charging--;
        if (vx == 0 && vy == 0)
        {
            charging = 0;
        }
        if (percent_chance(20))
        {
            var xx = x+random_range(6, -6);
            var yy = y+random_range(5, -5);
            var s = random_range(0.8, 1.5);
            draw_to_floor(sprBlood, 0, xx, yy, s, s, 0, blood_colour, 0.7);
        }
    }
    else
    {
        if (instance_exists(obj_Jugador))
        {
            //Move towards player
            var dir = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
            acc = 0.1;
            move_x = lengthdir_x(1, dir);
            move_y = lengthdir_y(1, dir);
            
            //Check if we want to charge
            if (charge_timer < room_speed)
            {
                //Increase animation speed while getting ready to charge... it's cute, right?
                image_speed = 0.5;
                move_x = 0;
                move_y = 0;
                if (charge_timer < 0)
                {
                    //Charge!
                    charge_timer = room_speed*random_range(2, 4);
                    dir = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
                    set_speed(charge_speed, dir);
                    charging = room_speed;
                    audio_play_sound(choose(sndBossGrunt01,sndBossGrunt02,sndBossGrunt03),0,0);
                }
            }
            else
            {
                //Go back to normal animation speed after charging
                image_speed = 0.2;
            }
            
            //Check if we want to attack
            if (attack_timer < 0)
            {
                attack_timer = room_speed*random_range(3, 5);
                attacking = true;
                sprite_index = sprGiantSlimeCharge;
                image_index = 0;
                image_speed = 0.4;
                move_x = 0; //stop moving
                move_y = 0;
            }
            
            //Decrease the timers
            charge_timer--;
            attack_timer--;
        }
    }
}
else
if (sprite_index == sprGiantSlimeShoot)
if (percent_chance(10))
{
    var xx = x+random_range(16, -16);
    var yy = y+random_range(14, -14);
    var s = random_range(1, 1.5);
    draw_to_floor(sprBlood, 0, xx, yy, s, s, 0, blood_colour, 1);
}


