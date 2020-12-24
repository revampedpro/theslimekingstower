// Try to log into google play
ini_open("save.ini");
	var logged = ini_read_real("IS", "LOGGED", false);	
ini_close();
if(logged == true) { 
	
	// Don't ask to log again if the player isn't interested
	
	room_goto(cutscene01);
	instance_destroy();
	exit;
} else {
	ini_open("save.ini");
		ini_write_real("IS", "LOGGED", true);	
	ini_close();
}
if(instance_number(objGooglePlayLogin)>1) { instance_destroy(); exit; }
achievement_login();
image_xscale = 5;
image_yscale = 5;
req = -1;

