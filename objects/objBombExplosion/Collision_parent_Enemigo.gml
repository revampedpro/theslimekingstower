// Damage enemies
if(other.object_index == objJefeBombslime)exit;
if(!ds_exists(objectives, ds_type_list)) objectives = ds_list_create();
if(ds_list_find_index(objectives, other.id) == -1) {

    ds_list_add(objectives, other.id);
    with(other) {
        HP -= 50*(player_has_item(261)+1);
        var f = floating_text(x-4+random(8), y-4+random(8), string(50*(player_has_item(261)+1)), make_color_rgb(255, 20, 20), true);
		f.alarm[0] = 60;
        if(HP <= 0) instance_destroy();
        alarm[2] = 4;
    }

}
    

