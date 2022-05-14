wait = !wait;
if(!wait)
{
	angle = irandom(359);
	direction = angle;
	switch(zprev)
	{
		case 0:
			zspeed = choose(-0.5,0.5);
			zprev = zspeed;
			break;
		case 0.5:
			zspeed = choose(0,-0.5);
			if(zspeed != 0)
				zprev = zspeed;
			break;
		case -0.5:
			zspeed = choose(0,0.5);
			if(zspeed != 0)
				zprev = zspeed;
			break;
	}
	
	speed = 1;
}
else
{
	zspeed = 0;
	speed = 0;
}
//speed = wait*2;
alarm[0] = 60;