// Configuracion
exit;
Tiles_Iniciales = choose(3,4,5,6); // Número de tiles inciales (fuentes de expansion)
Tiles_Expansion_Min = 2; // Minimo de veces que se pueden expandir los tiles
Tiles_Expansion_Max = 6; // Maximo de veces que se pueden expandir los tiles
Tile_Depth = 1050; // Capa de los tiles
//Tile_Tileset = tileset_Tiles; // Tileset a usar
Detalles_Min = 6; // Mínimo de detalles que añadir al mapa
Detalles_Max = 12; // Maximo de detalles que añadir al mapa
Room_X = 128; // X del suelo de la sala
Room_Y = 64; // Y del suelo de la sala
Room_W = 512; // Width de la sala
Room_H = 288; // Heigth de la sala

// Define la matriz
for( i = 0; i < abs(Room_W-Room_X)/16; i++ ) {
    for( j = 0; j < abs(Room_H-Room_Y)/16; j++ ) {
        Tile[i,j] = 0;    
    }
}

// Crea tiles iniciales por la sala
for( i = 0; i < Tiles_Iniciales; i++ ) {
    var Tile_X = irandom(array_height_2d(Tile));
    var Tile_Y = irandom(array_length_2d(Tile,1));
    Tile[Tile_X,Tile_Y] = irandom_range(Tiles_Expansion_Min,Tiles_Expansion_Max);
}

// Expandir los tiles
Terminado = false;
for( k = 0; Terminado != true; k++ ) {
    Esta_Trabajando = false;
    for( i = 0; i < abs(Room_W-Room_X)/16; i++ ) {
        for( j = 0; j < abs(Room_H-Room_Y)/16; j++ ) {
            if(Tile[i,j] > 1) {
                if( i > 0 and Tile[i-1,j] == 0)                         Tile[i-1,j] = Tile[i,j]-1;
                if( i < (abs(Room_W-Room_X)/16)-1   and Tile[i+1,j] == 0) Tile[i+1,j] = Tile[i,j]-1;
                if( j > 0 and Tile[i,j-1] == 0)                         Tile[i,j-1] = Tile[i,j]-1;
                if( j < (abs(Room_H-Room_Y)/16)-1 and Tile[i,j+1] == 0) Tile[i,j+1] = Tile[i,j]-1;
                Esta_Trabajando = true;
                Tile[i,j]--;
            }
        }
    }
    if( Esta_Trabajando = false ) Terminado = true;
}

// Expandir algunos tiles aleatorios
for( i = 0; i < abs(Room_W-Room_X)/16; i++ ) {
    for( j = 0; j < abs(Room_H-Room_Y)/16; j++ ) {
        if( random(100) > 65 and Tile[i,j] = 1 ) Tile[i,j]++;
    }
}

// Segunda pasada de expansion
Terminado = false;
for( k = 0; Terminado != true; k++ ) {
    Esta_Trabajando = false;
    for( i = 0; i < abs(Room_W-Room_X)/16; i++ ) {
        for( j = 0; j < abs(Room_H-Room_Y)/16; j++ ) {
            if(Tile[i,j] > 1) {
                if( i > 0 and Tile[i-1,j] == 0)                         Tile[i-1,j] = Tile[i,j]-1;
                if( i < (abs(Room_W-Room_X)/16)-1   and Tile[i+1,j] == 0) Tile[i+1,j] = Tile[i,j]-1;
                if( j > 0 and Tile[i,j-1] == 0)                         Tile[i,j-1] = Tile[i,j]-1;
                if( j < (abs(Room_H-Room_Y)/16)-1 and Tile[i,j+1] == 0) Tile[i,j+1] = Tile[i,j]-1;
                Esta_Trabajando = true;
                Tile[i,j]--;
            }
        }
    }
    if( Esta_Trabajando = false ) Terminado = true;
}

// Extrusion de bordes
for( i = 0; i < abs(Room_W-Room_X)/16; i++ ) {
    for( j = 0; j < abs(Room_H-Room_Y)/16; j++ ) {
        var ID = 0;
        var i_min = 0; var i_max = (abs(Room_W-Room_X)/16)-1;
        var j_min = 0; var j_max = (abs(Room_H-Room_Y)/16)-1;
        
        if( Tile[i,j] == 1 ) {
        
            if( i > i_min and Tile[i-1,j] == 0 )                 { Tile[i-1,j]   = -1; }
            if( i < i_max and Tile[i+1,j] == 0 )                 { Tile[i+1,j]   = -1; }
            if( j > j_min and Tile[i,j-1] == 0 )                 { Tile[i,j-1]   = -1; }
            if( j < j_max and Tile[i,j+1] == 0 )                 { Tile[i,j+1]   = -1; }
            if( i > i_min and j > j_min and Tile[i-1,j-1] == 0 ) { Tile[i-1,j-1] = -1; }
            if( i > i_min and j < j_max and Tile[i-1,j+1] == 0 ) { Tile[i-1,j+1] = -1; }
            if( i < i_max and j > j_min and Tile[i+1,j-1] == 0 ) { Tile[i+1,j-1] = -1; }
            if( i < i_max and j < j_max and Tile[i+1,j+1] == 0 ) { Tile[i+1,j+1] = -1; }
            
        }
        
        //ID = 1;       
        //if(Tile[i,j] == 1) Tile[i,j] = ID;
    }
}

