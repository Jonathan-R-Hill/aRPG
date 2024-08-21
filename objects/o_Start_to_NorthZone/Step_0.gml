var tolerance = 75;

if (object_exists(oPlayer)) 
{
	if (abs(oPlayer.x - x) <= tolerance && abs(oPlayer.y - y) <= tolerance) 
	{
		oPlayer.x = targetX;
		oPlayer.y = targetY;
	
		room_goto(targetRoom);
	}
}
