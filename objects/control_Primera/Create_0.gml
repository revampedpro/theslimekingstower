// Comprobar si es la primera vez que jugas
var Check = false;

if( (!file_exists("save.ini")) ) Check = true;

if( Check = false ) {
    ini_open("save.ini");
    if( ini_read_string("S","N","")=="" ) Check = true;
    ini_close();
}

if( global.Comprobar_Primera_Vez = false and Check = true ) {
    global.Comprobar_Primera_Vez = true;
} else {
    instance_destroy();
}

