action_inherited();
///Set variables
move_speed = 0.5;
ground_acc = 0.05;
ground_frict = 0.025;
image_speed = .2;
damage = 1;

hp = 500;
max_hp = 500;

charge_timer = room_speed*random_range(3, 6);
charging = false;
charge_speed = 5;

attack_timer = charge_timer+room_speed*random_range(1, 3)*choose(-1, 1);
attacking = false;

blood_colour = make_colour_rgb(120, 66, 140);
Color_Sangre = make_colour_rgb(120, 66, 140);

// Variables de image
image_speed = 0.2;

// ID
ID = control_Dungeon.Dungeon_Boss;

// Sonidos
Sonido_Muerte = get_boss( ID, 3 );

// Fisicas
Velocidad = 0;
Velocidad_H = 0;
Velocidad_V = 0;
Velocidad_Max = 3;
Aceleracion = 1;
Altura = 0;
xscale = 1;
yscale = 1;

// I.A
alarm[0] = 100 + random(200); // Tiempo pensar entre saltos
Salto_Inicio_X = -1;
Salto_Inicio_Y = -1;
Waypoint_X = -1;
Waypoint_Y = -1;
Knockback = 0;

// Variables de combate
Fuerza = get_boss(ID, 6); // Daño de ataque
Max_HP = get_boss( ID, 4 );
HP = Max_HP;

