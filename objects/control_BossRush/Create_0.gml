/// @description Vars
image_speed = 0.25;
global.bossRush_Boss = 0;
boss_list = [];
boss_list[0]  = bosses.blue_slime;
boss_list[1]  = bosses.gray_slime;
boss_list[2]  = bosses.purple_slime;
boss_list[3]  = bosses.orange_slime;
boss_list[4]  = bosses.green_slime;
boss_list[5]  = bosses.red_slime;
boss_list[6]  = bosses.black_slime;
boss_list[7]  = bosses.yellow_slime;
boss_list[8]  = bosses.white_slime;
boss_list[9]  = bosses.aqua_slime;
boss_list[10] = bosses.glow_slime;
boss_list[11] = bosses.ghost_slimeking;
boss_list[12] = bosses.lode_slime;
boss_list[13] = bosses.rock_slime;
boss_list[14] = bosses.bomb_slime;
boss_list[15] = bosses.planet_slime;
boss_list[16] = bosses.bulb_slime;
boss_list[17] = bosses.bone_slime;
boss_list[18] = bosses.big_snake;
boss_list[19] = bosses.eater_slime;
boss_list[20] = bosses.snow_slime;
boss_list[21] = bosses.not_slimeking;
boss_list[22] = bosses.crab_slime;
boss_list[23] = bosses.spider_slime;
boss_list[24] = bosses.caster_slime;
boss_list[25] = bosses.slimeking;
boss_list[26] = bosses.gigadusa;
boss_list[27] = bosses.green_gigadusa;
boss_list[28] = bosses.mad_slime;
boss_list[29] = bosses.great_papasa;
boss_list[30] = bosses.creep;
boss_list[31] = bosses.skeleton_king;
boss_list[32] = bosses.master_mimic;
max_boss = 32;
current_boss  = 0;
ad_available = false;
counter = 0;

// Treasure
treasure_available = false;
obj_Cofre_BossRush.ID = get_random_item_from_pool("arcade");