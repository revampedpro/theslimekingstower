action_inherited();
// Variables de image
image_speed = 0.2;

// ID
ID = 99;

// Sonidos
Sonido_Muerte = snd_Slime_Die;

// Fisicas
Velocidad = 0;
Velocidad_H = 0;
Velocidad_V = 0;
Velocidad_Max = 1;
Aceleracion = 1;
Altura = 0;
xscale = 1;
yscale = 1;

// I.A
Salto_Inicio_X = -1;
Salto_Inicio_Y = -1;
Waypoint_X = -1;
Waypoint_Y = -1;
Knockback = 0;

// Variables unicas del jefe
Fase = 0;

// Crea un subjefe aleatorio
var Sub_Jefe_ID = choose(0,1,2,4,5,6,7);
control_Dungeon.Dungeon_Boss = Sub_Jefe_ID;
var Sub_Jefe = instance_create( room_width/2, room_height/2, get_boss(Sub_Jefe_ID,0) );
Sub_Jefe.Friccion_Entre_Entidades /= 4;
Sub_Jefe.HP /= 2;
Sub_Jefe.Max_HP /= 2;
Friccion_Entre_Entidades /= 4;
control_Dungeon.Dungeon_Boss = 99;

// Variables de combate
Fuerza = get_boss(ID, 6); // Daño de ataque
Max_HP = 1000;
HP = Max_HP;
if(global.Mapa_Tipo == 11) sprite_index = spr_Jefe_KingSlimeNoCrown;

///Set variables
move_speed = 0.15;
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

blood_colour = make_colour_rgb(106, 190, 48);
Color_Sangre = make_colour_rgb(106, 190, 48);


/// Variables de mob

// Summoner
Summoner    = -1;
Summon_Time = 90;
Charger = true;


