// Load data
ini_open("save.ini");
    var trials = ini_read_real("S","TRLS",0);
ini_close();

switch(trials) {
    case 0: image_index = 7; break;
    case 1: image_index = 6; break;
    case 2: image_index = 5; break;
    case 3: image_index = 4; break;
    case 4: image_index = 3; break;
    case 5: image_index = 2; break;
    case 6: image_index = 1; break;
}
if(trials >6) image_index = 0;
if!(global.Mapa_Tipo = 1 and global.Mapa_Nivel = 1 and global.Modo_Juego != "Arcade" and global.Modo_Juego != "Endless" and check_room("centro")==2) image_index = 8;

//image_index = 0;
image_speed = 0;

if(global.Mapa_Basement = false) image_index = 8;

// Dejar de ser solida
if(image_index = 0) and (solid == true) solid = false; else solid = true;
Warp = false;

