/// @description  Cambiar la pagina de items
if(room = room_Biblioteca) {
    if((control_Biblioteca.Pagina-1)*16  >= 0) {
        control_Biblioteca.Pagina--;
    } else {
        control_Biblioteca.Pagina = ceil(count_items()/16)-1;
    }
} else {
    if((control_Pets.Pagina-1)*16  >= 0) {
        control_Pets.Pagina--;
    } else {
        control_Pets.Pagina = ceil(count_pets()/16)-1;
    }
}

