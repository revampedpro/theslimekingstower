// Transicion a empezar el juego
global.Control_Sonido++;
audio_master_gain(1);
if( global.Control_Sonido > 1 ) { 
    audio_master_gain(0);
    global.Control_Sonido = 0;
}

