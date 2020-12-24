/// @description  Recibir datos del ranking
if(ds_map_find_value(async_load, "id") == HTTP) {

    if(ds_map_find_value(async_load, "status") == 0) {
    
       Cadena = ds_map_find_value(async_load, "result");
       string_explode(Cadena,"|");
       
       for( l = 0; l < 10; l++ ) {
            Nombre[l]   = "-";
            Mapa[l]     = "-";
            Enemigos[l] = "-";
            Tiempo[l]   = "-";
       }
       
       for( l = 0; l < real(level[0]); l++ ) {
            Nombre[l]   = string(level[1+(4*l)]);
            Mapa[l]     = string(level[2+(4*l)]);
            Enemigos[l] = string(level[3+(4*l)]);
            Tiempo[l]   = string(level[4+(4*l)]);
            
            var temp_Segundos = (real(Tiempo[l])/60);
            var temp_Horas = floor(floor(temp_Segundos) / 3600);
            if( string_length( string(temp_Horas) ) < 2 ) temp_Horas = "0" + string(floor(temp_Horas));
            var temp_Minutos = floor( (temp_Segundos - (real(temp_Horas)*3600)) / 60 );
            if( string_length( string(temp_Minutos) ) < 2 ) temp_Minutos = "0" + string(floor(temp_Minutos));
            var temp_Secs = floor( temp_Segundos % 60 );
            if( string_length( string(temp_Secs) ) < 2 ) temp_Secs = "0" + string(floor(temp_Secs));
            Tiempo[l] = string((temp_Horas)) + ":" + string((temp_Minutos)) + ":" + string((temp_Secs));
            
       }
       
       Cargado = true;
    
    }
       
}

