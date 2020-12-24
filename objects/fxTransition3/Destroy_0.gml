if(surface_exists(sur_newroom))surface_free(sur_newroom)
if(surface_exists(sur_oldroom))surface_free(sur_oldroom)
if(global.Quality < 2) {
    application_surface_enable(false);
} else {
    application_surface_draw_enable(true);
}

