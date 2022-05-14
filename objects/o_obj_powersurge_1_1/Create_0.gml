z = -70;
spewed = 0;
cracked = 0;
/*
powerballs[0] = instance_create_layer(x,y,"layer_space",o_obj_powersurge_ball);
powerballs[1] = instance_create_layer(x,y,"layer_space",o_obj_powersurge_ball);
powerballs[2] = instance_create_layer(x,y,"layer_space",o_obj_powersurge_ball);
ballangle = 0;

with(powerballs[0])
{
	owner = other.id;
	aoffs = 0;
	xorig = other.x;
	yorig = other.y;
	z = -50;
}
with(powerballs[1])
{
	aoffs = 120;
	owner = other.id;
	xorig = other.x;
	yorig = other.y;
	z = -50;
}
with(powerballs[2])
{
	aoffs = 240;
	owner = other.id;
	xorig = other.x;
	yorig = other.y;
	z = -50;
}

for(var a = 0; a < 3; a++)
{
	powerballs[a].pillar = instance_create_layer(x+500*dcos(a*120),y+500*dsin(a*120),"layer_space",o_obj_powerpillar);
}