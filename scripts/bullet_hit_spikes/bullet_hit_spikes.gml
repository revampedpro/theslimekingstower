/// @description bullet_hit_spikes(id)
/// @function bullet_hit_spikes
/// @param id
function bullet_hit_spikes() {
	// Spike hit
	var Destruible = argument[0];
	with(Destruible) {        
	    instance_destroy();
	    var muzzyHit = instance_create(x, y, fx_Sprite); 
	    muzzyHit.sprite_index = sprBulletMuzzyHits;
	    muzzyHit.image_index = irandom(muzzyHit.image_number);
	    muzzyHit.alarm[0] = 2;
	    muzzyHit.image_speed = 0;
	    muzzyHit.image_angle = point_direction(x,y,other.x,other.y)+180;
	    muzzyHit.depth = -999;
	}
	if(player_has_item(119) == false) {
	    if(destroyable) instance_destroy();
	}




}
