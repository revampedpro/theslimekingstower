if(visible == false)exit;
if(round(image_index) == 1) and (alarm[0] < 0) and (s == false) {
    alarm[0] = 1;
    s = true;
}
if(round(image_index) == 0) and (s == true) s = false;

