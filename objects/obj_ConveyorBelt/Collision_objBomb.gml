// Move enemies
if(instance_exists(fxTransition2)) or (instance_exists(fxTransition3)) exit;
var h = 0.5;
var v = 0.5;
switch(image_angle) {
	case 0:   with(other) if(place_free(x+h,y)) x += h; break;
	case 90:  with(other) if(place_free(x,y-v)) y -= v; break;
	case 180: with(other) if(place_free(x-h,y)) x -= h; break;
	case 270: with(other) if(place_free(x,y+v)) y += v; break;
}