// Cambiar los tiles por su correspondiente ID segun tileset

/*  ID
    1) centro:                      2x4
    2) arriba:                      4x0, 5x0
    3) abajo:                       4x3, 5x3
    4) derecha:                     6x1, 6x2
    5) izquierda:                   3x1, 3x2
    6) arriba-izquierda:            3x0
    7) arriba-derecha:              6x0
    8) abajo-izquierda:             3x3
    9) abajo-derecha:               6x3

    10) interior-abajo-derecha      5x2
    11) interior-abajo-izquierda    4x2
    12) interior-arriba-derecha     5x1
    13) interior-arriba-izquierda   4x1
    
    15) medio-horizontal            0x1, 1x1
    16) medio-vertical              2x1, 2x2

*/

// Crear tiles de relleno para los que faltan
for( i = 0; i < abs(Room_W-Room_X)/16; i++ ) {
    for( j = 0; j < abs(Room_H-Room_Y)/16; j++ ) {

        var l,r,d,u;
        var lu,ru,ld,rd;
        var i_min = 0; var i_max = (abs(Room_W-Room_X)/16)-1;
        var j_min = 0; var j_max = (abs(Room_H-Room_Y)/16)-1;
        l = 0 ; r = 0 ; u = 0 ; d = 0;
        lu = 0; ru = 0; ld = 0; rd = 0;
        if( i > i_min and Tile[i-1,j] = 1 )                  { l = 1; } 
        if( i < i_max and Tile[i+1,j] = 1 )                  { r = 1; } 
        if( j > j_min and Tile[i,j-1] = 1 )                  { u = 1; } 
        if( j < j_max and Tile[i,j+1] = 1 )                  { d = 1; } 
        if( i > i_min and j > j_min and Tile[i-1,j-1] = 1 ) { lu = 1; }
        if( i > i_min and j < j_max and Tile[i-1,j+1] = 1 ) { ld = 1; }
        if( i < i_max and j > j_min and Tile[i+1,j-1] = 1 ) { ru = 1; }
        if( i < i_max and j < j_max and Tile[i+1,j+1] = 1 ) { rd = 1; }
        if( l = 0 and r = 1 and u = 1 and d = 1 ) { Tile[i,j] = 1; }
        if( l = 1 and r = 0 and u = 1 and d = 1 ) { Tile[i,j] = 1; }
        if( l = 1 and r = 1 and u = 0 and d = 1 ) { Tile[i,j] = 1; }
        if( l = 1 and r = 1 and u = 1 and d = 0 ) { Tile[i,j] = 1; }
        if( l = 1 and r = 1 and u = 1 and d = 1 ) { Tile[i,j] = 1; }
        
    }
}

