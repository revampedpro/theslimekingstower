/// @description  Tiempo pensar entre saltos
if(!instance_exists(obj_Jugador)) exit;
/*
alarm[0] = 300 * choose(0.5,.75,1);
if(instance_number(parent_Enemigo) < 8) {
    var Summoning = instance_create(x, y, get_enemy(9, 0));
    Summoning.ID = 9;
    with(Summoning) event_perform(ev_other, ev_user15);
}
*/
exit;
/*
alarm[0] = 300; // Tiempo pensar entre saltos
if(saltos_consecutivos < choose(3,4)) {
    alarm[0] = 80;
    saltos_consecutivos++;
} else {
    saltos_consecutivos = 0;
}
    {
        if(instance_number(parent_Enemigo) < 16) {
            var Summoning = instance_create(x, y, get_enemy(18, 0));
            Summoning.ID = 18;
            with(Summoning) event_perform(ev_other, ev_user15);
        }
    }
Salto_Inicio_X = x;
Salto_Inicio_Y = y;
Waypoint_X = obj_Jugador.x;
Waypoint_Y = obj_Jugador.y;
Saltar = true;
xscale = 0.5;
yscale = 1.5;

/* */
/*  */
