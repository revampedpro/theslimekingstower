// Vars
stat = 0; // 0: Strength, 1: Health, 2: Cadence
image_angle = random(360);
x_to = x;
y_to = y;
image_speed = 0;
destroy = false;
x += 15;
y += 15;
ystart += 15;
xstart += 15;
alpha = 0;
depth = -1000;
stat_text = lang(6510);

devices = false;
var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;){
   if gamepad_is_connected(i) devices = true;
}