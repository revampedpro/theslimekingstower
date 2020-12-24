/// @description  Confundirse con el entorno
if( Alpha = 0.1 ) { 
    Alpha = 1; 
} else { 

    for( i = 0; i < 999; i++ ) {
        var X = irandom_range(168,432);
        var Y = irandom_range(96,216);
        if(place_free(X,Y) and point_distance(X,Y,obj_Jugador.x,obj_Jugador.y)>36) {
            repeat(4){
                var v = 8;
                var xx = x+random_range(-v, v);
                var yy = y+random_range(-v, v);
                var a = random_range(0.1, 0.4);
                create_effect(xx, yy, choose(sprSmoke, sprSmokeSmall), a);
            }
            x = X;
            y = Y;
            break;
        }
    }

    //Alpha = 0.1;
}
alarm[4] = 200;

