// Vars
Activado = false;
image_speed = 0;
image_index = 2;

ini_open("save.ini");
myPetCounter = ini_read_real("S", "PUNC"+string(real(control_Pets.Item)), 0);
ini_close();

lang3000 = lang(3000);
lang3001 = lang(3001);
lang3002 = lang(3002);
lang3003 = lang(3003);
lang3004 = lang(3004);
lang3007 = lang(3007);

