z += zspeed;
//if(abs(z) > 150)
//	image_alpha = (100-abs(z)-100)/100;
//else
//	image_alpha = 1;

if(zspeed != 0)
	image_alpha = 1-abs(z)/200

if(abs(z) > 200)
	z -= sign(z)*400;