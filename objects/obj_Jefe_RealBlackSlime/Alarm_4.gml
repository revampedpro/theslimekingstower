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
            if(instance_number(parent_Enemigo) < 10) {
                switch(choose(0,1)) {
                    case 0:
                        repeat(irandom_range(5,8)) {
                            enemy_spawn = spawn(x, y, 2);
                            enemy_spawn.no_drops = true;
                        }
                    break;
                    case 1:
                        repeat(irandom_range(2,3)) {
                            enemy_spawn = spawn(x, y, 14);
                            enemy_spawn.no_drops = true;
                        }
                    break;
                }
            }
            x = X;
            y = Y;
            break;
        }
    }

    Alpha = 0.1;
}
alarm[4] = 200;
audio_play_sound(sndUseItem,0,0);

