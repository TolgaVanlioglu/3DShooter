// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fn_spawnscript(xx,yy,zz,spawnthing)
{
	with(instance_create_layer(xx,yy,"layer_space",o_obj_spawnball))
	{
		spawn = spawnthing;
		z = zz;
		alarm[0] = 60 + irandom(60);
	}
}