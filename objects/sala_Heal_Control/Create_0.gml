/// @description  Crear corazones
if(control_Dungeon.Dungeon_Visitado[ global.Posicion_i, global.Posicion_j ] = 0) {

    for( i = 0; i < 10; i++ ) {
    
        var X = irandom_range(228,396);
        var Y = irandom_range(132,204);
        instance_create( X, Y, obj_Salud );
    
    }

}

