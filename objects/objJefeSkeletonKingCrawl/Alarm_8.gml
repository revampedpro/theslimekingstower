// Summon Fire
var D = random(360);
repeat(4) {
    var Fire = instance_create( x, y, obj_Jefe_Fuego );
	Fire.sprite_index = sprTomahawkSkull;
	Fire.image_speed = 0.3;
    Fire.Direction = D;
    Fire.Velocidad_Direction = 0.2;
    D += 360/4;
	D += 10;
}
audio_play_sound(sndBombDrop,0,0);
audio_play_sound(sndBossGrunt01,0,0);
audio_play_sound(sndBossGrunt02,0,0);
audio_play_sound(sndBossGrunt03,0,0);

Thrown_Bones--;
if(Thrown_Bones > 0) alarm[8] = 20;

// Throw bones
alarm[7] = 360;