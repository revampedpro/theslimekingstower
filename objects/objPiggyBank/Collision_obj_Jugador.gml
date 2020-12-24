// Insert money
if(global.Jugador_Monedas > 0) and (alarm[0] < 0) {
    ini_open("save.ini");
    global.Jugador_Monedas--;
    var coins = ini_read_real("S", "MG", 0);
    ini_write_real("S","MG",coins+1);
    audio_play_sound(snd_Moneda, 0, 0);
    alarm[0] = 60;
    control_UI.alarm[0] = 10;
    xscale = 1.5;
    yscale = 1.5;
    global.Monedas_General = ini_read_real("S", "MG", 0);
    alarm[1] = 15;
    ini_close();  
}

