action_inherited();
// Variables de image
image_speed = 0.2;

// ID
ID = control_Dungeon.Dungeon_Boss;

// Sonidos
Sonido_Muerte = get_boss(ID,3);

// Fisicas
Velocidad = 0;
Velocidad_H = 0;
Velocidad_V = 0;
Velocidad_Max = 4;
Aceleracion = 1;
Altura = 0;
xscale = 1;
yscale = 1;
damage = 1;

// I.A
Knockback = 0;

// Variables de combate
Fuerza = get_boss(ID, 6); // Daño de ataque
Max_HP = get_boss(ID, 4);
HP = Max_HP;

// color variables
blood_colour = make_colour_rgb(172, 50, 50);
Color_Sangre = make_colour_rgb(172, 50, 50);

// phases
phase = 1;
phase_max = 2;
phase_timer = 0;
phase_timer_max = 5*room_speed;

// custom for this boss
spawn_timer = 0;
spawn_timer_max = 60;

