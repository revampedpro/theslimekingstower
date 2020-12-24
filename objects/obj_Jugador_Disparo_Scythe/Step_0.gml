// Dañar al enemigo
if(!instance_exists(obj_Jugador))exit;
if(alarm[0]<0)exit;
if(alarm[0]>0) depth = obj_Jugador.depth - 120; else depth = obj_Jugador.depth+2;
var Enemigo = instance_place( x, y, parent_Enemigo );

// Create Target list if it doesn't exists
if(!ds_exists(Objetivos,ds_type_list)) Objetivos = ds_list_create();

if(instance_place(x, y, parent_Enemigo) and (ds_list_find_index(Objetivos, Enemigo.id) == -1)) {
    preMask = mask_index;
    EnemigoList = _instance_place_list(x, y, parent_Enemigo);
    for(ee = 0; ee < ds_list_size(EnemigoList); ee++) {
        var Enemigo = ds_list_find_value(EnemigoList,ee);
        if(instance_exists(Enemigo)) {
            if(Enemigo.Altura <= 2) audio_play_sound(sndSwordHit,0,0);
            bullet_hit_enemy(Enemigo);
        }
        mask_index = preMask;
    }
    ds_list_destroy(EnemigoList);
}
// Destructible
if(instance_place(x, y, parent_Destruible)) {
    var Destruible = instance_place( x, y, parent_Destruible );
    if(Destruible) bullet_hit_destructable(Destruible);
    create_effect(x, y+(16-Altura)-4, spr_FX_Hit, 0.5);
    audio_play_sound(sndSwordHit,0,0);
}
if(player_has_item(53)) {
    if(instance_place(x, y, obj_Pinchos)) {
        var Destruible = instance_place(x, y, obj_Pinchos);
        if(Destruible) bullet_hit_spikes(Destruible);
        create_effect(x, y+(16-Altura)-4, spr_FX_Hit, 0.5);
        audio_play_sound(sndSwordHit,0,0);
    }
}

