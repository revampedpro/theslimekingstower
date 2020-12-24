// Spawn again
if(!network_is_online()) or (network_is_online() and network_is_host()) {
	spawn(x,y,enemies.mummy_slime);
	instance_destroy();
	fx_smoke_cloud(x,y);
}