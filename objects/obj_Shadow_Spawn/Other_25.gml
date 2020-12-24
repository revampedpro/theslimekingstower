/// @description  Variables de mob

// Summoner
Summoner    = get_enemy( ID, 13 );;
Summon_Time = get_enemy( ID, 14 );;
alarm[4] = Summon_Time/2 + random(Summon_Time/2);

// Sonidos
Sonido_Muerte = get_enemy( ID, 17 );

// Obtener variables de la base de datos
Sprite              = get_enemy( ID, 8 );
Color_Sangre        = get_enemy( ID, 11 );
Friccion_Entre_Entidades = get_enemy( ID, 15 );
sprite_index = Sprite;

// Variables de stats
Knockback = 0;
Max_HP = get_enemy( ID, 1 );
HP = Max_HP;
Fuerza = get_enemy( ID, 3 ); // Daño de ataque

// Variables ETC

// Variables de stats
Knockback = 0;
Velocidad_Disparo = 5; // Velocidad del disparo
Cadencia_Disparo = 4; // Balas/segundo
Caida_Disparo = 30; // Tiempo antes de que la bala empiece a caer

// No usadas
Velocidad_H = 0;
Velocidad_V = 0;
Velocidad_H_Max = 0;
Velocidad_V_Max = 0;
//GoogleAnalytics_SendEvent("enemy_appears",string(ID));


