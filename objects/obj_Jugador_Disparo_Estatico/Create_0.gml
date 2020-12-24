// Variables de la bala
Altura = 16;
Delay_Antes_De_Caer = 60;
Sustain_Time = 60;
shadow_size = 4;
Angulo = 0;
Check_Solid = false;
Angulo_Rotacion = 0;
Sprite = sprBullet;
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
targetListBased = true;

