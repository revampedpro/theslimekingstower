if(Desactivar == false) {
    event_inherited();
}

///Once settled, draw self to floor, then destroy
if(Desactivar == true) exit;
if (vx == 0 && vy == 0)
{
    Desactivar = true;
    
    // Compress
    if(global.COMPRESS_DETAILS == true)  {
        if(!instance_exists(control_floorDetails)) instance_create(0,0,control_floorDetails);
        var l = control_floorDetails.d;
        control_floorDetails.floorSprite[l] = sprite_index;
        control_floorDetails.floorX[l] = x;
        control_floorDetails.floorY[l] = y;
        control_floorDetails.floorColor[l] = image_blend;
        control_floorDetails.floorAlpha[l] = image_alpha;
        control_floorDetails.floorAngle[l] = image_angle;
        control_floorDetails.d++;
        if(control_floorDetails.d > control_floorDetails.dMax) control_floorDetails.d = 0;
        instance_destroy();
    }
    
}
///Friction
vx = approach(vx, 0, ground_frict);
vy = approach(vy, 0, ground_frict);
///Rotate
if (rotate > 0)
{
    var spd = point_distance(0, 0, vx, vy);
    image_angle += spd*rotate;
}


///Keep depth constant
depth = 180;


