// Comprar item
if(real(control_Biblioteca.level[control_Biblioteca.Item]) > 0 and global.Monedas_General >= 100) {

    // Guardar el nuevo item guardado
    global.Monedas_General -= 100;
    global.Armario_Item = control_Biblioteca.Item;
    ini_open("save.ini");
    ini_write_real( "S", "A", control_Biblioteca.Item );
    ini_write_real( "S", "MG", global.Monedas_General);
    ini_close();
    audio_play_sound(snd_Comprar, 0, 0);
    exit;
    
}

// Desbloquear item
if(real(control_Biblioteca.level[control_Biblioteca.Item]) <= 0 and global.Monedas_General >= 50) {

    global.Monedas_General -= 50;
    control_Biblioteca.level[control_Biblioteca.Item] = 1;
    
    global.Items_Desbloqueados = "";
    
    // Reload info
    control_Biblioteca.ItemT = -1;
    
    for( kk = 0; kk < count_items(); kk++ ) {
        global.Items_Desbloqueados += string( control_Biblioteca.level[kk] ) + "|";
    }
    
    ini_open("save.ini");
    ini_write_string( "S", "I", global.Items_Desbloqueados );
    ini_write_real( "S", "MG", global.Monedas_General);
    ini_close();
    audio_play_sound(snd_Comprar, 0, 0);
    exit;
    
}

// No se efectuó la compra
audio_play_sound(snd_Error, 0, 0);


