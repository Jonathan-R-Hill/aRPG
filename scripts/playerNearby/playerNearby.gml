
function playerNearby() 
{
	var player = instance_nearest(x, y, oPlayer);
    
    // Check if the player is within a certain distance (e.g., 32 pixels)
    if (player != noone && point_distance(x, y, player.x, player.y) <= 100) {
        return true;
    }
    return false;
}
