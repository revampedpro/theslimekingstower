// Variables
Alpha = -2;
Aumento = 0.01;

// Destruir controladores
with( controlador_Movimiento ) instance_destroy();
with( controlador_Disparo ) instance_destroy();
with( parent_Enemigo ) instance_destroy();
if(room != room_Jefe_KingSlime) { with( parent_Jefe ) instance_destroy(); }
//with( obj_Jugador_Disparo ) instance_destroy();

