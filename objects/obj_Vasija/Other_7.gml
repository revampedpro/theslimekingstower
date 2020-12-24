if(sprite_index == sprPotMonsterAppears) {
    var Summoning = instance_create(x, y, get_enemy(28, 0));
    Summoning.ID = 28;
    with(Summoning) event_perform(ev_other, ev_user15);
    instance_destroy();
}

