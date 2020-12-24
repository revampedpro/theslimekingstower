/// @description  Codigo de recibir daño en comun para distintas fuentes
if( global.Pausado ) exit;

// DEBUG
global.DEBUG_MAPAS_DAMAGE += global.DEBUG_NOMBRE_SALA + "|";

var DEBUG_SPRITE = string(sprite_get_name(other.sprite_index));
    if(DEBUG_SPRITE = "sprSkeletonUp")          DEBUG_SPRITE = "sprSkeletonDown";
    if(DEBUG_SPRITE = "sprSkeletonLeft")        DEBUG_SPRITE = "sprSkeletonDown";
    if(DEBUG_SPRITE = "sprSkeletonRight")       DEBUG_SPRITE = "sprSkeletonDown";
    if(DEBUG_SPRITE = "sprMageSkeletonUp")      DEBUG_SPRITE = "sprMageSkeletonDown";
    if(DEBUG_SPRITE = "sprMageSkeletonLeft")    DEBUG_SPRITE = "sprMageSkeletonDown";
    if(DEBUG_SPRITE = "sprMageSkeletonRight")   DEBUG_SPRITE = "sprMageSkeletonDown";
    if(DEBUG_SPRITE = "sprGhoulUp")      DEBUG_SPRITE = "sprGhoulDown";
    if(DEBUG_SPRITE = "sprGhoulLeft")    DEBUG_SPRITE = "sprGhoulDown";
    if(DEBUG_SPRITE = "sprGhoulRight")   DEBUG_SPRITE = "sprGhoulDown";
global.DEBUG_ENEMY_DAMAGE += DEBUG_SPRITE + "|";

// Aumentar el bonus de sacrificio
if(room = room_Sacrificio) {
    Bonus_Sacrificio--;
    if(Bonus_Sacrificio = 0) {
        Bonus_Sacrificio = 4;
        HP_Max += 2;
        create_map_text(room_width/2,-10,"HP+","Your sacrifice has been heard");
    }
}

// Recibir experiencia
if(room = room_SacrificioExperience) {
    repeat(irandom_range(5,8)) {
        var expp = instance_create(room_width/2, room_height/2, objExperienceOrb);
        expp.value = irandom_range(1,3);
    }
}

// Disable God Shop
if(global.GodShopCanSpawn) {
    global.GodShopCanSpawn = false;
}

if(player_has_item(95)) {

    if( instance_exists( parent_Enemigo ) ) {
        with( parent_Enemigo ) HP -= 10;
    }
    HP-=2;

}

if(player_has_item(103)) {
    alarm[5] = 20;
    Rafaga = 5;
}

if(player_has_item(85)) {
    repeat(4) {
            instance_create(x-40+random(80),y-40+random(80),obj_Jugador_Disparo_Fuego);
    }
}

// Wizard/Mage Slimes
if(Pet_Bonus_MageSlime)   and (random(100)<=10) { for( i = 0; i < 999; i++ ) { var X = irandom_range(168,432); var Y = irandom_range(96,216); if(place_free(X,Y) and distance_to_object(instance_nearest(X,Y,parent_Enemigo))>16) { x = X; y = Y; break; } } }
if(Pet_Bonus_WizardSlime) and (random(100)<=25) { for( i = 0; i < 999; i++ ) { var X = irandom_range(168,432); var Y = irandom_range(96,216); if(place_free(X,Y) and distance_to_object(instance_nearest(X,Y,parent_Enemigo))>16) { x = X; y = Y; break; } } }
if(Pet_Bonus_Boss_TheGreatPapasa)               { for( i = 0; i < 999; i++ ) { var X = irandom_range(168,432); var Y = irandom_range(96,216); if(place_free(X,Y) and distance_to_object(instance_nearest(X,Y,parent_Enemigo))>16) { x = X; y = Y; break; } } }

if(player_has_item(46)) {
    for( i = 0; i < 999; i++ ) {
        var X = irandom_range(168,432);
        var Y = irandom_range(96,216);
        if(place_free(X,Y) and distance_to_object(instance_nearest(X,Y,parent_Enemigo))>16) {
            x = X;
            y = Y;
            break;
        }
    }
}

control_UI.alarm[1] = 10;

if(player_has_item(39) and Bonus_Magic_Shield < 2) {
    if( Cargas < Cargas_Max ) Cargas++;
}

if(player_has_item(40) and percent_chance(25) and Bonus_Magic_Shield < 2 ) {
    instance_create(x, y, obj_Moneda);
}

