// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fn_drawscript_powersurge(dx,dy,dist,vscale)
{
	draw_set_color(c_lime);
	
	if(!cracked)
	{
		if(dist < 2000)
			draw_line_width(dx-1,dy,dx-1,-10,vscale*10);
		else
			draw_line(dx-1,dy,dx-1,-10);
	}
	
	draw_set_color(c_white);
	draw_sprite_ext(sprite_index,image_index,dx,dy,vscale,vscale,0,image_blend,image_alpha);	
}