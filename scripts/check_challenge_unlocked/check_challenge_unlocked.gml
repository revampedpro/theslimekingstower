/// @description check_challenge_unlocked(id)
/// @function check_challenge_unlocked
/// @param id
function check_challenge_unlocked() {
	if(global.ChallengeUnlocked[argument[0]] == -1) {
	    ini_open("save.ini");
	        var request = ini_read_real("CHAL"+string(argument[0]), "0", 0);
	    ini_close();
	    global.ChallengeUnlocked[argument[0]] = request;
	    return request;
	} else {
	    return global.ChallengeUnlocked[argument[0]];
	}



}
