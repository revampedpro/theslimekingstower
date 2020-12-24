
if(!instance_exists(obj_Jugador)) exit;
global.Dungeon_Room_Items_ID[global.Dungeon_Room_Items_Cantidad] = obj_Skeletons;
global.Dungeon_Room_Items_i[global.Dungeon_Room_Items_Cantidad]  = Posicion_i;
global.Dungeon_Room_Items_j[global.Dungeon_Room_Items_Cantidad]  = Posicion_j;
global.Dungeon_Room_Items_x[global.Dungeon_Room_Items_Cantidad]  = x;
global.Dungeon_Room_Items_y[global.Dungeon_Room_Items_Cantidad]  = y;
global.Dungeon_Room_Items_Cantidad++;

if(alarm[0]>0)exit;

// Crear loot al morir
if(check_room("centro") != 3) {
    var Loot = choose(0,0,1,2);
    var Chance = 3;
    if(random(100) < Chance) {
        switch(Loot) { 
            case 0: // Monedas
                var Moneda = instance_create(x,y,choose(obj_Moneda,obj_Moneda,obj_Moneda));
                break;
                
            case 1: // Salud
                switch(choose(0,0,0,1)) {
                    case 0: // Normal hearts
                        var Salud = instance_create(x,y,obj_Salud);
                    break;
                    
                    case 1: // Soul hearts
                        var Salud = instance_create(x,y,choose(obj_ShieldHeart,obj_SkullHeart,obj_TimeHeart));
                    break;
                }
                break;
                
            case 2: // Pickup
                var Pickup = instance_create(x,y,choose(obj_Key,obj_PickupBomb));
            break;
        }
    } else {
	
		// Create a big chest
		if(chance(2)) create_chest_big(x,y,get_random_item_from_pool("all"));
		
	}
}

repeat(irandom_range(8, 12))
{
    var a = instance_create(x, y, objFloorDetail);
    a.sprite_index = sprBones;
    a.image_index = irandom(a.image_number);
    k = .75;
    a.vx += (-2+random(4))*k;
    a.vy += (-2+random(4))*k;
    a.image_angle = random(359);
}

audio_stop_sound(sndBonesDestroy);
audio_play_sound(sndBonesDestroy,0,0);

