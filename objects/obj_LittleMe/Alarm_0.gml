// Shoot
if(alarm[1]>0) exit;
alarm[1] = shootRate;

if(rockets) and (instance_number(obj_Jugador_Rocket) < 1) { spawn_rocket(1); exit; }

switch(shootDirection) {
    case "right": var dbullet = bullet_spawn(x,y,2,2,0,obj_Jugador_Disparo); break;
    case "left":  var dbullet = bullet_spawn(x,y,2,2,180,obj_Jugador_Disparo); break;
    case "up":    var dbullet = bullet_spawn(x,y,2,2,90,obj_Jugador_Disparo); break;
    case "down":  var dbullet = bullet_spawn(x,y,2,2,270,obj_Jugador_Disparo); break;
}

// Bullet Effects
dbullet.GhostBullet = ghost_bullets;
dbullet.Pierce = pierce_bullets*2;
dbullet.Lazer = lazer;
dbullet.Shurikens = shurikens;
if(ghost_bullets) dbullet.image_alpha = 0.5;
if(pierce_bullets) dbullet.image_blend = c_lime;
if(lazer) dbullet.image_blend = c_red;
if(shurikens) dbullet.sprite_index = sprBulletShuriken;

