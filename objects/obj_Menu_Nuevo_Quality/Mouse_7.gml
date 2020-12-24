// Saltar
xscale = 0.6;
yscale = 0.6;

Opcion++;
if(Opcion = Max_Opcion) Opcion = 0;
global.Quality = Opcion;
switch(Opcion) {
    case 0: menu_text = string_upper(lang(7016)); break;
    case 1: menu_text = string_upper(lang(7017)); break;
    case 2: menu_text = string_upper(lang(7018)); break;
}
image_index = 1 + (Opcion*2);
if(global.Quality < 2) {
    application_surface_enable(false);
    application_surface_draw_enable(false);
} else {
    application_surface_enable(false);
    application_surface_draw_enable(false);
}

/*
if(global.Comprobar_Primera_Vez == true)exit;
instance_create( 0, 0, fx_Transition_Out );
Activado = true;
*/

/* */
/*  */
