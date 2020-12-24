action_inherited();
/// Efecto wiggle del sprite
var k = 0.07;
xscale = approach(xscale, 1, k);
yscale = approach(yscale, 1, k);



///Move & Charge
if(instance_exists(fxTransition2))exit;
if(alarm[3]>0) exit;
if (charging > 0) && ( Charger )
{
    //image_speed = 0;
    charging--;
    if (vx == 0 && vy == 0)
    {
        charging = 0;
    }
}
else
{
    if (instance_exists(obj_Jugador))
    {
        var dir = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
        ground_acc = 0.1;
        move_x = lengthdir_x(1, dir);
        move_y = lengthdir_y(1, dir);
        if (charge_timer < room_speed) and ( Charger )
        {
            if(sprite_index != sprJefeGreenGigadusaCharge) {
                sprite_index = sprJefeGreenGigadusaCharge;
                image_index = 0;
            }
            
            if (sprite_index == sprJefeGreenGigadusaCharge)
            {
                if(image_index < 6) {   
                    move_x = 0;
                    move_y = 0;
                } else {
                    charge_timer = room_speed*random_range(4, 4);
                    dir = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
                    set_speed(charge_speed, dir);
                    charging = room_speed;
                    canim = false;
                    image_speed = 0.25;
                    
                    repeat(3) {
                        if(instance_number(parent_Enemigo) < 10) {
                            var Summoning = instance_create(x, y, get_enemy(5, 0));
                            Summoning.ID = 5;
                            with(Summoning) event_perform(ev_other, ev_user15);
                        }
                    }
                audio_play_sound(choose(sndBossGrunt01,sndBossGrunt02,sndBossGrunt03),0,0);

                    
                }
            }
        }
        else
        {
            //Go back to normal animation speed after charging
            image_speed = 0.25;
        }
        //Decrease the timer
        charge_timer--;
    }
}



