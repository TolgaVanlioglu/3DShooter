event_inherited();
if(follow_mode)
{
	direction = point_direction(x,y,o_player.x,o_player.y);
	angle = direction;
}
else
{
	direction += 1;
	angle = direction;
}
//z += zspeed;