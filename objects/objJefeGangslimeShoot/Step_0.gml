// Go to gangslime
if(!instance_exists(objJefeGangslime)) { instance_destroy(); exit; }
if(!instance_exists(obj_Jugador)) { instance_destroy(); exit; }
move_towards_point(tox, toy, 0.5);
depth = -y;

