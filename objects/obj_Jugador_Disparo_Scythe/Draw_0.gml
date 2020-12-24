// Position
if(!instance_exists(obj_Jugador))exit;
x = obj_Jugador.x;
y = obj_Jugador.y;
visible = obj_Jugador.visible;
sprite_index = sprDisparoScythe;

// Angle
if(instance_exists(controlador_Disparo)) {
    if(controlador_Disparo.A != 0) and (alarm[0]<0) {
        Angulo = controlador_Disparo.A;
    }
} else 
    if(instance_exists(controlador_Movimiento)) and (controlador_Movimiento.A != 0) and (alarm[0]<0) {
        Angulo = controlador_Movimiento.A;
} else {
    Angulo = 0;
}

// Attack
if(instance_exists(controlador_Disparo)) {
    if(controlador_Disparo.Device != -1) or (keyboard_check(obj_Jugador.tecla_Disparo_Arriba)or(keyboard_check(obj_Jugador.tecla_Disparo_Abajo))or(keyboard_check(obj_Jugador.tecla_Disparo_Izquierda))or(keyboard_check(obj_Jugador.tecla_Disparo_Derecha))){
        if(keyboard_check(obj_Jugador.tecla_Disparo_Arriba))    Angulo = 90;
        if(keyboard_check(obj_Jugador.tecla_Disparo_Abajo))     Angulo = 270;
        if(keyboard_check(obj_Jugador.tecla_Disparo_Izquierda)) Angulo = 180;
        if(keyboard_check(obj_Jugador.tecla_Disparo_Derecha))   Angulo = 1;
        if(Angulo != 0) and (alarm[0]<0) and (alarm[1]<0) {
            image_angle = Angulo;
            alarm[0] = attackSpeed;
            audio_play_sound(sndSwordSwing,0,0);
        }
    }
}

// Attack rotation
if(alarm[0]<0) {
    if(obj_Jugador.image_Direction == 1) image_angle = 180+30;
    if(obj_Jugador.image_Direction == 2) image_angle = 0+30;
    if(obj_Jugador.image_Direction == 3) image_angle = 270+30;
    if(obj_Jugador.image_Direction == 4) image_angle = 90+30; 
}
if(alarm[0]>=0) {
    image_angle = Angulo - 90 + 180*(alarm[0]/attackSpeed);
    image_xscale = 1 + (alarm[0]/attackSpeed)*.4;
    image_yscale = 1 + (alarm[0]/attackSpeed)*.4;
    var fx = instance_create(x,y,fx_Sprite_Alpha);
    fx.sprite_index = sprDisparoScytheWhite;
    fx.image_xscale = image_xscale;
    fx.image_yscale = image_yscale
    fx.image_alpha = .6;
    fx.speed = 0;
    fx.image_angle = image_angle;

    // Player sprite
    if(abs(obj_Jugador.Velocidad_H) > 0 or abs(obj_Jugador.Velocidad_V) > 0) {
        if(Angulo > 315 or  Angulo < 45)  { obj_Jugador.sprite_index = obj_Jugador.spr_Corriendo_Derecha; }
        if(Angulo > 135 and Angulo < 225) { obj_Jugador.sprite_index = obj_Jugador.spr_Corriendo_Izquierda; }
        if(Angulo > 225 and Angulo < 315) { obj_Jugador.sprite_index = obj_Jugador.spr_Corriendo_Abajo; }
        if(Angulo > 45  and Angulo < 135) { obj_Jugador.sprite_index = obj_Jugador.spr_Corriendo_Arriba; }
    } else {
        if(Angulo > 315 or  Angulo < 45)  { obj_Jugador.sprite_index = obj_Jugador.spr_Parado_Derecha; }
        if(Angulo > 135 and Angulo < 225) { obj_Jugador.sprite_index = obj_Jugador.spr_Parado_Izquierda; }
        if(Angulo > 225 and Angulo < 315) { obj_Jugador.sprite_index = obj_Jugador.spr_Parado_Abajo; }
        if(Angulo > 45  and Angulo < 135) { obj_Jugador.sprite_index = obj_Jugador.spr_Parado_Arriba; }
    }
    
} else {
    image_xscale = 1;
    image_yscale = 1;
}

// Draw
draw_sprite_ext(sprite_index,(alarm[0]>=0),x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

