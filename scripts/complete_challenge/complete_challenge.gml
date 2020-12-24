/// @description complete_challenge(id)
/// @function complete_challenge
/// @param id
function complete_challenge() {
	ini_open("save.ini");
	ini_write_real("CHAL"+string(argument[0]), "0", true);
	ini_close();
	global.ChallengeUnlocked[argument[0]] = true;

	// Check if "Mind" is unlocked now
	if(check_challenge_unlocked(0))and(check_challenge_unlocked(1))and(check_challenge_unlocked(2))and(check_challenge_unlocked(3))and(check_challenge_unlocked(4))
	and(check_challenge_unlocked(5))and(check_challenge_unlocked(6))and(check_challenge_unlocked(7))and(check_challenge_unlocked(8))and(check_challenge_unlocked(9))
	and(check_challenge_unlocked(10))and(check_challenge_unlocked(11))and(check_challenge_unlocked(12))and(check_challenge_unlocked(13))and(check_challenge_unlocked(14))
	and(check_challenge_unlocked(15))and(check_challenge_unlocked(16))and(check_challenge_unlocked(17))and(check_challenge_unlocked(18))and(check_challenge_unlocked(19)) {
	    if(!check_character_unlocked(7,0)) unlock_character(7);
	}




}
