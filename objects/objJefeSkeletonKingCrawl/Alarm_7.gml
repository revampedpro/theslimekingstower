// Switch between attacks
switch(choose(0,1)) {
	
	case 0 : // Throw bones
		Thrown_Bones = irandom_range(5,8);
		alarm[8] = 1;
	break;
	
	case 1: // Throw spike trail
		Thrown_Spikes = irandom_range(5,8);
		alarm[6] = 1;
	break;

}

// Reset this alarm
alarm[7] = 360;