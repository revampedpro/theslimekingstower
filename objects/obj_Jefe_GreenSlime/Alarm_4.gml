/// @description  Summon monster
if(Summoner > -1) and (instance_number(parent_Enemigo)<10) {
    Summoner = irandom(get_enemy(-1,18));
    var Summoning = instance_create( x, y, get_enemy( Summoner, 0 ) );
    Summoning.ID = Summoner;
    with(Summoning) event_perform( ev_other, ev_user15 );
    Summoning.no_drops = true;
    alarm[4] = Summon_Time/2 + random(Summon_Time/2);
    xscale = 1.4;
    yscale = 1.4;

}

