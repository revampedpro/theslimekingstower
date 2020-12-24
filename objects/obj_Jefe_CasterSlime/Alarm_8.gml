// Fire wave
switch(choose(0,1)) {

    case 0:
        var s = 0;
        repeat(5) {
            var Fire = instance_create(180-16, 108 + s, obj_Jefe_Fuego );
            Fire.Direction = 0;
            Fire.Velocidad_Direction = choose(1,-1);
            Fire.Velocidad = 2;
            s += 24;
        }
    break;

    case 1:
        var s = 0;
        repeat(5) {
            var Fire = instance_create(444+16, 108 + s, obj_Jefe_Fuego );
            Fire.Direction = 180;
            Fire.Velocidad_Direction = choose(1,-1);
            Fire.Velocidad = 2;
            s += 24;
        }
    break;
    
}

