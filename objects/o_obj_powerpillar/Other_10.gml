if(!cracked)
{
	cracked = 1;
	image_index = 1;
	with(owner)
	{
		pillars_alive--;
		event_user(1);
	}
}