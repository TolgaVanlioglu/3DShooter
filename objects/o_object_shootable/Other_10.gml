if(is_enemy && object_index != o_obj_hellrock)
{
	with(o_drawer)
	{
		kill_count++;
		event_user(0);
	}
}
instance_destroy();