//draw_set_color(c_black);
//draw_rectangle(x,y,x+480,y+270,0);
//draw_set_color(c_white);
//surface_resize(application_surface,360,480);

var objs = ds_list_create();
var objnum = collision_rectangle_list(plyr.x-render_dist_sp,plyr.y-render_dist_sp,plyr.x+render_dist_sp,plyr.y+render_dist_sp,o_object,0,0,objs,1);
//var aimed_at = ds_list_create();
//var vaims = 0;

//var objs = ds_list_create();
//var objnum = collision_rectangle_list(plyr.x-render_dist,plyr.y-render_dist,plyr.x+render_dist,plyr.y+render_dist,o_object,0,0,objs,1);

var adiff = 0;
var dist = 0;
var temp = 0;

if(draw_floor)
{
	for(var a = 1; a < 120; a++)
	{
		temp = a*2.4;
		//draw_sprite_part_ext(s_level_floor,0,0,fn_indexer(a-floorceiling_offsetv,120),480,1,-temp-480*temp+floorceiling_offseth,255+a,1+a*0.01,1,c_white,1);
		draw_sprite_part_ext(sprite_floor,0,0,fn_indexer(a-floorceiling_offsetv,120),480,1,-temp,255+a,1+a*0.01,1,c_white,1)//a/135);
		//draw_sprite_part_ext(s_level_floor,0,0,fn_indexer(a-floorceiling_offsetv,120),480,1,-temp+480*temp+floorceiling_offseth,255+a,1+a*0.01,1,c_white,1);
	}
}

#region draw world objs
with(o_object_repeat)
{
	temp = 0;
	//check if in view
	if(o_player.x - x < -other.render_dist)
	{
		temp = 1;
		x -= other.render_dist*2;
	}
	else if(o_player.x - x > other.render_dist)
	{
		temp = 1;
		x += other.render_dist*2;
	}
		
	if(o_player.y - y < -other.render_dist)
	{
		temp = 1;
		y -= other.render_dist*2;
	}
	else if(o_player.y - y > other.render_dist)
	{
		temp = 1;			
		y += other.render_dist*2;
	}
		
	if(!temp)
	{
		adiff = angle_difference(point_direction(o_player.x,o_player.y,x,y), other.angle);
		//var dist = point_distance(x,y,o_player.x,o_player.y)+abs(z);
		//var dist = sqrt(sqr(x-o_player.x)+sqr(y-o_player.y)+sqr(z-240));
		//if(dist < other.render_dist)
		//{
		if(abs(adiff) < other.fov/2)
		{
			dist_to_plyr = sqrt(sqr(x-o_player.x)+sqr(y-o_player.y));
			in_view = 1;

			dx = 480-(adiff+other.fov/2)*other.diver;
			dy = 135-(z-other.plyr_z)*(200/dist_to_plyr);
			
			var vscale = 100/dist_to_plyr;
			drawscript(dx,dy,dist_to_plyr,vscale);
		}
		else
		{
			in_view = 0;
		}
	}
}
#endregion

#region draw special objs
for(var a = objnum-1; a >= 0; a--)
{
	with(objs[|a])
	{
		adiff = angle_difference(point_direction(o_player.x,o_player.y,x,y), other.angle);
		if(abs(adiff) < other.fov/2)
		{
			dist_to_plyr = sqrt(sqr(x-o_player.x)+sqr(y-o_player.y));
			in_view = 1;

			if(abs(adiff) < 10 && is_shootable)
			{
				in_shoot_range = 1;
			}
			else
			{
				in_shoot_range = 0;
			}
			
			dx = 480-(adiff+other.fov/2)*other.diver;
			dy = 135-(z-other.plyr_z)*(200/dist_to_plyr);
			
			var vscale = 100/dist_to_plyr;
			drawscript(dx,dy,dist_to_plyr,vscale);
			if(selected)
			{
				draw_sprite_ext(s_crosshair,0,dx,dy,vscale+0.5,vscale+0.5,0,c_white,1);
			}
		}
		else
		{
			in_view = 0;
		}
	}
}
#endregion
/*
#region draw player
draw_sprite_ext(s_player_shipHD,1-plyr.lrmove+3*(floor((life-1)/25)),240+o_player.ang_spd*3,y+plyr_y+o_player.speed*3,1,1,0,c_white,1);
if(plyr.fbmove != 0)
{
	if(plyr.lrmove == 0)
		draw_sprite_ext(s_player_thrustHD,floor(timer/60),240+o_player.ang_spd*3,y+plyr_y+o_player.speed*3,1,1,0,c_white,1);
	else
		draw_sprite_ext(s_player_thrust_sideHD,floor(timer/60),240+o_player.ang_spd*3,y+plyr_y+o_player.speed*3,plyr.lrmove,1,0,c_white,1);
}
else
{
	if(plyr.lrmove != 0)
		draw_sprite_ext(s_player_thrust_turnHD,floor(timer/60),240+o_player.ang_spd*3,y+plyr_y+o_player.speed*3,plyr.lrmove,1,0,c_white,1);
}
#endregion
*/

camera_set_view_angle(view_camera[0],-plyr.ang_spd)

draw_sprite(weapon_sprites[plyr.weapon_mode],6*(plyr.weapon_cooldown/plyr.weapon_cooldown_start),240,270);
//draw_sprite(s_player_hud,0,0,0);

draw_sprite_ext(s_minimap,0,8,335-32-105,1,1,0,c_white,0.5);
for(var a = 0; a < listof_enemies_size; a++)
{
	with(listof_enemies[|a])
	{
		draw_sprite_ext(s_minimap_arrow,1,8+x/48,303-105+y/48,1,1,0,c_white,1);
	}
}
draw_sprite_ext(s_minimap_arrow,2,8+ending_obj.x/48,335-32-105+ending_obj.y/48,1,1,0,c_white,1);
draw_sprite_ext(s_minimap_arrow,0,8+o_player.x/48,335-32-105+o_player.y/48,1,1,o_player.direction-45,c_white,1);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(5,5,o_player.weapon_ammo);
draw_text(5,20,fps);

draw_set_halign(fa_right);
draw_text(475,5,life);

ds_list_destroy(objs);