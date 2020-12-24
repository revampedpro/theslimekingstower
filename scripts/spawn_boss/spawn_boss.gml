/// @description spawn_boss(x,y,id)
/// @function spawn_boss
/// @param x
/// @param y
/// @param id
function spawn_boss() {
	// Spawns a boss
	sc_ppdungeonboss = control_Dungeon.Dungeon_Boss;
	control_Dungeon.Dungeon_Boss = argument[2];
	instance_create(argument[0], argument[1], get_boss(argument[2],0));
	control_Dungeon.Dungeon_Boss = sc_ppdungeonboss;



}
