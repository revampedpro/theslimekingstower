// Destroy and summon lazers
instance_destroy();
var lazer = instance_create(x,y,obj_Enemy_Laser); if(instance_exists(lazer)) { lazer.Parent = -10; lazer.Direction = 0;   }
var lazer = instance_create(x,y,obj_Enemy_Laser); if(instance_exists(lazer)) { lazer.Parent = -10; lazer.Direction = 90;  }
var lazer = instance_create(x,y,obj_Enemy_Laser); if(instance_exists(lazer)) { lazer.Parent = -10; lazer.Direction = 180; }
var lazer = instance_create(x,y,obj_Enemy_Laser); if(instance_exists(lazer)) { lazer.Parent = -10; lazer.Direction = 270; }