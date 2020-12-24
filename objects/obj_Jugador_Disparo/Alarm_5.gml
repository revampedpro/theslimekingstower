/// @description Crear disparos en orbe
if(!instance_exists(obj_Jugador))exit;
var Disparo_Angulo = random(360);
repeat(5) {
    Disparo_Angulo += 360/5;
    bullet_spawn(x,y,1,1,Disparo_Angulo);
}
instance_destroy();



