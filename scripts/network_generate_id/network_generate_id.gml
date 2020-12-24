/// @description Generate an unique networkid
function network_generate_id() {
	global.NETWORK_COMMON_ID++;
	return string(global.NETID) + "." + string(global.NETWORK_COMMON_ID);


}
