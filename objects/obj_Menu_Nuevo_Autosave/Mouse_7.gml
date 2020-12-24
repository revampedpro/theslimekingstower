// Saltar
xscale = 0.6;
yscale = 0.6;

global.Control_Autosave++;
Opcion++;
if(Opcion = Max_Opcion) Opcion = 0;
switch(Opcion) {
    case 0: menu_text = string_upper(lang(7019)); break;
    case 1: menu_text = string_upper(lang(7020)); break;
}
//image_index = 1 + (Opcion*Max_Opcion);
if( global.Control_Autosave > 1 ) { 
    global.Control_Autosave = 0;
}

/*
if(global.Comprobar_Primera_Vez == true)exit;
instance_create( 0, 0, fx_Transition_Out );
Activado = true;
*/

/* */
/*  */
