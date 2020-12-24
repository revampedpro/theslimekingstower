action_inherited();
/// Efecto wiggle del sprite
var k = 0.07;
xscale = approach(xscale, 1, k);
yscale = approach(yscale, 1, k);



/// Behaviour
if(global.Pausado)exit;
if(instance_exists(fxTransition2))exit;
Objetivo = obj_Jugador;
if(network_is_online()) and (Objetivo == obj_Jugador) and (distance_to_object(obj_Jugador_Networking)<distance_to_object(obj_Jugador)) Objetivo = obj_Jugador_Networking;
if(instance_exists(obj_Dummy)) Objetivo = obj_Dummy;
if(!instance_exists(Objetivo)) exit;
if(alarm[11] > 0) { vx = 0; vy = 0; exit; }

// Make it visible
if(visible == false) {
    visible = true;
    if(instance_exists(obj_Jugador)) {
        var fx = create_effect(x,y,sprEnemyDeath,0.4);
        fx.depth = depth-60;
        var fx = create_effect(x,y,sprSmokeEnemyAppear,0.4);
        fx.depth = depth-60;
        audio_stop_sound(sndEnemySpawn);
        audio_play_sound(sndEnemySpawn,0,0);
    }
}

// Change direction
if(real(ID) == enemies.samurai_slime) {
	if(Objetivo.x < x) image_xscale = -1; else image_xscale = 1;
}

