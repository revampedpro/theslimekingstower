// Apuntar sus datos en la matriz para que cuando vuelva a la habitacion vuelva a aparecer
if(!variable_instance_exists(id,"Posicion_i")) Posicion_i = -1;
if(!variable_instance_exists(id,"Posicion_j")) Posicion_j = -1;
global.Dungeon_Room_Items_ID[global.Dungeon_Room_Items_Cantidad] = obj_Key;
global.Dungeon_Room_Items_i[global.Dungeon_Room_Items_Cantidad]  = Posicion_i;
global.Dungeon_Room_Items_j[global.Dungeon_Room_Items_Cantidad]  = Posicion_j;
global.Dungeon_Room_Items_x[global.Dungeon_Room_Items_Cantidad]  = x;
global.Dungeon_Room_Items_y[global.Dungeon_Room_Items_Cantidad]  = y;
global.Dungeon_Room_Items_Cantidad++;

