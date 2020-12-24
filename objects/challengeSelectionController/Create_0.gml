active = false;
alarm[0] = 1;
pos = 1;
found_first = false;

// load challenges
for(i = 0; i < 999; i++) {

    if(get_challenge(i,"name") != "") {
        var selectBox = instance_create(0,0,objChallengeSelect);
        selectBox.playerID = i;
    }

}

