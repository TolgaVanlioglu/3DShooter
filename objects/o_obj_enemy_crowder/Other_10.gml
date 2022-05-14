/*for(var a = -1; a < 2; a++)
{
	for(var b = -1; b < 2; b++)
	{
		for(var c = -1; c < 2; c++)
		{
			with(instance_create_layer(x,y,"layer_space",o_obj_enemyshard))
			{
				xmove = a;
				ymove = b;
				zmove = c;
			}
		}
	}
}
*/
repeat(9) with(instance_create_layer(x,y,"layer_space",o_obj_enemyshard))
{
	z = other.z;
	xmove = random_range(-2,2);
	ymove = random_range(-2,2);
	zmove = random_range(-2,2);
}
event_inherited();

