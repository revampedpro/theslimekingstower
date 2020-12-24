// Comprobaciones
if(global.Pausado) exit;
if(!instance_exists(controlador_Movimiento) or !instance_exists(controlador_Disparo)) exit;
if(!instance_exists(obj_Jugador))exit;

// Moverse
x += Velocidad_H;
y += Velocidad_V;
Velocidad_H *= 0.95;
Velocidad_V *= 0.95;
Velocidad_H = clamp(Velocidad_H, -1, 1);
Velocidad_V = clamp(Velocidad_V, -1, 1);
x = clamp(x, __view_get( e__VW.XView, 0 ), __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ));
y = clamp(y, __view_get( e__VW.YView, 0 ), __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ));

// Create Target list if it doesn't exists
if(!ds_exists(Objetivos,ds_type_list)) Objetivos = ds_list_create();

// Chaos Zone
if(instance_exists(obj_Jugador_Chaos_Zone) and distance_to_object(obj_Jugador_Chaos_Zone)<64) {
    My_Fuerza = 1;
}

// Girar
Angulo_Rotacion += 2;
image_angle = Angulo_Rotacion;

// Dañar al enemigo
var Enemigo = instance_place( x, y, parent_Enemigo );
if(instance_place(x, y, parent_Enemigo) and (alarm[0] < 0 or (ds_list_find_index(Objetivos, Enemigo.id)) == -1 )) {
    preMask = mask_index;
    EnemigoList = _instance_place_list(x, y, parent_Enemigo);
    for(ee = 0; ee < ds_list_size(EnemigoList); ee++) {
        var Enemigo = ds_list_find_value(EnemigoList,ee);
        if(instance_exists(Enemigo)) {
            bullet_hit_enemy(Enemigo);
            alarm[0] = 10;
        }
        mask_index = preMask;
    }
    ds_list_destroy(EnemigoList);
}
// Destructible
if(instance_place(x, y, parent_Destruible)) {
    var Destruible = instance_place( x, y, parent_Destruible );
    if(Destruible) bullet_hit_destructable(Destruible);
    create_effect(x+Velocidad_H, y+Velocidad_V+(16-Altura)-4, spr_FX_Hit, 0.5);
    audio_play_sound(choose(snd_Disparo_Hit_01,snd_Disparo_Hit_02,snd_Disparo_Hit_03), 0, 0);
}
if(player_has_item(53)) {
    if(instance_place(x, y, obj_Pinchos)) {
        var Destruible = instance_place(x, y, obj_Pinchos);
        if(Destruible) bullet_hit_spikes(Destruible);
        create_effect(x+Velocidad_H, y+Velocidad_V+(16-Altura)-4, spr_FX_Hit, 0.5);
        audio_play_sound( choose(snd_Disparo_Hit_01,snd_Disparo_Hit_02,snd_Disparo_Hit_03), 0, 0 );
    }
}

