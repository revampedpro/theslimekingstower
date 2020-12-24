/// @description  Preparar cofres
if( control_Dungeon.Especial_Usada = false ) {

    Lista_Posibilidades = ds_list_create();
    Lista_Image = ds_list_create();
    ds_list_add( Lista_Posibilidades, get_random_item_from_pool("treasure"), -1, -1, -1 );
    ds_list_add( Lista_Image, 0, 1, 2 );

    for( n = 0; n < instance_number(obj_Cofre_Eleccion); n++ ) {
    
        ds_list_shuffle( Lista_Posibilidades );
        ds_list_shuffle( Lista_Image );
    
        var Cofre = instance_find( obj_Cofre_Eleccion, n );
        var Cofre_ID = ds_list_find_value( Lista_Posibilidades, 0 );
        
        if(Cofre_ID != -1) {
            Cofre.ID = Cofre_ID;
            ds_list_delete( Lista_Posibilidades, 0 );
        }
        
        if(Cofre_ID == -1) {
            Cofre.Index = ds_list_find_value( Lista_Image, 0 );
            ds_list_delete( Lista_Image, 0 );
        }
        
    }
    
    ds_list_destroy(Lista_Posibilidades);
    ds_list_destroy(Lista_Image);

} else {

    with( obj_Cofre_Eleccion ) instance_destroy();

}

