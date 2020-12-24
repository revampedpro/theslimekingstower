/// @description bullet_hit_destructable(id)
/// @function bullet_hit_destructable
/// @param id
function bullet_hit_destructable() {
	// Destructable hit
	var Destruible = argument[0];
	with(Destruible) {
	    if(sprite_index = sprPot) {
	        event_perform(ev_other,ev_user0);
	    }
	    var muzzyHit = instance_create(x, y, fx_Sprite); 
	    muzzyHit.sprite_index = sprBulletMuzzyHits;
	    muzzyHit.image_index = irandom(muzzyHit.image_number);
	    muzzyHit.alarm[0] = 2;
	    muzzyHit.image_speed = 0;
	    muzzyHit.image_angle = point_direction(x,y,other.x,other.y)+180;
	    muzzyHit.depth = -999;
	    instance_destroy();
	}
	if(player_has_item(119) == false and !GhostBullet) {
	    if(destroyable) instance_destroy();
	}



}
