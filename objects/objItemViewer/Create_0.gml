// Count items
alarm[0] = 50;
if(!instance_exists(gamepad_MenuNav)) instance_create(0,0,gamepad_MenuNav);
pItems = ds_list_create();
for(k = 0; k < array_length_1d(control_Dungeon.Jugador_Items); k++) {
    if(control_Dungeon.Jugador_Items[k] != 0) ds_list_add(pItems, control_Dungeon.Jugador_Items[k]);
}
Selected = -1;
//global.Pausado = true;

// Optimization
for(i = 0; i < 30; i++) {
    itemID[i] = -2;
    itemIcon[i] = -2;
}
lang95 = lang(95);
lang96 = lang(96);
lang36 = lang(36);
lang7031 = lang(7031);
dsListSize = -1;
selectedName = "";
selectedDesc = "";

// Page options
items_per_page = 23;
current_page = 0;
max_page = floor(ds_list_size(pItems)/items_per_page);

