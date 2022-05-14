function fn_create_transition()
{
	with(instance_create_depth(240,240,-200,o_transition))
	{
		sprite = global.fade_sprite;
		move_spd = 0;
		move_acc = 0.15;
		slice_size = 4;
		start_rand = 32;
		event_user(0);
	}
}