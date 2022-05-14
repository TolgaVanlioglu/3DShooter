if(!variable_global_exists("fade_sprite"))
	global.fade_sprite = s_skybox_edge;

fn_create_transition();

life = 100;
view_set_wport(view_wport[0],960);
view_set_hport(view_hport[0],540);
floorceiling_offsetv = 0;
floorceiling_offseth = 0;
floor_start = 150;
fov_base = 100;
fov = fov_base;
angle = 0;
diver = 480/fov;
grid_x = 3072;
grid_y = 3072;
plyr = o_player;
plyr_y = 200;
plyr_z = 0;
plyr_drawmode = 0;
timer = 0;

draw_floor = 0;
enemy_count = 0;

skybox = instance_create_layer(x,y,"layer_sky",o_skybox);
skybox.sprite_index = s_skybox_edge;
skybox.owner = id;

render_dist = 800;
render_dist_sp = 3000;
render_rays = 30;
render_angles = (fov_base+10)/render_rays;

use_kill_count = 1;
kill_count = 0;
kill_goal = 1;
next_level = 0;

listof_enemies = ds_list_create();
listof_enemies_size = 0;
listof_items = ds_list_create();
listof_items_size = 0;

weapon_sprites[0] = s_player_gun_single;
weapon_sprites[1] = s_player_gun_mini;

/*
world_objects[x,y,0] = x
world_objects[x,y,1] = y
world_objects[x,y,2] = z
world_objects[x,y,3] = col
world_objects[x,y,4] = spr
world_objects[x,y,5] = frame
*/

for(var a = 0; a < 50; a++)
{
	with(instance_create_layer(50,50+a*16,"layer_space",o_obj_test))
	{
		z = a-25;
	}
}

if(global.cur_ep == 0)
{
	if(global.cur_level == -1)
	{
		fn_makeworld_level0_0(id);		
	}
	else if(global.cur_level == 0)
	{
		fn_makeworld_level1_1(id);		
	}
	else if(global.cur_level == 1)
	{
		fn_makeworld_level1_2(id);
	}
	else if(global.cur_level == 2)
	{
		
	}
}