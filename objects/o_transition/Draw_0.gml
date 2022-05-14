var offs = 0;
for(var a = 0; a < slices; a++)
{
	if(heights[a]+move < 0)
		offs = 0;
	else
		offs = heights[a]+move;
	
	draw_set_color(c_black);
	draw_rectangle(a*slice_size/2,offs,a*slice_size/2+1,offs+270,0)
	draw_set_color(c_white);
	draw_sprite_part_ext(sprite,0,a*slice_size,0,slice_size,540,a*slice_size/2,offs,0.5,0.5,c_white,1);
}
move += move_spd;