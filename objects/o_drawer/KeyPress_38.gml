if(keyboard_check(vk_shift))
{
	plyr_z += 5;
	//render_dist += 16;
}
else
{
	fov_base += 5;
	diver = 480/fov_base;
}
//render_dist += 4;
//show_debug_message(render_dist);