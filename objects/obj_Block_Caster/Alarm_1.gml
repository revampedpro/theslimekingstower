// If there's any light in the same place destroy it.
var Light = -1;
Light = instance_place(x,y,obj_Light_Environment);
with(Light)instance_destroy();

// If there are not nearby lights create them. Then they will be destroyed if they're not needed.
if(!position_meeting(x+24,y,obj_Light_Environment)) { instance_create(x+24,y,obj_Light_Environment); }
if(!position_meeting(x-24,y,obj_Light_Environment)) { instance_create(x-24,y,obj_Light_Environment); }
if(!position_meeting(x,y+24,obj_Light_Environment)) { instance_create(x,y+24,obj_Light_Environment); }
if(!position_meeting(x,y-24,obj_Light_Environment)) { instance_create(x,y-24,obj_Light_Environment); }


