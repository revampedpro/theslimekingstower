// Saltar
xscale = 0.6;
yscale = 0.6;

// The game will be reset in order to sign into google play
show_message_async(lang(7035));

ini_open("save.ini");
	ini_write_real("IS", "LOGGED", false);	
ini_close();

global.GOOGLEID = -1;

achievement_logout();
	
//instance_create(0,0,objGooglePlayLogin);
