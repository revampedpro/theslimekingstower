
// Recalculate nearby blocks shadows in alarm to compensate the frames needed for the light to be created.
var Recalculate = 0;
var right = instance_position(x+24+12,y+00+12,obj_Block_Caster)
var left  = instance_position(x-24+12,y+00+12,obj_Block_Caster)
var up    = instance_position(x+00+12,y-24+12,obj_Block_Caster)
var down  = instance_position(x+00+12,y+24+12,obj_Block_Caster)
if(Recalculate = 0) && (right != noone) { right.alarm[3] = 2; Recalculate = 1;}
if(Recalculate = 0) && (left != noone)  {  left.alarm[3] = 2; Recalculate = 1;}
if(Recalculate = 0) && (up != noone)    {    up.alarm[3] = 2; Recalculate = 1;}
if(Recalculate = 0) && (down != noone)  {  down.alarm[3] = 2; Recalculate = 1;}

// Recaulculate nearby block tiles and shadows.
with(right)alarm[0]=1;
with(left)alarm[0]=1;
with(up)alarm[0]=1;
with(down)alarm[0]=1;

// Reactivate nearby lights to check if they are stil needed.
var l_cent  = (instance_position(x+00,y+00,obj_Light_Dynamic));
var l_left  = (instance_position(x+24,y+00,obj_Light_Dynamic));
var l_right = (instance_position(x-24,y+00,obj_Light_Dynamic));
var l_down  = (instance_position(x+00,y+24,obj_Light_Dynamic));
var l_up    = (instance_position(x+00,y-24,obj_Light_Dynamic));
with(l_cent) alarm[0]=1;
with(l_left) alarm[0]=1;
with(l_right)alarm[0]=1;
with(l_down) alarm[0]=1;
with(l_up)   alarm[0]=1;

// Recalculate nearby blocks shadows.
block_redraw_shade();

