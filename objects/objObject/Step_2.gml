/// @description Movement

///Limit speed
if( global.Pausado ) exit;
vx = min(v_max, max(-v_max, vx));
vy = min(v_max, max(-v_max, vy));

collide = noone; //reset the instance we're colliding with to noone
if (can_collide)
{
    ///This is for inter-pixel movement
    cx += vx;
    cy += vy;
    var vxNew = floor(cx);
    var vyNew = floor(cy);
    cx -= vxNew;
    cy -= vyNew;
    
    //Vertical
    repeat(abs(vyNew))
    {
        var svy = sign(vyNew);
        var inst = instance_place(x, y+svy, parent_Solid);
        if (inst != noone)
        {
            collide = inst;
            event_user(1);
            vy = 0;
            break;
        }
        else
        {
            y += svy;
        }
    }
    
    //Horizontal
    repeat(abs(vxNew))
    {
        var svx = sign(vxNew);
        var inst = instance_place(x+svx, y, parent_Solid);
        if (inst != noone)
        {
            collide = inst;
            event_user(1);
            vx = 0;
            break;
        }
        else
        {
            x += svx;
        }
    }
}
else
{
    x += vx;
    y += vy;
}


///Set depth
depth = -bbox_bottom;


