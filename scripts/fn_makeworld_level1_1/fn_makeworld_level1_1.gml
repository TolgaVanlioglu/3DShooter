function fn_makeworld_level1_1(runner)
{
	//fn_makeworld_basicmeteors(runner, 100);

	//sprite_floor = s_level_floor;
	//sprite_skybox = s_skybox_edge;
	//skybox_index = 0;
	skybox.image_index = 1;
	next_level = 1;
	runner.ending_obj = fn_spawnscript_normal(1536,1536,-70,o_obj_powersurge_1_1);
	//instance_create_layer(1536,1536,"layer_space",o_obj_powersurge);
	
	plyr.x = 1536;
	plyr.y = 1536;
	
	runner.kill_goal = 100;
	
	var vx = 0;
	var vy = 0;
	var va = 0;
	var vr = 0;
	repeat(100)
	{
		va = irandom(359);
		vr = irandom_range(1000,2000);
		vx = vr*dcos(va)+1536;
		vy = vr*dsin(va)+1536;
		fn_spawnscript(vx,vy,0,o_obj_enemy_hellgreeter);
	}
	
	var vf_col = function() { return make_color_rgb(irandom(255),0,0); }
	var vf_z = function() { return -irandom_range(100,150); }
	var vf_x = function() { return -irandom_range(-10,10); }
	var vf_y = function() { return -irandom_range(-10,10); }
	
	//fn_makeworld_basicrepeatobjs(s_cloud, 2, 90, vf_col, vf_x, vf_y, vf_z, 0, 0, 0);
	vf_z = function() { return -irandom_range(-199,199); }
	fn_makeworld_basicrepeatobjs(s_ash, 2, 50, vf_col, vf_x, vf_y, vf_z, 0, 0, 2);
}