/// @description  Morir
if( HP <= 0 ) instance_destroy();

// Regenerar salud
/*
if(Regenerando == true) {
    HP += 1;
    if(HP > Max_HP) HP = Max_HP;
    
    // Brillar
    var FX = create_effect(x-14+random(28),y-14+random(28),sprSparkle,0.1 + random(2)/10);
    FX.depth = depth-1;
    
}
*/
if(Regenerando == true)  sprite_index = spr_Jefe_GlowSlime;
if(Regenerando == false) sprite_index = spr_Jefe_GlowSlime_Not;

/* */
/*  */
