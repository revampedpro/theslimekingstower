/// @description  Eliminar restos de enemigos
if( instance_exists( fx_Transition_Room ) and alarm[0] < 0 and !instance_exists(parent_Enemigo) )
control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j ] = "";

