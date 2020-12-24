if(!s)exit;
currentframe++

if (currentframe > maxframes) {
    instance_destroy() // The transition has finished so destroy it
}


// We are now on the second room so record that room. 
if (currentframe == 2) { 
    //sur_newroom = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
    //surface_copy(sur_newroom,0,0,application_surface);
    
    // old
    sur_newroom = surface_create(display_get_width()/2,display_get_height()/2);
    surface_copy(sur_newroom,0,0,application_surface);
    surface_copy(sur_newroom,0,0,application_surface);
    application_surface_enable(false);
}

