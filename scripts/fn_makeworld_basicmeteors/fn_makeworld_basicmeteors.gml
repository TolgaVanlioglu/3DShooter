function fn_makeworld_basicmeteors(runner, meteors)
{
	repeat(meteors)
	{
		instance_create_layer(irandom_range(64,runner.grid_x-64),irandom_range(64,runner.grid_y-64),"layer_space",o_obj_hellrock);
	}
}