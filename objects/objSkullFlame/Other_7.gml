// Create fireball
if(instance_exists(obj_Jugador) and (!player_has_item(162))) {
    switch(dir) {
        case 0: var Fireball = instance_create(x+12, y+24, obj_MageSkeleton_Fireball); Fireball.Direction = 270; Fireball.image_angle = 270; break;
        case 1: var Fireball = instance_create(x+24, y+12, obj_MageSkeleton_Fireball); Fireball.Direction = 0;   Fireball.image_angle = 0; break;
        case 2: var Fireball = instance_create(x+00, y+12, obj_MageSkeleton_Fireball); Fireball.Direction = 180; Fireball.image_angle = 180; break;
        case 3: var Fireball = instance_create(x+12, y+00, obj_MageSkeleton_Fireball); Fireball.Direction = 90;  Fireball.image_angle = 90; break;
    }
    Fireball.Fuerza = 1;
}
alarm[0] = 150 + random(150);
image_speed = 0;
image_index = 0;

