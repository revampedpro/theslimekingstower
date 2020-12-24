// Variables de image
image_speed = 0;

// Definir la ID del item
ID = -1;
IDT = -1;

alarm[1] = 1;


// Obtener variables para guardado
Posicion_i = global.Posicion_i;
Posicion_j = global.Posicion_j;

// Item flotando
xScale = 0.5;
yScale = 0;
Item_Y = 0;
Item_V = 0;
Item_A = 0.005;
Item_L = 0.25;
Item_D = 1;
Squish = 0;
effect = false;
Y = 0;
vy = 0;
g = 0.2;
Xstart = xstart;
Ystart = ystart;

locked = false;

// Receive netid
netid = network_generate_id();