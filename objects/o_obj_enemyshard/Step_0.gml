x += xmove;
y += ymove;
z += zmove;
image_alpha -= fade_spd;
if(image_alpha <= 0.05)
	instance_destroy();