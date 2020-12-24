/// @description change_cutscene(cutscene_room)
/// @function change_cutscene
/// @param cutscene_room
function change_cutscene() {
	// Change to a specific cutscene
	var cut = instance_create(0, 0, objCutsceneTransition);
	cut.to = argument[0];
	return cut;



}
