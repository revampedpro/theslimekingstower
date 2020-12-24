// Spawn fx
if(instance_exists(fxTransition2)) exit;
if(visible == false) {
    visible = true;
    var fx = create_effect(x,y,sprEnemyDeath,0.4);
    fx.depth = depth-60;
    var fx = create_effect(x,y,sprSmokeEnemyAppear,0.4);
    fx.depth = depth-60;
    var fx = create_effect(x,y,sprFxEnemyMuzzy,0.4);
    fx.depth = depth-60;
    audio_stop_sound(sndEnemySpawn);
    audio_play_sound(sndEnemySpawn,0,0);
}

if(IsBoss == true) and (AI == -1) {
	AI = get_boss(ID,0);
}