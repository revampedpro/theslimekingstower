if(active == false)exit;
var posMax = instance_number(parent_Menu_Nuevo);
var X = x;
var Y = y;
var S = 150;
if(keyboard_check_pressed(vk_up))   { pos++; if(pos > posMax) pos = 1; }
if(keyboard_check_pressed(vk_down)) { pos--; if(pos < 0) pos = posMax-1; }
for(i = 0; i < posMax; i++) {
    var ins = instance_find(parent_Menu_Nuevo,i);
    ins.x = X +  S    * cos(degtorad(-90+((pos+i)/posMax*360)));
    ins.y = Y - (S/6) * sin(degtorad(-90+((pos+i)/posMax*360)));
    ins.depth = -ins.y;
    var p = point_distance(ins.y2,ins.y2,X,Y+(S/2));
    ins.p = pos+i;
    ins.image_xscale = clamp((1 - p/360)*1,0.1,1);
    ins.image_yscale = clamp((1 - p/360)*1,0.1,1);    
}

//if(keyboard_check_pressed(vk_space)) instance_create(0,0,objCharacterSelect);

