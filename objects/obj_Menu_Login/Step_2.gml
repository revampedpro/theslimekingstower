// Volver al estado de reposo
xscale = tween_to(xscale+s, 1, 5);
yscale = tween_to(yscale+s, 1, 5);

// Girar
image_xscale = 0.5;
image_yscale = 0.5;
xscale = 0.5;
yscale = 0.5;
if(distance_to_point(mouse_x, mouse_y)<8) {
    giro += giro_v;
    giro_v += giro_a * giro_d;
    giro_v = clamp(giro_v, -1, 1);
    if(giro >  giro_m*5) giro_d = -1;
    if(giro < -giro_m*5) giro_d = 1;
    s = tween_to(s, 0.02, 4);
} else {
    giro = tween_to(giro, 0, 10);
    s = tween_to(s, 0, 4);
}

// Cambiar de room
if( Activado = true and !instance_exists(fx_Transition_Out) ) {
    event_perform(ev_other, ev_user0);
}

image_alpha = 1;

