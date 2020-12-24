/// @description Create a random tip
random_set_seed(global.UNIQUE_MAP_SEED + control_Dungeon.Dungeon_Seed[global.Posicion_i, global.Posicion_j]);
create_textbox(x,y,get_random_tip());