/// @description Creates a smoke cloud
/// @param x
/// @param y
function fx_smoke_cloud() {
	repeat(irandom_range(4,8)) {
		var s = create_effect(argument[0],argument[1],sprSmoke,0.2+random(4)/10);
		s.vspeed = -(0.1+random(5)/10);
	}


}
