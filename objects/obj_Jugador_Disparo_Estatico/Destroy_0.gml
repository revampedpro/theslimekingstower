// Destruir la lista
if(ds_exists(Objetivos, ds_type_list)) {
    ds_list_destroy(Objetivos);
}

// Inherit
event_inherited();