/// @description Check if magic sword should be dead
if(real(ID) == enemies.magic_sword) {

	var check = false;
	with(parent_Enemigo) {
		if(real(ID) != enemies.magic_sword) {
			check = true;	
		}
	}

	if(check == false) instance_destroy();

}