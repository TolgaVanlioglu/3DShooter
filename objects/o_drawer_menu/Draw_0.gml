draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for(var a = 0; a < array_length(menu_buttons); a++)
{
	if(a == menu_option)
		draw_sprite(s_powersurge_ball, 0, 180, 105+a*15);
	draw_text(240, 105+a*15, menu_buttons[a]);
}