/// @description  Bonus que afectan a la creacion de la dungeon     
// Comprobar que el jugador existe y tiene los golden gauntlets
if(instance_exists(obj_Jugador)) {
    if(player_has_item(134)) {
        control_Dungeon.Dungeon_Tesoro  = 1;
        control_Dungeon.Dungeon_Shop[0] = 1;
        control_Dungeon.Dungeon_Shop[1] = 1;
        control_Dungeon.Dungeon_Shop[2] = 1;
    }
}

