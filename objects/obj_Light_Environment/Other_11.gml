// If there's any nearby block, recalculate shadows of active blocks.
var left  = (instance_position(x+24+12,y+00+12,obj_Block_Caster));
var right = (instance_position(x-24+12,y+00+12,obj_Block_Caster));
var down  = (instance_position(x+00+12,y+24+12,obj_Block_Caster));
var up    = (instance_position(x+00+12,y-24+12,obj_Block_Caster));
if(left or right or down or up)block_redraw_shade();

