if(global.Jugador_Monedas >= 99) exit;
// Drop money
ini_open("save.ini");
var coins = ini_read_real("S", "MG", 0);
if(coins > 0) {
/*
    var m = instance_create(x,y,obj_Moneda);
    m.hspeed = -1 + random(2);
    m.vspeed = -1 + random(2);
*/
    global.Jugador_Monedas++;
    ini_write_real("S","MG",coins-1);
    audio_play_sound(snd_Moneda, 0, 0);
    control_UI.alarm[0] = 10;
    xscale = 1.5;
    yscale = 1.5;
    with(other) instance_destroy();
    global.Monedas_General = ini_read_real("S", "MG", 0);
    alarm[1] = 15;
    coins--;
}
ini_close();

/* */
/*  */
