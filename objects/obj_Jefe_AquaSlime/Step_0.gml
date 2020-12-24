/// @description  Morir
if( HP <= 0 ) instance_destroy();

// Regenerar salud
if(distance_to_object(obj_Jugador) > 128) and (obj_Jugador.Pet_Bonus_Boss_AquaSlime == false) {
    HP += 1;
    if(HP > Max_HP) HP = Max_HP;
    
    // Brillar
    var FX = create_effect(x-14+random(28),y-14+random(28),sprSparkle,0.1 + random(2)/10);
    FX.depth = depth-1;
    
}

