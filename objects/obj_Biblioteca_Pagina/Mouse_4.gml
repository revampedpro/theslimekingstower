/// @description  Cambiar la pagina de items
if(room = room_Biblioteca) {
    if((control_Biblioteca.Pagina+1)*16  < ceil(count_items()/16)*16) {
        control_Biblioteca.Pagina++;
    } else {
        control_Biblioteca.Pagina = 0;
    }
} else {
    if((control_Pets.Pagina+1)*16  < ceil(count_pets()/16)*16) {
        control_Pets.Pagina++;
    } else {
        control_Pets.Pagina = 0;
    }
}

