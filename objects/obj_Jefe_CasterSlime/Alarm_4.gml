/// @description  Summon monster

    // Crear rafaga de fuego
    var D = 0;
    switch( choose(0,1,2) ) {
    
        case 0:
        repeat(8) {
            var Fire = instance_create( x, y, obj_Jefe_Fuego );
            Fire.Direction = D;
            D += 360/8;
        }
            break;
            
        case 1:
        repeat(8) {
            var Fire = instance_create( x, y, obj_Jefe_Fuego );
            Fire.Direction = D;
            Fire.Velocidad_Direction = 2;
            D += 360/8;
        }
            break;
            
        case 2:
            repeat(8) {
                var fx = create_effect(x-10+random(20), y-10+random(20), sprFxRedExplosion, 0.5 + random(5)/10);
                fx.depth = -1000;
            }
            alarm[8] = 80;
            break;
            
    }

	audio_stop_sound(sndFireball);
	audio_play_sound(sndFireball,0,0);
    audio_play_sound(sndBossSlime01,0,0);
    alarm[4] = Summon_Time/2 + random(Summon_Time/2);
    xscale = 1.4;
    yscale = 1.4;


