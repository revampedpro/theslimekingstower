// Pick this up
if(alarm[0] < 0) {
    obj_Jugador.Show_Item_ID = 999;
    obj_Jugador.hSpeed = 0;
    obj_Jugador.vSpeed = 0;
    audio_play_sound(snd_Get_Item_Big, 1, 0);
    obj_Jugador.alarm[4] = 120;
    instance_create(0, 0, fx_Game_End);
    global.Slime_King_Dead = true;
    obj_Jugador.crownTaken = true;
    with(obj_Jugador)event_perform(ev_other, ev_user10);
    
    if(global.Modo_Sub_Juego == "Daily") {
        ini_open("save.ini");
        if((ini_read_real("S", "DLR", 0)) != current_day) {
            ini_write_real("S", "DLR", current_day);
            global.Monedas_General+=200
        }
        ini_close();
    }
    
    instance_destroy();
}

