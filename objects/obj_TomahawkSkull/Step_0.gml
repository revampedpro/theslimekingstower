// Ir hacia el jugador
if(global.Pausado)exit;
if(!instance_exists(parent)) { instance_destroy(); exit; }
if(network_is_online() and !network_is_host()) exit;
if(Velocidad > -2) Velocidad -= 0.1;
if(Velocidad < 0) {
    Direction = point_direction(x, y, parent.x, parent.y);
    x += cos(degtorad(Direction)) * abs(Velocidad);
    y -= sin(degtorad(Direction)) * abs(Velocidad);
} else {
    x += cos(degtorad(Direction)) * Velocidad;
    y -= sin(degtorad(Direction)) * Velocidad;
}

