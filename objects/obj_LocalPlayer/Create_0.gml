/// @description  Variables

// Fisicas
Velocidad_H = 0;
Velocidad_V = 0;
Velocidad_H_Max = 1.35;
Velocidad_V_Max = 1.35;
Aceleracion_H = 0.5;
Aceleracion_V = 0.5;
Fuerza_Rozamiento = 0.5;

// Skill
Cargas = 999;
Cargas_Max = 999;

// Variables de combate
HP_Max = 6;
HP = HP_Max;
HP_Extra[0] = -1;
HP_Extra_Q[0] = 0;
HP_Extra_S = 0;
Knockback = 0.5; // Cantidad de knockback que haces a los enemigos
Fuerza = 2; // Daño de ataque
Velocidad_Disparo = 2.5; // Velocidad del disparo
Cadencia_Disparo = 4.5; // Balas/segundo
Penetracion_Disparo = 0; // Veces que puede penetrar un disparo
Caida_Disparo = 20; // Tiempo antes de que la bala empiece a caer
Delay_Invencibilidad = 90; // Tiempo durante el que no puedes ser golpeado
Bullet_Size = 1; // Tamaño de la bala
Tipo_Municion = obj_Jugador_Disparo; // Tipo de municion
Rockets = 0; // The amount of rockets the player has
Level = 1;
Lives = 0;
Flying = true; // Is the player flying?
wings_index = 0; // Control index of the wings' animation
Experience = 0;
Experience2 = 0;
ExperienceMax = 100;
AbsorbedItems[0] = -1;

// Consumables
keys = 4;
bosskey = false;
bombs = 12;
doubletap = -1;

// Bonus temporales
temp_Fuerza = 0;
temp_Cadencia_Disparo = 0;
temp_Strike = false;
Rafaga = 0;
Fuerza_Temporal = 0;
deodorant_counter = 0;
can_attack = true;
can_recharge = false;
use_item_on_attack = false;
paralisis = -1;
Pray = false;

// Etc
recolocate = -1;
crownTaken = false;

// Image
image_speed = 0.15;
image_Direction = 0;
Show_Item_ID = -1;
Disparo_Move = -1;
flashColor = c_white;
bulletShootAnimation = false;

// Load hero
var starting_items = get_character(global.characterSelected);
sprite_index = spr_Parado_Abajo;
sprWings = sprPlayerWings;

// Controller
controlledBy = -1;
despawn = 0;

