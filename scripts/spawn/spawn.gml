/// @description spawn(x,y,enemyid)
/// @function spawn
/// @param x
/// @param y
/// @param enemyid
function spawn() {

	// Create enemy
	var _spawn = instance_create(argument[0],argument[1],get_enemy(argument[2],0));
	_spawn.ID = argument[2];
	_spawn.xscale = 0.25;
	_spawn.yscale = 0.25;
	with(_spawn) event_perform(ev_other,ev_user15);

	// Return the enemy instance id
	return _spawn;



}
