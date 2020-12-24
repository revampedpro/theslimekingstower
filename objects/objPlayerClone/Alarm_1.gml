// Shoot
if(instance_exists(obj_Jugador)) {
    switch(shootDirection) {
        case "right": var dbullet = bullet_spawn(x,y,2,2,0); break;
        case "left":  var dbullet = bullet_spawn(x,y,2,2,180); break;
        case "up":    var dbullet = bullet_spawn(x,y,2,2,90); break;
        case "down":  var dbullet = bullet_spawn(x,y,2,2,270); break;
    }
}

