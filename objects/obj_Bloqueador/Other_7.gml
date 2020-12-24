// Create monster
if(sprite_index == sprBlockMonsterAppears) {
    var Summoning = instance_create(x+12, y+12, get_enemy(27, 0));
    Summoning.ID = 27;
    with(Summoning) event_perform(ev_other, ev_user15);
    instance_destroy();
}

