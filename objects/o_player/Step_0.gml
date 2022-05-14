var aimed_at = ds_priority_create();
var aimed_at_close = ds_list_create();

fbmove = keyboard_check(ord("W")) - keyboard_check(ord("S"));
lrmove = keyboard_check(ord("A")) - keyboard_check(ord("D"));

with(o_drawer)
{
	fov = fov_base+(other.speed)*2;
	diver = 480/fov;
	other.fov = fov
}

if(fbmove == 1)
{
	if(speed < max_spd)
		speed += 0.1;
}
else if(fbmove == -1)
{
//	lrmove *= -1;
	if(speed > -max_spd)
		speed -= 0.1;
}

else
{
	if(abs(speed) > 0)
		speed -= sign(speed)*0.1;
}

o_drawer.floorceiling_offsetv = fn_indexer(o_drawer.floorceiling_offsetv+speed,120);
o_drawer.floorceiling_offseth = fn_indexer(o_drawer.floorceiling_offseth+ang_spd,480);

/*
if(snap)
{
	if(mouse_x > 420) window_mouse_set(window_get_width()/2,window_mouse_get_y());
	else if(mouse_x < 60) window_mouse_set(window_get_width()/2,window_mouse_get_y());
}
image_angle = 360-(mouse_x-60)*2;
//image_angle = point_direction(x,y,mouse_x,mouse_y);
direction = image_angle;
*/

if(lrmove == 1)
{
	if(ang_spd < ang_spd_max)
		ang_spd += 0.1;
	if(anglr < 2)
		anglr += 0.1;
}
else if(lrmove == -1)
{
	if(ang_spd > -ang_spd_max)
		ang_spd -= 0.1;
	if(anglr > -2)
		anglr -= 0.1;
}
else
{
	if(abs(ang_spd) > 0)
		ang_spd -= sign(ang_spd)*0.1;
	if(anglr != 0)
		anglr -= 0.1*sign(anglr);
}

image_angle += ang_spd;
direction = image_angle;


/*
for(var b = 0; b < weapon_shots; b++)
{
	for(var a = 2; a < 20; a++)
	{
		vx = x+shoot_incrlen*dsin(direction+90)*a;
		vy = y+shoot_incrlen*dcos(direction+90)*a;
		vd = shoot_incrsiz*a;
		
		aimlist = ds_list_create();
		aimnum = collision_circle_list(x+shoot_incrlen*dsin(direction+90)*a,y+shoot_incrlen*dcos(direction+90)*a,shoot_incrsiz*a,o_object_shootable,0,0);			
		
		if(b > 0)
		
		if(aimedat[b] != noone) with(aimedat[b])
		{
			if(is_shootable)
			{
				other.cur_aims++;
				a = 20;
				b = other.weapon_shots;
			}
		}
	}
}*/
//for(var a = 2; a < 20; a++)
//{
//	for(var b = 0; b < weapon_shots; b++)
//		aimedat[b] = collision_circle(x+shoot_incrlen*dsin(direction+90)*a,y+shoot_incrlen*dcos(direction+90)*a,shoot_incrsiz*a,o_object_shootable,0,0);
//	if(aimedat[cur_aims] != noone)
//	{
//		if(aimedat[cur_aims].is_shootable)
//		{
//			cur_aims++;
//			break;
//		}
//	}
//}
with(o_object) selected = 0;
cur_aims = 0;

with(o_object_shootable)
{
	//if(other.cur_aims < other.weapon_shots)
	{
		if(is_shootable && in_shoot_range)
		{
			//selected = 1;
			//other.cur_aims++;
			ds_priority_add(aimed_at, id, dist_to_plyr);
		}
		else
		{
			selected = 0;
		}
	}
}

for(var a = 0; a < weapon_shots; a++)
{
	if(a >= ds_priority_size(aimed_at))
	{
		break;
	}
	else
	{
		ds_list_add(aimed_at_close, ds_priority_find_min(aimed_at));
		ds_priority_find_min(aimed_at).selected = 1;
		ds_priority_delete_min(aimed_at);
	}
}

if(weapon_cooldown <= 0)
{
	for(var a = 0; a < ds_list_size(aimed_at_close); a++)
	{
		switch(weapon_mode)
		{
			case 0:
				if(keyboard_check_pressed(vk_space))
				{
					with(aimed_at_close[|a])
					{
						if(is_shootable)
						{
							other.weapon_ammo--;
							other.weapon_cooldown = 10;
							other.weapon_cooldown_start = 10;
							o_player.speed -= 0.2;
							event_user(0);
						}
					}
				}
				break;
			case 1:
				if(keyboard_check(vk_space))
				{
					with(aimed_at_close[|a])
					{
						if(is_shootable)
						{
							other.weapon_ammo--;
							other.weapon_cooldown = 10;
							other.weapon_cooldown_start = 10;
							event_user(0);
						}
					}
				}
				break;
			case 2:
				if(keyboard_check(vk_space))
				{
					with(instance_create_layer(x,y,"layer_space",o_obj_playerlaser))
					{
						speed = 10;
						direction = other.image_angle;
					//	image_angle = direction;
					}
				}
				break;
		}
	}
}
else
{
	weapon_cooldown--;
}

if(keyboard_check(vk_shift))
{
	max_spd = 24;
}
else
{
	max_spd = 6;
}

//var iN = instance_nearest(x,y,o_object_special);

//if(iN != noone)
//{
//	with(iN)
//	{
//		if(is_enemy)
//		{
//			if(point_distance(x,other.x,y,other.y) < radius)
//			{
//				o_drawer.life -= damage;
//				event_user(0);
//			}
//			//room_restart();
//		}
//	}
//}

ds_priority_destroy(aimed_at);
ds_list_destroy(aimed_at_close);
//ds_list_destroy(global.objs);
o_drawer.angle = image_angle;