// Autotiling
for( i = 0; i < abs(Room_W-Room_X)/16; i++ ) {
    for( j = 0; j < abs(Room_H-Room_Y)/16; j++ ) {
    
        var l,r,d,u;
        var lu,ru,ld,rd;
        var i_min = 0; var i_max = (abs(Room_W-Room_X)/16)-1;
        var j_min = 0; var j_max = (abs(Room_H-Room_Y)/16)-1;
        l = 0 ; r = 0 ; u = 0 ; d = 0;
        lu = 0; ru = 0; ld = 0; rd = 0;
        if( i > i_min and Tile[i-1,j] = 1 )                  { l = 1; } 
        if( i < i_max and Tile[i+1,j] = 1 )                  { r = 1; } 
        if( j > j_min and Tile[i,j-1] = 1 )                  { u = 1; } 
        if( j < j_max and Tile[i,j+1] = 1 )                  { d = 1; } 
        if( i > i_min and j > j_min and Tile[i-1,j-1] = 1 ) { lu = 1; }
        if( i > i_min and j < j_max and Tile[i-1,j+1] = 1 ) { ld = 1; }
        if( i < i_max and j > j_min and Tile[i+1,j-1] = 1 ) { ru = 1; }
        if( i < i_max and j < j_max and Tile[i+1,j+1] = 1 ) { rd = 1; }
        
        
        // Aplicar ID
        var ID = -1;
        if( Tile[i,j] = -1 ) {
        
            // Interior y Exterior
            //if( l = 1 and r = 1 and u = 1 and d = 1 ) { ID = 1; } // Interior-Centro
            if( l = 1 and r = 1 and u = 1 and d = 1 and lu = 1 and ru = 1 and ld = 1 and rd = 1 ) { ID = 1; } // Interior
            
            // Lados
            if( l = 0 and r = 0 and u = 0 and d = 1 ) { ID = choose(2,22); } // Arriba
            if( l = 0 and r = 0 and u = 1 and d = 0 ) { ID = choose(3,23); } // Abajo
            if( l = 1 and r = 0 and u = 0 and d = 0 ) { ID = choose(4,24); } // Derecha
            if( l = 0 and r = 1 and u = 0 and d = 0 ) { ID = choose(5,25); } // Izquierda
        
            // Esquinas
            if( l = 0 and r = 0 and u = 0 and d = 0 and lu = 1 and ru = 0 and ld = 0 and rd = 0 ) { ID = 9; } // Abajo - Derecha
            if( l = 0 and r = 0 and u = 0 and d = 0 and lu = 0 and ru = 1 and ld = 0 and rd = 0 ) { ID = 8; } // Abajo - Izquierda
            if( l = 0 and r = 0 and u = 0 and d = 0 and lu = 0 and ru = 0 and ld = 1 and rd = 0 ) { ID = 7; } // Arriba - Derecha
            if( l = 0 and r = 0 and u = 0 and d = 0 and lu = 0 and ru = 0 and ld = 0 and rd = 1 ) { ID = 6; } // Arriba - Izquierda
            
            // Esquinas
            if( l = 0 and r = 1 and u = 0 and d = 1 ) { ID = 13; } // Arriba - Izquierda
            if( l = 1 and r = 0 and u = 0 and d = 1 ) { ID = 12; } // Arriba - Derecha
            if( l = 0 and r = 1 and u = 1 and d = 0 ) { ID = 11; } // Abajo - Izquierda
            if( l = 1 and r = 0 and u = 1 and d = 0 ) { ID = 10; } // Abajo - Derecha
            
            // Medios
            if( l = 0 and r = 0 and u = 1 and d = 1 ) { ID = choose(15,35); } // Medio - Horizontal
            if( l = 1 and r = 1 and u = 0 and d = 0 ) { ID = choose(16,36); } // Medio - Vertical
            
            // Otros
            /*
            if( l = 0 and r = 1 and u = 1 and d = 1 ) { ID = 1; }
            if( l = 1 and r = 0 and u = 1 and d = 1 ) { ID = 1; }
            if( l = 1 and r = 1 and u = 0 and d = 1 ) { ID = 1; }
            if( l = 1 and r = 1 and u = 1 and d = 0 ) { ID = 1; }
            */
            
            Tile[i,j] = ID;
            
        }
        
    }
}

// Limpiar los restos de tiles
for( i = 0; i < abs(Room_W-Room_X)/16; i++ ) {
    for( j = 0; j < abs(Room_H-Room_Y)/16; j++ ) {
    
        var ID = Tile[i,j];
        var l,r,d,u;
        var lu,ru,ld,rd;
        var i_min = 0; var i_max = (abs(Room_W-Room_X)/16)-1;
        var j_min = 0; var j_max = (abs(Room_H-Room_Y)/16)-1;
        l = 0 ; r = 0 ; u = 0 ; d = 0;
        lu = 0; ru = 0; ld = 0; rd = 0;
        if( i > i_min and Tile[i-1,j] = 1 )                  { l = 1; } 
        if( i < i_max and Tile[i+1,j] = 1 )                  { r = 1; } 
        if( j > j_min and Tile[i,j-1] = 1 )                  { u = 1; } 
        if( j < j_max and Tile[i,j+1] = 1 )                  { d = 1; } 
        if( i > i_min and j > j_min and Tile[i-1,j-1] = 1 ) { lu = 1; }
        if( i > i_min and j < j_max and Tile[i-1,j+1] = 1 ) { ld = 1; }
        if( i < i_max and j > j_min and Tile[i+1,j-1] = 1 ) { ru = 1; }
        if( i < i_max and j < j_max and Tile[i+1,j+1] = 1 ) { rd = 1; }
        
        // Otros
        /*
        if( l = 0 and r = 1 and u = 1 and d = 1 ) { ID = 1; }
        if( l = 1 and r = 0 and u = 1 and d = 1 ) { ID = 1; }
        if( l = 1 and r = 1 and u = 0 and d = 1 ) { ID = 1; }
        if( l = 1 and r = 1 and u = 1 and d = 0 ) { ID = 1; }
        if( l = 1 and r = 1 and u = 1 and d = 1 ) { ID = 1; } // Interior
        */
    
        Tile[i,j] = ID;
        
        if(Tile[i,j] = -1) Tile[i,j] = 0;
        
    }   
}

