// Buscar al jugador
if(instance_exists(obj_Jugador)) {
    var Geo_Direction = point_direction(x, y, obj_Jugador.x, obj_Jugador.y);
    var Geo_Speed = max(abs(H_SPEED), abs(V_SPEED));
    H_SPEED = cos(degtorad(Geo_Direction))  * Geo_Speed/2;
    V_SPEED = -sin(degtorad(Geo_Direction)) * Geo_Speed/2;
}

