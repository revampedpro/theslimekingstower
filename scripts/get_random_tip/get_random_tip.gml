/// @description get_random_tip
function get_random_tip() {
	var tip;
	tip[0]  = lang(4300);
	tip[1]  = lang(4301);
	tip[2]  = lang(4302);
	tip[3]  = lang(4303);
	tip[4]  = lang(4304);
	tip[5]  = lang(4305);
	tip[6]  = lang(4306);
	tip[7]  = lang(4307);
	tip[8]  = lang(4308);
	tip[9]  = lang(4309);
	tip[10] = lang(4310);
	tip[11] = lang(4311);
	tip[12] = lang(4312);
	tip[13] = lang(4313);
	tip[14] = lang(4314);
	tip[15] = lang(4315);
	tip[16] = lang(4316);
	tip[17] = lang(4317);
	tip[18] = lang(4318);
	return tip[irandom(array_length_1d(tip)-1)];


}
