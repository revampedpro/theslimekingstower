// Comprobaciones
if(global.Pausado) exit;
if(!instance_exists(controlador_Movimiento) or !instance_exists(controlador_Disparo)) exit;
if(!instance_exists(obj_Jugador))exit;

// Moverse
x += Velocidad_H;
y += Velocidad_V;
Velocidad_H *= 0.95;
Velocidad_V *= 0.95;
Velocidad_H = clamp(Velocidad_H, -1.5, 1.5);
Velocidad_V = clamp(Velocidad_V, -1.5, 1.5);
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
enemyList  = _collision_line_list(x, y, obj_Jugador.x, obj_Jugador.y, parent_Enemigo, false, true);
objectList = _collision_line_list(x, y, obj_Jugador.x, obj_Jugador.y, parent_Destruible, false, true);

if(enemyList != noone) {
    for(i = 0; i < ds_list_size(enemyList); i++) {
        var Enemigo = ds_list_find_value(enemyList, 0);
        if(instance_exists(Enemigo)) {
            if((ds_list_find_index(Objetivos, Enemigo.id) == -1)) {
                preMask = mask_index;
                bullet_hit_enemy(Enemigo, false);
                alarm[0] = 10;
                mask_index = preMask;
            }
        }
    }
    ds_list_destroy(enemyList);
}

if(objectList != noone) {
    for(i = 0; i < ds_list_size(objectList); i++) {
        var Object = ds_list_find_value(objectList, 0);
        if(instance_exists(Object)) {
            bullet_hit_destructable(Object);
            create_effect(x+Velocidad_H, y+Velocidad_V+(16-Altura)-4, spr_FX_Hit, 0.5);
            audio_play_sound(choose(snd_Disparo_Hit_01,snd_Disparo_Hit_02,snd_Disparo_Hit_03), 0, 0);        
        }
    }
    ds_list_destroy(objectList);
}
