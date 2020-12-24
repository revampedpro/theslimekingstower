/// @description  Disparar rafaga de balas
if( alarm[6] < 0 ) {
    Rafaga--;
    if( Rafaga > 0 ) alarm[6] = 2;
} 

if( Rafaga > 0 ) alarm[5] = 1;

