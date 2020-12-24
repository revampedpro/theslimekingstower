/// @description  Summon monster
if(Summoner > -1) and (instance_number(parent_Enemigo)<10) {
    
    if(instance_number(parent_Jefe) < 2) and (miniboss == 2) {
        control_Dungeon.Dungeon_Boss = 1;
        instance_create(x, y, obj_Jefe_BlackSlime);
        alarm[4] = Summon_Time/2 + random(Summon_Time/2);
        exit;
    }
    var Summoning = instance_create(x, y, get_enemy(25, 0));
    Summoning.ID = 25;
    with(Summoning) event_perform( ev_other, ev_user15 );
    alarm[4] = Summon_Time/2 + random(Summon_Time/2);
    xscale = 1.4;
    yscale = 1.4;
}

