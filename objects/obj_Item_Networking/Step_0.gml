// Movement Smooth
var spd = 3;
if(sprite_index == sprDisparoRocket) spd = 1;
x = tween_to(x,x2,spd);
y = tween_to(y,y2,spd);

// Depth
depth = -y;

// Rocket Smoke
if(sprite_index == sprDisparoRocket) {
    if(choose(0,0,0,1)) create_effect(x,y,sprSmallSmoke,0.2 + random(2)/10);	
}