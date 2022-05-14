/// @description open portal

if(use_kill_count)
{
	if(kill_count >= kill_goal)
	{
		fn_spawnscript_portal(ending_obj.x, ending_obj.y, 0, r_gameroom, next_level, 0);
	//	fn_spawnscript_normal(ending_obj.x, ending_obj.y, 0, o_obj_portal)
	}
}
else
{
	fn_spawnscript_portal(ending_obj.x, ending_obj.y, 0, r_gameroom, next_level, 0);	
}