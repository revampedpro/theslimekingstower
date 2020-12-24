/// @description  Disparar abajo
if(global.Pausado) exit;
if(!instance_exists(obj_Jugador)) exit;
bulletShootAnimation = true;
var Ammo = obj_Jugador.Tipo_Municion;
if(Ammo == obj_Jugador_Disparo_Laser) Ammo = obj_Jugador_Disparo;

// Change face direction
image_Direction = 4;

// Bonus de disparo angulado
if(player_has_item(12)) {
    var Angulo_H = Velocidad_H;
    var Angulo_V = Velocidad_V;
} else {
    var Angulo_H = 0;
    var Angulo_V = 0;
}

// Cadencia de disparo
var Disparo = instance_create(x + 3*Disparo_Move + (-obj_Jugador.Bonus_100Punch/2 + random(obj_Jugador.Bonus_100Punch)), y+10, Ammo);
Disparo.V_SPEED = + obj_Jugador.Velocidad_Disparo + Angulo_V;
Disparo.H_SPEED = Angulo_H;
Disparo.image_angle = 90;
Disparo.Direccion_Relativa = 2;

// Crear efecto de disparo
var FX = create_effect(x + 3*Disparo_Move,y+10,sprSplatMini,0.4);
FX.image_blend = make_colour_rgb(255, 255, 128);
FX.hspeed = Velocidad_H;
FX.vspeed = Velocidad_V;

// Efectos comunes de disparo en los que no importa la direccion
scr_jugador_common_shoot(Disparo);

