if(!s)exit;
currentframe++

if (currentframe > maxframes) {
    instance_destroy() // The transition has finished so destroy it
}


// We are now on the second room so record that room. 
if (currentframe == 2) { 
    sur_newroom = surface_create(display_get_width(),display_get_height());
    surface_copy(sur_newroom,0,0,application_surface);
    surface_copy(sur_newroom,0,0,application_surface);
}

