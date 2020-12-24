// Vars
ini_open( "save.ini" );
done = ini_read_real("S", "DLR", 0);
ini_close();
items = "";

if(current_day == done) done = true; else done = false;
loaded = false;

var URL = "http://37.187.20.198/skt/dailyrun1400.php";
http = http_get(URL);

// Items y vars
lang4003 = string_upper(lang(4003));
lang4004 = string_upper(lang(4004));
for(i = 0; i < 20; i++) {
    dailyItem[i] = -1;
}
items_loaded = false;

