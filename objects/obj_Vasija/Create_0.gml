// Ajustarse
x += 12;
y += 12;

// Obtener variables para guardado
Posicion_i = global.Posicion_i;
Posicion_j = global.Posicion_j;
alarm[0] = 20;

// Pot Monster
potMonster = random(100) < 5;
if(obj_Jugador.Pet_Bonus_PotMonster) potMonster = false;
image_speed = 0.3;

