// Vars
image_speed = 0.25;
Speed = 1;
sprUp    = get_pet(global.Jugador_Pet, 3);
sprDown  = get_pet(global.Jugador_Pet, 4);
sprLeft  = get_pet(global.Jugador_Pet, 5);
sprRight = get_pet(global.Jugador_Pet, 6);
d = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
s = get_pet(global.Jugador_Pet, 7);
image_xscale = 1 - 0.2 * s;
image_yscale = 1 - 0.2 * s;
visible = global.PetVisible;

