// Vars
spd = 3;
shootDirection = "";
shootRate = 60;
image_xscale = .75;
image_yscale = .75;
for(p = 0; p < instance_number(obj_LittleMe); p++) {
    if(instance_find(obj_LittleMe,p) == id) pos = p;
}

// Bullets
ghost_bullets = false;
pierce_bullets = false;
lazer = false;
shurikens = false;
rockets = false;

