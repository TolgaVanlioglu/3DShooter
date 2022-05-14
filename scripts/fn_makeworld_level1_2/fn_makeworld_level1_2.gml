function fn_makeworld_level1_2(runner)
{
	fn_makeworld_basicmeteors(runner, 100);

	runner.ending_obj = instance_create_layer(1536,1536,"layer_space",o_obj_powersurge_1_2);
	//skybox_index = 0;
	skybox.image_index = 2;
	next_level = 2;
	use_kill_count = 0;
	//var vf_col = function() { return make_color_rgb(irandom_range(128,255),0,0); }
	repeat(3)
		fn_spawnscript_normal(irandom_range(64,runner.grid_x-64),irandom_range(64,runner.grid_x-64), irandom_range(-20,20), o_obj_helpball);
	
	var vf_col = function() { return make_color_hsv(irandom_range(190,290),255,255); }
	var vf_z = function() { return -irandom_range(100,150); }
	var vf_x = function() { return -irandom_range(-10,10); }
	var vf_y = function() { return -irandom_range(-10,10); }
	
	fn_makeworld_basicrepeatobjs(s_cloud, 2, 90, vf_col, vf_x, vf_y, vf_z, 0, 1, 0);
}