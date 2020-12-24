/*if(room == cutscene01) or (room == cutscene03) or (room == cutscene01_02)
or (room == cutscene03_02) or (room == cutscene02) or (room == cutscene01_03)
or (room == cutscene04)*/ {
    if(alarm[1]<0) alarm[1] = 180; else {
        room_goto(room_Title);
        if(room == cutscene05) room_goto(room_GameOver);
        if(room == cutscene06) room_goto(room_GameOver);
        if(room == cutscene07) room_goto(room_GameOver);
        if(room == cutscene01_04) room_goto(room_GameOver);
        if(room == cutscene03_03) room_goto(room_GameOver);
    }
}

/* */
/*  */
