/// @description instance_random
/// @param instance
/// Returns a random instance of an object
function instance_random() {
	var d = ds_list_create();
	var l = instance_number(argument[0]);
	for(var i = 0; i < l; i++) {
		var n = instance_find(argument[0],i);
		ds_list_add(d,n);
	}
	ds_list_shuffle(d);
	var v = ds_list_find_value(d,0);
	ds_list_destroy(d);
	if(is_undefined(v)) return -1;
	return v;


}
