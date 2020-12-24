if(instance_exists(obj_Jugador)) {
    alarm[9] = 60;
    obj_Jugador.alarm[9] = 60;
} else {
    //instance_destroy();
}
if(Parent != -1) depth = Parent.depth+2;