/// @description  Variables de mob

// Summoner
Summoner    = get_enemy( ID, 13 );
Summon_Time = get_enemy( ID, 14 );
alarm[4] = Summon_Time/2 + random(Summon_Time/2);

// Sonidos
Sonido_Muerte = get_enemy( ID, 17 );

// Obtener variables de la base de datos
Sprite_Up           = get_enemy( ID, 4 );
Sprite_Down         = get_enemy( ID, 5 );
Sprite_Left         = get_enemy( ID, 6 );
Sprite_Right        = get_enemy( ID, 7 );
Sprite_Die_Leftover = get_enemy( ID, 10 );
Friccion_Entre_Entidades = get_enemy( ID, 15 );

// Variables ETC
Color_Sangre = get_enemy( ID, 11 );

// Variables de stats
Knockback = 0;
Max_HP = get_enemy( ID, 1 );
HP = Max_HP;
HP = 1+irandom(30) + random(20)*(player_has_pet(54));
Fuerza = get_enemy( ID, 3 );; // Daño de ataque
Velocidad_Disparo = 5; // Velocidad del disparo
Cadencia_Disparo = 4; // Balas/segundo
Caida_Disparo = 30; // Tiempo antes de que la bala empiece a caer

// No usadas
Velocidad_H = 0;
Velocidad_V = 0;
Velocidad_H_Max = 0;
Velocidad_V_Max = 0;

if(choose(0,0,1)) instance_destroy();
//GoogleAnalytics_SendEvent("enemy_appears",string(ID));

