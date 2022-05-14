function fn_makeworld_level0_0(runner)
{
	//fn_makeworld_basicmeteors(runner, 100);

	//sprite_floor = s_level_floor;
	//sprite_skybox = s_skybox_edge;
	//skybox_index = 0;
	skybox.image_index = 0;
	next_level = 0;
	runner.ending_obj = fn_spawnscript_normal(1536,1536,-70,o_obj_powersurge_0_0);
	//instance_create_layer(1536,1536,"layer_space",o_obj_powersurge);
	
	runner.kill_goal = 40;
	
	repeat(40)
	{
		fn_spawnscript(1536+irandom_range(-200,200),1536+irandom_range(-200,200),0,o_obj_enemy_drone);
	}
	
	var vf_col = function() { return make_color_hsv(0,0,irandom_range(128,255)); }
	var vf_z = function() { return -irandom_range(100,150); }
	var vf_x = function() { return -irandom_range(-10,10); }
	var vf_y = function() { return -irandom_range(-10,10); }
	
	fn_makeworld_basicrepeatobjs(s_cloud, 2, 50, vf_col, vf_x, vf_y, vf_z, 0, 0.1, 0);
}