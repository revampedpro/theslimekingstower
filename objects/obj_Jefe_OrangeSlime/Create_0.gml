action_inherited();
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

blood_colour = make_color_rgb(223,113,38);


// Variables de image
image_speed = 0.2;

// ID
ID = control_Dungeon.Dungeon_Boss;

// Sonidos
Sonido_Muerte = get_boss( ID, 3 );

// Fisicas
Expansion = 5;
Velocidad_H = choose(1,-1)     * (1+((4-Expansion) * 0.10));
Velocidad_V = choose(1,-1)     * (1+((4-Expansion) * 0.10));
Velocidad_H_Max = choose(1,-1) * (1+((4-Expansion) * 0.10));
Velocidad_V_Max = choose(1,-1) * (1+((4-Expansion) * 0.10));
Direccion = choose(90,180,270,0) + 45;
Altura = 0;
xscale = 1;
yscale = 1;
image_xscale = 0.5 + (Expansion * 0.10);
image_yscale = 0.5 + (Expansion * 0.10);

// Variables de combate
Fuerza = get_boss(ID, 6); // Daño de ataque
Max_HP = get_boss(ID, 4);
HP = Max_HP;
Color_Sangre = make_color_rgb(223,113,38);


