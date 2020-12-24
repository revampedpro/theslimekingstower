// Comprar item
if(real(control_Pets.level[control_Pets.Item]) < 5 and real(control_Pets.level[control_Pets.Item]) > 0 and global.Monedas_General >= 100+(100*real(control_Pets.level[control_Pets.Item]))) {

    // Guardar el nuevo pet
    ini_open("save.ini");
    global.Pets_Desbloqueados = ini_read_string("S", "IPS", "0");
    global.Monedas_General -= 100+(100*real(control_Pets.level[control_Pets.Item]));
    string_explode(global.Pets_Desbloqueados,"|");
    level[control_Pets.Item] = real(level[control_Pets.Item])+1;
    control_Pets.level[control_Pets.Item] = real(control_Pets.level[control_Pets.Item])+1;
    global.Pets_Desbloqueados = "";
    for(kk = 0; kk < count_pets(); kk++) {
        //global.Pets_Desbloqueados += string(level[kk]) + "|";
	    if( kk <  array_length_1d(level) )global.Pets_Desbloqueados += string(level[kk]) + "|";
	    if( kk >= array_length_1d(level) )global.Pets_Desbloqueados += "0|";
    }
    ini_write_string( "S", "IPS", global.Pets_Desbloqueados );
    ini_write_real( "S", "MG", global.Monedas_General );
    ini_close();
    audio_play_sound(snd_Comprar, 0, 0);
    exit;
    
}

// No se efectuó la compra
audio_play_sound(snd_Error, 0, 0);


