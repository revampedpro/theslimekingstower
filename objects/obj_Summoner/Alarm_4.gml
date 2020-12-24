/// @description  Summon monster
if(alarm[11] > 0) { alarm[4]=2; exit; }
if( Summoner > -1 ) {

    var Summoning = instance_create( x, y, get_enemy( Summoner, 0 ) );
    Summoning.ID = Summoner;
    with(Summoning) event_perform( ev_other, ev_user15 );
    Summoning.no_drops = true;
    if(obj_Jugador.Pet_Bonus_Summoner) Summoning.HP = 1;
    alarm[4] = Summon_Time/2 + random(Summon_Time/2);
    xscale = 1.4;
    yscale = 1.4;

}

