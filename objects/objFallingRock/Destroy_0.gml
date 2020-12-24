create_effect(x, y, sprBulletHitFx, 0.85);
create_effect(x, y, spr_FX_Hit, 0.5);
shake_camera(.5,.5);
audio_stop_sound(sprSpikeBlockHit);
audio_play_sound(sprSpikeBlockHit, 0, 0);

if(explosion == true) {
	var e = instance_create(x,y,objBombExplosion);	
	e.image_xscale = 0.5;
	e.image_yscale = 0.5;
	e.hurt_player = false;
}