// Tween
xScale = tween_to(xScale, 1, 5);
yScale = tween_to(yScale, 1, 5);

// Reveal map
if(map_revealed == false) and (player_has_item(6)) map_revealed = true;