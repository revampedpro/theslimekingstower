/// @description  Variables de mob

// Summoner
Summoner    = -1;
Summon_Time = -1;
alarm[4] = Summon_Time/2 + random(Summon_Time/2);

// Sonidos
Sonido_Muerte = snd_Slime_Die;

// Obtener variables de la base de datos
/*
Sprite              = get_enemy( ID, 8 );
Sprite_Die          = get_enemy( ID, 9 );
Sprite_Die_Leftover = get_enemy( ID, 10 );
Color_Sangre        = get_enemy( ID, 11 );
Sprite_Guts         = get_enemy( ID, 12 );
Friccion_Entre_Entidades = get_enemy( ID, 15 );
Charger             = get_enemy( ID, 16 );
sprite_index = Sprite;
*/

// Variables de stats
Knockback = 0;
Max_HP = 1000;
HP = Max_HP;
Fuerza = 2; // Daño de ataque
Velocidad_Disparo = 5; // Velocidad del disparo
Cadencia_Disparo = 4; // Balas/segundo
Caida_Disparo = 30; // Tiempo antes de que la bala empiece a caer

// No usadas
Velocidad_H = 0;
Velocidad_V = 0;
Velocidad_H_Max = 0;
Velocidad_V_Max = 0;

/* */
/*  */
