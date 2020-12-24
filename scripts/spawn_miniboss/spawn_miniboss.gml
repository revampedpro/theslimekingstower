/// @description spawn_miniboss(x,y,id)
/// @function spawn_miniboss
/// @param x
/// @param y
/// @param id
function spawn_miniboss() {
	// Spawns a boss
	sc_ppdungeonboss = control_Dungeon.Dungeon_Boss;
	control_Dungeon.Dungeon_Boss = argument[2];
	var _miniboss = instance_create(argument[0], argument[1], get_boss(argument[2],0));
	_miniboss.miniboss = 1.5;
	_miniboss.Max_HP = get_boss(argument[2],4)/2;
	_miniboss.HP = floor(_miniboss.Max_HP);
	_miniboss.image_blend = make_color_rgb(255, 135, 135);
	control_Dungeon.Dungeon_Boss = sc_ppdungeonboss;
	return _miniboss;



}
