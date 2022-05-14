function fn_spawnscript_normal(xx,yy,zz,obj)
{
	var newobj = instance_create_layer(xx,yy,"layer_space",obj);
	with(newobj)
	{
		z = zz;
	}
	return newobj;
}