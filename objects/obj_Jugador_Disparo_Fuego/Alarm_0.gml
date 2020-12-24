// Creates a normal bullet and destroy itself
if(instance_exists(obj_Jugador)) {
    var bullet = bullet_spawn(x,y,hspeed,vspeed,dir,obj_Jugador_Disparo);
    bullet.Fire = true;
    if(player_has_item(276)) { bullet.Delay_Antes_De_Caer *= 3; bullet.alarm[0] *= 3; }
}
instance_destroy();

