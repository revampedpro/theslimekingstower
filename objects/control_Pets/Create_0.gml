/// @description  Variables de la biblioteca
Pagina = 0;
Item = 0;
ini_open("save.ini");
global.Pets_Desbloqueados = ini_read_string("S", "IPS", "0");
string_explode(global.Pets_Desbloqueados,"|");
global.Pets_Desbloqueados = "";
for( kk = 0; kk < count_pets(); kk++ ) {
    if( kk <  array_length_1d(level) )global.Pets_Desbloqueados += string(level[kk]) + "|";
    if( kk >= array_length_1d(level) )global.Pets_Desbloqueados += "0|";
}
ini_close();
string_explode(global.Pets_Desbloqueados,"|");

// Texts
pagText = lang(17);
ItemT = -1;
Texto = "";
Descripcion = "";
Item_Icono = -1;
PagT = -1;
for(i = 0; i < 30; i++) {
    ItemIconoMini[i] = -1;
}
lang3006 = lang(3006);
lang3005 = lang(3005);
lang16 = lang(16);
mini = -1;

