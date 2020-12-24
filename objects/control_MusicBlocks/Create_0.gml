chain = "";
chain2 = "*";
if(control_Dungeon.Dungeon_Visitado[global.Posicion_i,global.Posicion_j] == 0) {
	repeat(irandom_range(3,7)) chain += choose("0","1","2","3");
	alarm[0] = 60;
	pos = 1;
	chain2 = "";
}