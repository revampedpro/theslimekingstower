/// @description  Corregir direccion del disparo
if(instance_exists(controlador_Disparo)) {
    H_SPEED =  abs(4) * cos(degtorad(controlador_Disparo.A));
    V_SPEED = -abs(4) * sin(degtorad(controlador_Disparo.A));
}

