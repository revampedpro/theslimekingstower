/// @description  Mantener alarmas en pausa
if( global.Pausado ) {
    for( i = 0; i < 11; i++ ) {
        if(alarm[i]>0) alarm[i]++;
    }
}

