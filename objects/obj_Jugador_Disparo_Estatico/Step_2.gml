// Volver al estado de reposo
if(Expandir == false) {
    image_xscale = tween_to(image_xscale, 1, 10);
    image_yscale = tween_to(image_yscale, 1, 10);
}
if(Expandir = true) {
    image_xscale = tween_to(image_xscale, 4, 7);
    image_yscale = tween_to(image_yscale, 4, 7);
    if(image_xscale >= 3) {
        Expandir = false;
        obj_Jugador.Cargas = obj_Jugador.Cargas_Max;
    }
}

