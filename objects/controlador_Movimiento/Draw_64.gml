//Colocarse
/*
x = global.GUI_Movimiento_X;
y = global.GUI_Movimiento_Y;
*/
if( global.Pausado ) exit;

// Salir si no esta visible
if( visible = false ) exit;

//Fondo
draw_sprite_ext( sprite_index, image_index, X, Y, 1, 1, 0, -1, 0.75 );

//Rueda
draw_sprite_ext(spr_Control_BG,-1,X + (16*(H*cos(degtorad(A)))),Y - (16*(H*sin(degtorad(A)))), 1, 1, 0, -1, 0.75);

/* */
/*  */