// Actions 
if(actionTimeMax > -1) {
    
    // Charge action
    actionTime++;
	if(real(ID) == enemies.samurai_slime) actionTime--;
    
	// Tell your partner this enemy's action time
	if(network_is_online() and network_is_host()) {
		pack_send_multi("actionTime","netid",netid,"action_time",actionTime,"action_time_max",actionTimeMax,"action_color",actionColor);	
	}
	
    // Perform action
    if(actionTime >= actionTimeMax) {
        
        // Change between enemies
        switch(real(ID)) {
        
            case 38: // Fire slime
                var fireDirection = direction;
                if(fireDirection <  45  or fireDirection >= 315) for(i = 0; i < 3; i++) { var fire = instance_create(x+12*(i+1),y,obj_Jefe_Fuego); fire.Velocidad = 0; fire.life = 60; }
                if(fireDirection >= 45  && fireDirection <  135) for(i = 0; i < 3; i++) { var fire = instance_create(x,y-12*(i+1),obj_Jefe_Fuego); fire.Velocidad = 0; fire.life = 60; }
                if(fireDirection >= 135 && fireDirection <  225) for(i = 0; i < 3; i++) { var fire = instance_create(x-12*(i+1),y,obj_Jefe_Fuego); fire.Velocidad = 0; fire.life = 60; }
                if(fireDirection >= 225 && fireDirection <  315) for(i = 0; i < 3; i++) { var fire = instance_create(x,y+12*(i+1),obj_Jefe_Fuego); fire.Velocidad = 0; fire.life = 60; }
				audio_stop_sound(sndFireball);
				audio_play_sound(sndFireball,0,0);
            break;    
            
            case 40: // Mini papasa
                switch(choose(1,0,0)) {
                    case 0: // Shoot
                        var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball); Fireball.Fuerza = Fuerza; Fireball.Direction = 90;  Fireball.image_angle = Fireball.Direction;
                        var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball); Fireball.Fuerza = Fuerza; Fireball.Direction = 180; Fireball.image_angle = Fireball.Direction;
                        var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball); Fireball.Fuerza = Fuerza; Fireball.Direction = 270; Fireball.image_angle = Fireball.Direction;
                        var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball); Fireball.Fuerza = Fuerza; Fireball.Direction = 0;   Fireball.image_angle = Fireball.Direction;
                    break;
                    case 1: // Teleport
                        for(i = 0; i < 999; i++) {
                            var X = irandom_range(168,432);
                            var Y = irandom_range(96,216);
                            if(place_free(X,Y) and point_distance(X,Y,Objetivo.x,Objetivo.y)>16) {
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
                    break;
                }
            break;
        
            case 41: // Bigeyeslime
                var fireDirection = point_direction(x,y,Objetivo.x,Objetivo.y);
                if(fireDirection <  45  or fireDirection >= 315) { var lazer = instance_create(x,y,obj_Enemy_Laser); lazer.Parent = id; lazer.Direction = 0;   if(network_is_online() and network_is_host()) { pack_send_multi("enemyLazer","netid",netid,"direction",0);   }}
                if(fireDirection >= 45  && fireDirection <  135) { var lazer = instance_create(x,y,obj_Enemy_Laser); lazer.Parent = id; lazer.Direction = 90;  if(network_is_online() and network_is_host()) { pack_send_multi("enemyLazer","netid",netid,"direction",90);  }}
                if(fireDirection >= 135 && fireDirection <  225) { var lazer = instance_create(x,y,obj_Enemy_Laser); lazer.Parent = id; lazer.Direction = 180; if(network_is_online() and network_is_host()) { pack_send_multi("enemyLazer","netid",netid,"direction",180); }}
                if(fireDirection >= 225 && fireDirection <  315) { var lazer = instance_create(x,y,obj_Enemy_Laser); lazer.Parent = id; lazer.Direction = 270; if(network_is_online() and network_is_host()) { pack_send_multi("enemyLazer","netid",netid,"direction",270); }}
            break;    
            
            case 42: // Bayoslime
                var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball); Fireball.Fuerza = Fuerza; Fireball.Direction = 180; Fireball.image_angle = Fireball.Direction;
                var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball); Fireball.Fuerza = Fuerza; Fireball.Direction = 0;   Fireball.image_angle = Fireball.Direction;
            break; 
            
            case 46: // Clockslime
                instance_create(x, y, obj_Enemy_ClockStop);
            break;
            
            case 48: // Dinoslime
                var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball); Fireball.Fuerza = Fuerza; Fireball.Direction = 90+45;  Fireball.image_angle = Fireball.Direction; Fireball.sprite_index = sprDinoslimeSpike;
                var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball); Fireball.Fuerza = Fuerza; Fireball.Direction = 180+45; Fireball.image_angle = Fireball.Direction; Fireball.sprite_index = sprDinoslimeSpike;
                var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball); Fireball.Fuerza = Fuerza; Fireball.Direction = 270+45; Fireball.image_angle = Fireball.Direction; Fireball.sprite_index = sprDinoslimeSpike;
                var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball); Fireball.Fuerza = Fuerza; Fireball.Direction = 45;     Fireball.image_angle = Fireball.Direction; Fireball.sprite_index = sprDinoslimeSpike;
            break;
        
            case 52: // Slibone
                if(!player_has_pet(71)) {
                    var boneDirection = point_direction(x,y,Objetivo.x,Objetivo.y);
                    if(boneDirection <  45  or boneDirection >= 315) { var bone = instance_create(x,y,obj_MageSkeleton_Fireball); bone.Velocidad = 2; bone.Fuerza = Fuerza; bone.Direction = 0;   bone.sprite_index = sprBone;}
                    if(boneDirection >= 45  && boneDirection <  135) { var bone = instance_create(x,y,obj_MageSkeleton_Fireball); bone.Velocidad = 2; bone.Fuerza = Fuerza; bone.Direction = 90;  bone.sprite_index = sprBone;}
                    if(boneDirection >= 135 && boneDirection <  225) { var bone = instance_create(x,y,obj_MageSkeleton_Fireball); bone.Velocidad = 2; bone.Fuerza = Fuerza; bone.Direction = 180; bone.sprite_index = sprBone;}
                    if(boneDirection >= 225 && boneDirection <  315) { var bone = instance_create(x,y,obj_MageSkeleton_Fireball); bone.Velocidad = 2; bone.Fuerza = Fuerza; bone.Direction = 270; bone.sprite_index = sprBone;}
                }
            break; 
        
            case enemies.jumping_bomb: // Jumping Bomb
				instance_destroy();
            break; 
            
            
        }
    
        actionTime = 0;
        alarm[2] = 5;
        flashColor = c_white;
        audio_stop_sound(sndEnemySpawn);
        audio_play_sound(sndEnemySpawn,0,0);
        audio_stop_sound(sndSlimeImpact01);
        audio_play_sound(sndSlimeImpact01,0,0);
        var fx = create_effect(x,y,sprFxActionMuzzy,.5);
        fx.depth = depth - 20;
        
    }

}
    
// Move Towards target
if(real(ID) == 41) and (player_has_pet(62)) exit;
if(instance_exists(Objetivo)) {
    ground_acc = 0.1;
    if(move_x == 0 and move_y == 0)and(image_speed < 0.5) and (abs(hspeed) < 2) and (abs(vspeed) < 2) {
        mp_potential_step(Objetivo.x, Objetivo.y, Velocidad, false);
    } else {
        speed = 0;
    }
}



