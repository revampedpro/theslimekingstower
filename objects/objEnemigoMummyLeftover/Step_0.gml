// Check if enemies still exists
if(!instance_exists(parent_Enemigo)) {
	instance_destroy();
	fx_smoke_cloud(x,y);
}