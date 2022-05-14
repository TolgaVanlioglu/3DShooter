z += zspeed;

if(awakable)
{
	if(!awake && dist_to_plyr < awake_range)
	{
		var objs = ds_list_create();
		var objnum = collision_circle_list(x,y,awake_range,o_object,0,1,objs,0);
		
		for(var a = 0; a < objnum; a++)
		{
			with(objs[|a])
			{
				event_user(2);
				awake = 1;
				awakable = 0;
			}
		}
		
		ds_list_destroy(objs);
		
		event_user(2);
		awake = 1;
		awakable = 0;
	}
}