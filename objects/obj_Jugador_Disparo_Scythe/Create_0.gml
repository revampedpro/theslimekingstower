if(!instance_exists(obj_Jugador)) {
    instance_destroy(); 
    exit; 
}
Angulo = 0;
attackSpeed = 20 - min(8,(obj_Jugador.Cadencia_Disparo/10));;
attackDelay = 10 - min(8,(obj_Jugador.Cadencia_Disparo/10));
Altura = 16;
Delay_Antes_De_Caer = 60;
Sustain_Time = 60;
shadow_size = 4;
Angulo = 0;
Check_Solid = false;
Angulo_Rotacion = 0;
Velocidad_H = 0;
Velocidad_V = 0;
Aceleracion = 0.5;
Expandir = false;
Rebotes = 2;
event_inherited();
targetListBased = true;
My_Fuerza += 4;

