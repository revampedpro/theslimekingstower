if(active == false)exit;

if(!found_first) and (global.characterSelected != -1) and (alarm[1]<0) {
    if(global.characterSelected == 0) {
        found_first = true;
    } else {
        pos++; 
        if(pos > instance_number(objChallengeSelect)) pos = 1;
    }
}

var posMax = instance_number(objChallengeSelect);
var X = x;
var Y = y;
var S = 180;
if(keyboard_check_pressed(vk_up))   { pos++; if(pos > posMax) pos = 1; }
if(keyboard_check_pressed(vk_down)) { pos--; if(pos < 0) pos = posMax-1; }
for(i = 0; i < posMax; i++) {
    var ins = instance_find(objChallengeSelect,i);
    ins.x = X +  S    * cos(degtorad(-90+((pos+i)/posMax*360)));
    ins.y = Y - (S/6) * sin(degtorad(-90+((pos+i)/posMax*360)));
    ins.depth = -ins.y;
    var p = point_distance(ins.y2,ins.y2,X,Y+(S/2));
    ins.p = pos+i;
    ins.image_xscale = clamp(0.2 + (1 - p/360)*3,0,1);
    ins.image_yscale = clamp(0.2 + (1 - p/360)*3,0,1);    
}


