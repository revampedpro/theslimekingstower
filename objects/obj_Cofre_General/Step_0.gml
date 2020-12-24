if(instance_exists(fxTransition2))exit;

// Appear
if(visible == false) {
    visible = true;
    create_effect(x, y, sprMagicEffect2, 0.4);
    audio_stop_sound(sndChestAppears);
    audio_play_sound(sndChestAppears,0,0);
    vy = -3;
}
// Brillar
if(alarm[0] < 0) and (image_index = 0) {
    alarm[0] = choose(15,15,15,20,20,30);
    var FX = create_effect(x-14+random(28),y-14+random(28),sprSparkle,0.1 + random(2)/10);
    FX.depth = depth-1;
}

// Efecto wiggle del sprite
var k = 0.02;
xScale = approach(xScale, 1, k);
if(yScale < 1) yScale += 0.025;

// Coger el item
var player = obj_Jugador;
if(network_is_online()) player = instance_nearest(x,y,parent_Jugador);
if(instance_exists(obj_Jugador)) and (distance_to_object(player) < 2 and obj_Jugador.alarm[4]<0) and (alarm[2] < 0) {
    if(ID != -1) {
		
		// If it's not locked get the item
		if(locked == false) {

	        // Get the item and leave the old one      
	        var preItem = player_get_item(ID,true);
	        if(preItem != false) {
	            ID = preItem;
	        } else {
	            ID = -1;
	        }
			
			// If it's online, don't leave an item in the chest
			if(network_is_online()) ID = -1;
    
	        image_index = 1;
		
			if(room == room_Rush) {
				with(obj_Cofre_General) {
				    create_effect(x, y, sprMagicEffect2, 0.4);
				    audio_stop_sound(sndChestAppears);
				    audio_play_sound(sndChestAppears,0,0);
					repeat(4) {
						var fx = create_effect(x,y,sprSmoke,0.3+random(3)/10);	
						fx.vspeed = -(0.1+random(5)/10);
					}
					instance_destroy();	
				}
			}
		
		} else {
		
			// If it's locked, open the chest
			if(obj_Jugador.keys > 0) {
				
				obj_Jugador.keys--;
				audio_play_sound(sndDoorUnlock,0,0);
				locked = false;
				alarm[2] = 60;
				
				// Tell your partner that this chest was opened
				if(network_is_online()) and (global.NETWORK_HOST == true) {
					pack_send_multi("itemChestOpen","netid",netid);
				}
				
				
			}
			
		}
		
    }
}

// Bounce
Y += vy;
if(Y > 0) {
    Y = 0;
    if(abs(vy)>1) {
        vy = -vy/2; 
		audio_stop_sound(sprSpikeBlockHit);
        audio_play_sound(sprSpikeBlockHit,0,0);
    } else {
        vy = 0;
    }
}
if(Y <=0) vy += g;

depth = -(y+5);

// Go to starting position
x = tween_to(x, Xstart, 20);
y = tween_to(y, Ystart, 20);

// Create effect
if(effect == false) and (!instance_exists(fxTransition2)) {
    create_effect(x, y, sprMagicEffect2, 0.4);
    audio_stop_sound(sndChestAppears);
    audio_play_sound(sndChestAppears, 0, 0);
    effect = true;
}