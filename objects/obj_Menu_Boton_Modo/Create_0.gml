// Vars
Seleccion = 0;

ini_open("save.ini");
					   unlock = ini_read_real("BRU","A",false);
	if(unlock == true) unlock = ini_read_real("BRU","B",false);
ini_close();

lang56 = lang(56); 
lang57 = lang(57); 
lang58 = lang(58); 
lang7042 = lang(7042);
;

/*

0 = Hoy
1 = Mes
2 = Año
3 = Siempre

/* */
/*  */
