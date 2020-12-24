// Ir a la sala del jefe
if( alarm[0] < 0 ) and ( !instance_exists( fx_Transition_Out ) ) { 

    if( global.Mapa_Tipo == 14 ) {
        room_goto(room_Jefe_Mimic);
        exit;
    }

    if( control_Dungeon.Dungeon_Boss = 7 ) {
        room_goto(room_Jefe_Amarillo);
        exit;
    }
    
    if( control_Dungeon.Dungeon_Boss = 98 ) {
        room_goto(room_Jefe_KingSlime);
        exit;
    }
    
    if( control_Dungeon.Dungeon_Boss = 99 ) {
        room_goto(room_Jefe_KingSlime);
        exit;
    }
    
    if( control_Dungeon.Dungeon_Boss = 100 ) {
        room_goto(room_Jefe_BasementParty);
        exit;
    }
    
    if( control_Dungeon.Dungeon_Boss = 101 ) {
        room_goto(room_Jefe_KingSlime);
        exit;
    }
    
    if( control_Dungeon.Dungeon_Boss = 102 ) {
        room_goto(room_Jefe_KingSlime);
        exit;
    }
    
    if( control_Dungeon.Dungeon_Boss = 104 ) {
        room_goto(room_Jefe_KingSlime);
        exit;
    }
    
    room_goto(room_Jefe);
    
}

