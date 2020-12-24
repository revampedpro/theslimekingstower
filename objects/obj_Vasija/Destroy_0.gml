// Apuntar sus datos en la matriz para que cuando vuelva a la habitacion vuelva a aparecer
if(!instance_exists(obj_Jugador)) exit;
global.Dungeon_Room_Items_ID[global.Dungeon_Room_Items_Cantidad] = obj_Vasija;
global.Dungeon_Room_Items_i[global.Dungeon_Room_Items_Cantidad]  = Posicion_i;
global.Dungeon_Room_Items_j[global.Dungeon_Room_Items_Cantidad]  = Posicion_j;
global.Dungeon_Room_Items_x[global.Dungeon_Room_Items_Cantidad]  = x-12;
global.Dungeon_Room_Items_y[global.Dungeon_Room_Items_Cantidad]  = y-12;
global.Dungeon_Room_Items_Cantidad++;

// Efectos
shake_camera(1, 1);

// Crear loot al morir
if(check_room("centro") != 3 and alarm[0] < 0) {
    var Loot = choose(0,0,0,1,2);
    var Chance = 3;
    if(random(100) < Chance) {
        switch(Loot) { 
            case 0: // Monedas
                var Moneda = instance_create(x,y,choose(obj_Moneda,obj_Moneda,obj_Moneda,obj_Salud,obj_Moneda,obj_Salud,obj_Moneda));
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
    }
}

// Sonar
if(alarm[0] < 0) {    
    audio_stop_sound(snd_Vasija_01);
    audio_stop_sound(snd_Vasija_02);
    audio_play_sound(choose(snd_Vasija_01, snd_Vasija_02), 0, 0);
}

// Aumentar la carga del jugador
if(alarm[0] < 0 and instance_exists(obj_Jugador) and player_has_item(113)) {
    if( obj_Jugador.Cargas < obj_Jugador.Cargas_Max ) obj_Jugador.Cargas++;
}
    
if(instance_exists(obj_Jugador)) and (alarm[0] < 0) and (player_has_item(196)) and (chance(25)) {
    instance_create(x, y, objBomb);
}

if(alarm[0] < 0) and (player_has_item(272)) and (chance(15)) spawn_rocket(1);

// Crear araña
if(potMonster == false) and (instance_exists(obj_Jugador)) and (player_has_item(185) == false) and (obj_Jugador.Pet_Bonus_Spider == false) {
    var Chance = 10;
    if(random(100) < Chance and alarm[0] < 0) {
        var Enemigo = instance_create( x, y, get_enemy( 13, 0 ) );
        Enemigo.ID = 13;
        Enemigo.xscale = 0.25;
        Enemigo.yscale = 0.25;
        with(Enemigo) event_perform( ev_other, ev_user15 );
    }
}

