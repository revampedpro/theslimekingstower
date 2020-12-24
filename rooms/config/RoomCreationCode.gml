global.Items_All       = ",";
global.Items_Treasure  = ",";
global.Items_Bosses    = ",";
global.Items_Arcade    = ",";
global.Items_Shop      = ",";
global.Items_Passive   = ",";

global.Boss_All		   = "";
global.Boss_Rush	   = "";

global.Numero_De_Items = -1;
for(ii = 0; ii < count_items(); ii++) {
    var bossType     = get_item(ii,10);
    var arcadeBanned = get_item(ii,15);
    var shopType     = get_item(ii,16);
													global.Items_All      += string(ii) + ",";
    if(bossType == true)							global.Items_Bosses   += string(ii) + ",";
    if(bossType == false) and (shopType == false)	global.Items_Treasure += string(ii) + ",";
    if(arcadeBanned == false)						global.Items_Arcade   += string(ii) + ",";
	if(shopType == true)							global.Items_Shop	  += string(ii) + ",";
    if(get_item(ii,6) == false)						global.Items_Passive  += string(ii) + ",";
}

for(var ii = 0; ii < 200; ii++) {
	var b = get_boss(ii,0);
	if(b != -1) {
		global.Boss_All += "," + string(ii);
		if(get_boss(ii,7) == true) global.Boss_Rush += "," + string(ii);
	}
}


str = "global.ITEMS_ALL = " + "\"" + string(global.Items_All) + "\"" + ";#" + 
"global.ITEMS_TREASURE = " + "\"" + string(global.Items_Treasure) + "\"" + ";#" + 
"global.ITEMS_BOSSES = " + "\"" + string(global.Items_Bosses) + "\"" + ";#" + 
"global.ITEMS_ARCADE = " + "\"" + string(global.Items_Arcade) + "\"" + ";#" + 
"global.ITEMS_PASSIVE = " + "\"" + string(global.Items_Passive) + "\"" + ";#" + 
"global.ITEMS_SHOP = " + "\"" + string(global.Items_Shop) + "\"" + ";#" + 
"global.BOSS_ALL = ds_list_create(); " +
"ds_list_add(global.BOSS_ALL"+string(global.Boss_All)+");#" +
"global.BOSS_RUSH = ds_list_create(); " +
"ds_list_add(global.BOSS_RUSH"+string(global.Boss_Rush)+");#" +
"global.Numero_De_Items = " + string(count_items()) + ";#" +
"global.Numero_De_Pets = " + string(count_pets()) + ";";

clipboard_set_text(str);

show_message_async("Config copied to your clipboard, change every hashtag into a line break (\\n on notepad++) and then paste it on the script \"game_init\".");
game_end();