// Añadir todos los tiles
for( i = 0; i < abs(Room_W-Room_X)/16; i++ ) {
    for( j = 0; j < abs(Room_H-Room_Y)/16; j++ ) {
    
        var TX,TY;
        if( Tile[i,j] = -1 )  { TX = 0; TY = 0; }
        if( Tile[i,j] = 1 )   { TX = 2; TY = 4; }
        if( Tile[i,j] = 2 )   { TX = 4; TY = 0; }
        if( Tile[i,j] = 3 )   { TX = 4; TY = 3; }
        if( Tile[i,j] = 4 )   { TX = 6; TY = 1; }
        if( Tile[i,j] = 5 )   { TX = 3; TY = 1; }
        if( Tile[i,j] = 22 )  { TX = 5; TY = 0; }
        if( Tile[i,j] = 23 )  { TX = 5; TY = 3; }
        if( Tile[i,j] = 24 )  { TX = 6; TY = 2; }
        if( Tile[i,j] = 25 )  { TX = 3; TY = 2; }
        if( Tile[i,j] = 6 )   { TX = 3; TY = 0; }
        if( Tile[i,j] = 7 )   { TX = 6; TY = 0; }
        if( Tile[i,j] = 8 )   { TX = 3; TY = 3; }
        if( Tile[i,j] = 9 )   { TX = 6; TY = 3; }
        if( Tile[i,j] = 10 )  { TX = 4; TY = 1; }
        if( Tile[i,j] = 11 )  { TX = 5; TY = 1; }
        if( Tile[i,j] = 12 )  { TX = 4; TY = 2; }
        if( Tile[i,j] = 13 )  { TX = 5; TY = 2; }
        if( Tile[i,j] = 14 )  { TX = 0; TY = 5; }
        if( Tile[i,j] = 15 )  { TX = 0; TY = 1; }
        if( Tile[i,j] = 16 )  { TX = 2; TY = 1; }
        if( Tile[i,j] = 35 )  { TX = 1; TY = 1; }
        if( Tile[i,j] = 36 )  { TX = 2; TY = 2; }
        //if( Tile[i,j] > 0 ) { tile_add( Tile_Tileset, TX*16, TY*16, 16, 16, Room_X + i*16, Room_Y + j*16, Tile_Depth ); }
    
    }
}

// Añadir detalles aleatorios
var Detalles = irandom_range( Detalles_Min, Detalles_Max );
Detalles_Added = ds_list_create();
for( i = 0; i < Detalles; i++ ) {

    var Detalle_X = irandom(array_height_2d(Tile)-2);
    var Detalle_Y = irandom(array_length_2d(Tile,1)-2);
    
    var TX,TY;
    
    if( ds_list_find_index( Detalles_Added, Detalle_X + Detalle_Y*1000 ) = 1 ) continue;
    if( Tile[ Detalle_X, Detalle_Y ] == 1 ) { 
    
        var Tile_ID = choose(0,1,2,3,4);
        if(Tile_ID = 0) { TX = 0; TY = 5; }
        if(Tile_ID = 1) { TX = 1; TY = 5; }
        if(Tile_ID = 2) { TX = 2; TY = 5; }
        if(Tile_ID = 3) { TX = 3; TY = 5; }
        if(Tile_ID = 4) { TX = 5; TY = 5; }
        //tile_add( Tile_Tileset, TX*16, TY*16, 16, 16, Room_X + Detalle_X*16, Room_Y + Detalle_Y*16, Tile_Depth ); 
        ds_list_add( Detalles_Added, Detalle_X + Detalle_Y*1000 );
        
    }
    
    if( Tile[ Detalle_X, Detalle_Y ] == 0 ) { 
    
        var Tile_ID = choose(0,1,2,3,4);
        if(Tile_ID = 0) { TX = 3; TY = 4; }
        if(Tile_ID = 1) { TX = 4; TY = 4; }
        if(Tile_ID = 2) { TX = 5; TY = 4; }
        if(Tile_ID = 3) { TX = 6; TY = 4; }
        if(Tile_ID = 4) { TX = 4; TY = 5; }
        //tile_add( Tile_Tileset, TX*16, TY*16, 16, 16, Room_X + Detalle_X*16, Room_Y + Detalle_Y*16, Tile_Depth ); 
        ds_list_add( Detalles_Added, Detalle_X + Detalle_Y*1000 );
        
    }

}
ds_list_destroy(Detalles_Added);









/* */
/*  */
