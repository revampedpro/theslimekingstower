// Movement Smooth
x = tween_to(x,x2,3);
y = tween_to(y,y2,3);

// Depth
depth = -y;

// Appear FX
if(visible == false) {
    visible = true;
    if(instance_exists(obj_Jugador)) {
        var fx = create_effect(x,y,sprEnemyDeath,0.4);
        fx.depth = depth-60;
        var fx = create_effect(x,y,sprSmokeEnemyAppear,0.4);
        fx.depth = depth-60;
        audio_stop_sound(sndEnemySpawn);
        audio_play_sound(sndEnemySpawn,0,0);
    }
}

// Update enemy common vars
if(IsBoss == false) and (AI == -1) {
	AI = get_enemy(ID,0);
}
if(IsBoss == true) and (AI == -1) {
	AI = get_boss(ID,0);
}