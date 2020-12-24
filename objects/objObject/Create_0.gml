/// @description EXPLANATION OF OBJECT

/*
 * This is the parent object of ALL objects which have any 
 * movement, animation or collisions
 * 
 * we're using vx, vy & image_spd
 * instead of the GM default variables hspeed, vspeed & image_speed
 * 
 * This gives us a lot more freedom for stuff like slow motion
 * or pausing all object's animation & movement etc...
 * 
 * because of this, we can't use GM's built in functions like
 * motion_add or move_towards_point or anything like that.
 * 
 * I've added a few functions to compensate for that
 * set_speed and add_speed
 */


/* */
///Set variables
image_speed = 0;
vx = 0; //x velocity
vy = 0; //y velocity
v_max = 10; //velocity max
cx = 0; //< used for inter-pixel movement
cy = 0;
xscale = 1;
yscale = 1;

can_collide = true;
collide = noone; //Last collided with object




/* */
///Room variables
parent_room = noone;
grid_x = 0;
grid_y = 0;


/* */
/*  */
