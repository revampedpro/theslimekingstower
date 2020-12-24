/// @description Sleep
var t = current_time + time;
while (current_time < t) { /* idle loop */ }
instance_destroy();