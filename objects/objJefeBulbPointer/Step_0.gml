// Move
depth = -802;
if(!instance_exists(objJefeBulbslime)) { instance_destroy(); exit; }
if(instance_exists(obj_Jugador)) {
    direction = point_direction(x,y,obj_Jugador.x,obj_Jugador.y);
    speed = 1;
}
if(objJefeBulbslime.sprite_index = sprJefeBulbslimeBlue) visible = false; else visible = true;

