// Vars
spd = 3;
target = -1;
Angulo  = 0;
Angulo2 = 0;
AnguloSPD = 0;

// Variables de la bala
Altura = 16;
Delay_Antes_De_Caer = 60;
Sustain_Time = 60;
shadow_size = 4;
Angulo = 0;
Check_Solid = false;
Angulo_Rotacion = 0;
Sprite = sprite_index;
Velocidad_H = 0;
Velocidad_V = 0;
Aceleracion = 0.5;
Expandir = false;
My_Fuerza = 0;
Rebotes = 2;

// Alarms
alarm[0] = Delay_Antes_De_Caer;
alarm[1] = 8;
alarm[2] = 1;

// Inherit bullet vars
event_inherited();

// Bullet specifics
targetListBased = false;
destroyable = true; 
damageMultiplier = 2.5;
if(player_has_item(252)) damageMultiplier *= 2;

// Get netid
netid = network_generate_id();