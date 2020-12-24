if(!instance_exists(obj_Jugador)) exit;
timer_stamp = "";
var minute = 0;
var second = 0;
var hour = 0;
second = floor(obj_Jugador.runTime/60);
    second -= floor(second/60)*60;
    second = string(second);
    if(string_length(second)<2) second = "0" + string(second);
minute = floor(obj_Jugador.runTime/60/60);
    minute -= floor(minute/60)*60;
    minute = string(minute);
    if(string_length(minute)<2) minute = "0" + string(minute);
hour = string(floor(obj_Jugador.runTime/60/60/60));
    if(string_length(hour)<2) hour = "0" + string(hour);
if(string(hour) == "00") {
    timer_stamp = string(minute)+":"+string(second);
} else {
    timer_stamp = string(hour)+":"+string(minute)+":"+string(second);
}

