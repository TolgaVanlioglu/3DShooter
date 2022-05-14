follow_mode = !follow_mode;
speed = irandom(2)
if(z > 20)
	zspeed = random_range(-2,0);
else if(z < -20)
	zspeed = random_range(0,2);
else
	zspeed = random_range(-2,2);

//speed = wait*2;
alarm[0] = 60;