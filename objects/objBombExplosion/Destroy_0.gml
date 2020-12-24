if(ds_exists(objectives, ds_type_list)) ds_list_destroy(objectives);

// Exp bombs
if(player_has_item(262)) {
    repeat(irandom(5)+5) {
        var xpOrb = instance_create(x,y,objExperienceOrb);
        xpOrb.value = 2;
    }
}

// Rocket bombs
if(player_has_item(271)) {
    spawn_rocket(choose(1,2));
}

// Cluster bombs
if(player_has_pet(75) and chance(50)) {
    instance_create(x-12+random(24),y-12+random(24),objBombExplosion);
}

