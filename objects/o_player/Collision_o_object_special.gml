if(other.z < 5 && other.z > -15)
{
	if(other.is_enemy)
	{
		o_drawer.life -= other.damage;
		//room_restart();
	}
	with(other) event_user(0);
}