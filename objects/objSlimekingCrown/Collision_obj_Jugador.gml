// Pick this up
if(sprite_index == sprSlimekingDarkCrown) {
    dungeon_next_level();
}
if(alarm[0] < 0) {
    obj_Jugador.Show_Item_ID = 998;
	obj_Jugador.ShowItemID = -1;
    obj_Jugador.hSpeed = 0;
    obj_Jugador.vSpeed = 0;
    audio_play_sound(snd_Get_Item_Big, 1, 0);
    obj_Jugador.alarm[4] = 120;
    instance_create(0, 0, fx_Game_End);
    global.Slime_King_Dead = true;
    obj_Jugador.crownTaken = true;
    with(obj_Jugador) event_perform(ev_other, ev_user10);
    instance_destroy();
}

