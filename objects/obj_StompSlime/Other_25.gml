// Variables de image
image_speed = 0.2;

// Summoner
Summoner    = get_enemy( ID, 13 );;
Summon_Time = get_enemy( ID, 14 );;
alarm[4] = Summon_Time/2 + random(Summon_Time/2);

// Sonidos
Sonido_Muerte = get_enemy( ID, 17 );

// Obtener variables de la base de datos
Sprite              = get_enemy( ID, 8 );
Sprite_Die          = get_enemy( ID, 9 );
Sprite_Die_Leftover = get_enemy( ID, 10 );
Color_Sangre        = get_enemy( ID, 11 );
Sprite_Guts         = get_enemy( ID, 12 );
Friccion_Entre_Entidades = get_enemy( ID, 15 );
sprite_index = Sprite;

// Variables de stats
Knockback = 0;
Max_HP = get_enemy( ID, 1 );
HP = Max_HP;
Fuerza = get_enemy( ID, 3 ); // Daño de ataque

// Fisicas
Velocidad = 0;
Velocidad_H = 0;
Velocidad_V = 0;
Velocidad_Max = 1.5;
Aceleracion = 1;
Altura = 0;
//xscale = 1;
//yscale = 1;

// I.A
alarm[0] = 100 + random(200); // Tiempo pensar entre saltos
Salto_Inicio_X = -1;
Salto_Inicio_Y = -1;
Waypoint_X = -1;
Waypoint_Y = -1;
Knockback = 0;

// Magic Sword
if(real(ID) == enemies.magic_sword) {
	Velocidad = 0.5;	
}

//GoogleAnalytics_SendEvent("enemy_appears",string(ID));

