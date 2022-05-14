event_inherited();

direction = point_direction(x,y,target.x,target.y);
if(place_meeting(x,y,target))
	instance_destroy();