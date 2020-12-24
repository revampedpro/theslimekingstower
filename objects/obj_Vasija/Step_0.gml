// Profundidad
depth = -y;

// Check distance to player
if(potMonster) {
    if(global.Mapa_Tipo >= 7) {
        if(distance_to_object(obj_Jugador)<48) {
            if(!collision_line(x,y,obj_Jugador.x,obj_Jugador.y,parent_Solid,0,1)) {
                if(sprite_index != sprPotMonsterAppears) sprite_index = sprPotMonsterAppears;
            }
        }
    }
}

