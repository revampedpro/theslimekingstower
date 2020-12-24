if(bomb == 1) {
	instance_create(x,y-6,objBomb);
	bomb = 0;
	alarm[1] = 4;
}