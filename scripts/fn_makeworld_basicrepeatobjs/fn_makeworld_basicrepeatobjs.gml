function fn_makeworld_basicrepeatobjs(sprite, frames, rarity, vfn_col, vfn_x, vfn_y, vfn_z, vfn_xspd, vfn_yspd, vfn_zspd)
{
	var xxgap = 48;
	var yygap = 48;
	for(var yy = 0; yy < 33; yy++)
	{
		for(var xx = 0; xx < 33; xx++)
		{
			if(irandom(100)<rarity)
			{
				with(instance_create_layer(xx*xxgap,yy*yygap ,"layer_space",o_object_repeat))
				{
					sprite_index = sprite;
					image_index = irandom(frames);
					if(vfn_col != 0)
						image_blend = vfn_col();
					if(vfn_z != 0)
						z = vfn_z();
					if(vfn_x != 0)
						x += vfn_x();
					if(vfn_y != 0)
						y += vfn_y();
					
					if(is_numeric(vfn_xspd))
						hspeed = vfn_xspd;
					else
						hspeed = vfn_xspd();
					
					if(is_numeric(vfn_yspd))
						vspeed = vfn_yspd;
					else
						vspeed = vfn_yspd();

					if(is_numeric(vfn_zspd))
						zspeed = vfn_zspd;
					else
						zspeed = vfn_zspd();	
					//if(vfn_xspd != 0)
					//	zspeed = vfn_xspd();
					//if(vfn_yspd != 0)
					//	vspeed = vfn_yspd();
					//if(vfn_zspd != 0)
					//	hspeed = vfn_zspd();
				}
			}
		}
	}
}