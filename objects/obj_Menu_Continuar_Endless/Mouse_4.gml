// Transicion a empezar el juego
if(!file_exists("temp2"))exit;
if(global.Comprobar_Primera_Vez == true)exit;
instance_create( 0, 0, fx_Transition_Out );
Activado = true;

