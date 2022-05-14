z = 0;
c = irandom(359);
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