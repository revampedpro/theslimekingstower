/// @description  Disparar Izquierda
if(global.Pausado) exit;
if(!instance_exists(obj_Jugador)) exit;
bulletShootAnimation = true;
var Ammo = obj_Jugador.Tipo_Municion;
if(Ammo == obj_Jugador_Disparo_Laser) Ammo = obj_Jugador_Disparo;

// Change face direction
image_Direction = 2;

// Bonus de disparo angulado
if(player_has_item(12)) {
    var Angulo_H = Velocidad_H;
    var Angulo_V = Velocidad_V;
} else {
    var Angulo_H = 0;
    var Angulo_V = 0;
}

// Cadencia de disparo
var Disparo = instance_create( x-10, y+2 + (-obj_Jugador.Bonus_100Punch/2 + random(obj_Jugador.Bonus_100Punch)), Ammo );
Disparo.H_SPEED = - obj_Jugador.Velocidad_Disparo + Angulo_H;
Disparo.V_SPEED = Angulo_V;
Disparo.Direccion_Relativa = 3;

// Crear efecto de disparo
var FX = create_effect(x-14,y-1,sprSplatMini,0.4);
FX.image_blend = make_colour_rgb(255, 255, 128);
FX.hspeed = Velocidad_H;
FX.vspeed = Velocidad_V;
FX.hspeed = Velocidad_H;
FX.vspeed = Velocidad_V;
FX.depth = depth-1;

// Efectos comunes de disparo en los que no importa la direccion
scr_jugador_common_shoot(Disparo);
if(player_has_item(298)) {
    Disparo.image_xscale = max(0.1,Disparo.image_xscale-0.3);
    Disparo.image_yscale = Disparo.image_xscale;
    if(Disparo.My_Fuerza>0) Disparo.My_Fuerza--;
}

