function fn_spawnscript_portal(xx,yy,zz,dest_room, level, ep)
{
	var newobj = instance_create_layer(xx,yy,"layer_space",o_obj_portal);
	with(newobj)
	{
		dest_ep = ep;
		dest_level = level;
		z = zz;
		portal_dest = dest_room;
	}
	return newobj;
}