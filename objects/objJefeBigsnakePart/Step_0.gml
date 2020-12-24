// Follow parent
depth = Depth;
if(instance_exists(Parent)) {

    HP = 1;
    
    // Move
    if(point_distance(x,y,Parent.x,Parent.y)>16) {
        x = tween_to(x,Parent.x,4);
        y = tween_to(y,Parent.y,4);
        image_angle = point_direction(x,y,Parent.x,Parent.y);
    } else {
        //speed = 0;
    }
    
} else {

    instance_destroy();    

}

