// Saltar
xscale = 0.6;
yscale = 0.6;

Opcion++;
if(Opcion = Max_Opcion) Opcion = 0;
//global.Quality = Opcion;
switch(Opcion) {
    case 0: menu_text = lang(78); break;
    case 1: menu_text = lang(79); break;
    case 2: menu_text = lang(80); break;
}
switch(Opcion) {
    case 0: global.Modo_Dificultad = "Normal"; break; // Normal
    case 1: global.Modo_Dificultad = "Hard"; break; // Endless
    case 2: global.Modo_Dificultad = "Insane"; break; // Arcade
}
if(instance_exists(obj_Menu_Nuevo_Endless_Info)) {
    with(obj_Menu_Nuevo_Endless_Info) event_perform(ev_create, 0);
}
image_index = 1 + (Opcion*2);

/*
if(global.Comprobar_Primera_Vez == true)exit;
instance_create( 0, 0, fx_Transition_Out );
Activado = true;
*/

/* */
/*  */
