/// @description The sprite should be opened if the chest doesn't contain any items
if(ID = -1) image_index = 1;

// Tell your partner that this chest has spawned
if(network_is_online()) and (global.NETWORK_HOST == true) {
	pack_send_multi("itemChestSpawn","netid",netid,"x",x,"y",y,"id",ID,"locked",locked);
}