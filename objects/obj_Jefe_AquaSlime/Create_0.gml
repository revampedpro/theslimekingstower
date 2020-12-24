action_inherited();
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
instance_create(x, y, obj_Jefe_AquaSlime_Aura);

///Set variables
move_speed = 0.5;
ground_acc = 0.05;
ground_frict = 0.025;
image_spd = .2;
damage = 1;
Altura = 0;

charge_timer = room_speed*random_range(3, 6);
charging = false;
charge_speed = 5;
xscale = 1;
yscale = 1;

blood_colour = make_colour_rgb(58, 188, 216);
Color_Sangre = make_colour_rgb(58, 188, 216);


/// Variables de mob

// Summoner
Summoner    = -1;
Summon_Time = -1;
//alarm[4] = Summon_Time/2 + random(Summon_Time/2);

// Sonidos
//Sonido_Muerte = get_enemy( ID, 17 );

// Obtener variables de la base de datos
/*
Sprite              = get_enemy( ID, 8 );
Sprite_Die          = get_enemy( ID, 9 );
Sprite_Die_Leftover = get_enemy( ID, 10 );
Color_Sangre        = get_enemy( ID, 11 );
Sprite_Guts         = get_enemy( ID, 12 );
Friccion_Entre_Entidades = get_enemy( ID, 15 );
*/
Charger = true;


/* */
/*  */
