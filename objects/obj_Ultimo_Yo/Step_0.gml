if(instance_exists(fxTransition2))exit;

// Appear
if(visible == false) {
    visible = true;
    create_effect(x, y, sprMagicEffect2, 0.4);
    audio_play_sound(sndChestAppears,0,0);
}
// Brillar
if(alarm[0] < 0) and (image_index = 0) {
    alarm[0] = choose(15,15,15,20,20,30);
    var FX = create_effect(x-14+random(28),y-14+random(28),sprSparkle,0.1 + random(2)/10);
    FX.depth = depth-1;
}

// Coger el item
if(distance_to_object(obj_Jugador) < 2 and obj_Jugador.alarm[4]<0) {
    if(ID != -1) {

        // Get the item and leave the old one      
        var preItem = player_get_item(ID,true);
        if(preItem != false) {
            ID = preItem;
        } else {
            ID = -1;
        }
        
        // Update Ultimo_Yo
        control_Dungeon.Ultimo_Yo_Item = ID;
        image_index = 1;
        
    }
}

