/// @description  replace_premultiplied_sprite(sprite)
/// @function  replace_premultiplied_sprite
/// @param sprite
function replace_premultiplied_sprite(argument0) {

	var spr;
	spr = create_premultiplied_sprite(argument0);
	sprite_assign(argument0, spr);
	sprite_delete(spr);



}
