// Check nearby blocks
var Destroy = 1;
var P_Left  = position_meeting(x-24+12,y+12,obj_Block_Caster);
var P_Right = position_meeting(x+24+12,y+12,obj_Block_Caster);
var P_Up    = position_meeting(x+12,y-24+12,obj_Block_Caster);
var P_Down  = position_meeting(x+12,y+24+12,obj_Block_Caster);

// If there's any block near, dont destroy.
if(P_Left || P_Right || P_Up || P_Down) {
    Destroy = 0;
}

// If there's not any block near, destroy.
if(Destroy) {
    instance_destroy();
}

// If it is placed inside a block, destroy.
if(position_meeting(x+12,y+12,obj_Block_Caster)) {
    instance_destroy();
}

