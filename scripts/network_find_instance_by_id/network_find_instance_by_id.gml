/// @description Find a instance by it's network id
/// @param instance
/// @param netid
function network_find_instance_by_id() {
	// Returns the instance and if no instance is found, returns -1
	var n = instance_number(argument[0]);
	for(var i = 0; i < n; i++) {
		var e = instance_find(argument[0],i);
		if(string(e.netid) == argument[1]) return e;
	}
	return -1;


}
