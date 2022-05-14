event_inherited();

if(has_perspective)
{
	var vangle = point_direction(x,y,o_player.x,o_player.y) - angle;

	if(vangle > 22.5 && vangle <= 67.5)
	{
		image_index = 1;
	}
	else if(vangle > 67.5 && vangle <= 112.5)
	{
		image_index = 2;
	}
	else if(vangle > 112.5 && vangle <= 157.5)
	{
		image_index = 3;
	}
	else if(vangle > 157.5 && vangle <= 202.5)
	{
		image_index = 4;
	}
	else if(vangle > 202.5 && vangle <= 247.5)
	{
		image_index = 5;
	}
	else if(vangle > 247.5 && vangle <= 292.5)
	{
		image_index = 6;
	}
	else if(vangle > 292.5 && vangle <= 337.5)
	{
		image_index = 7;
	}
	else
	{
		image_index = 0;
	}
}