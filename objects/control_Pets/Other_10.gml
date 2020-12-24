// Desbloquear el pet y guardarlo en el .ini
ini_open("save.ini");
global.Pets_Desbloqueados = ini_read_string("S", "IPS", "0");
string_explode(global.Pets_Desbloqueados,"|");
level[petID] = 1;
global.Pets_Desbloqueados = "";
for(kk = 0; kk < count_pets(); kk++) {
    //global.Pets_Desbloqueados += string(level[kk]) + "|";
    if( kk <  array_length_1d(level) )global.Pets_Desbloqueados += string(level[kk]) + "|";
    if( kk >= array_length_1d(level) )global.Pets_Desbloqueados += "0|";
}
ini_write_string( "S", "IPS", global.Pets_Desbloqueados );
ini_close();

