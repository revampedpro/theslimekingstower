// Singleton-ize
if(instance_number(object_index) > 1) { instance_destroy(); exit; }
savedBuffer = buffer_create(1, buffer_grow, 1);
cutBuffer   = buffer_create(1, buffer_grow, 1);
debBuffer   = buffer_create(1, buffer_grow, 1);
reading		= 0;
traffic		= 0;

// Timers
timer_sync_faster	= 0;
timer_sync_fast		= 0;
timer_sync_medium	= 0;
timer_sync_slow		= 0;
timer_sync_long		= 0;

// Initiate connection
var IP = "127.0.0.1";
IP = "37.187.20.198";
global.SOCKET = network_create_socket(network_socket_tcp);
network_connect_raw(global.SOCKET, IP, 15232);


//f = file_text_open_write(get_save_filename("log|*.txt", ""));