function fn_setup_transition(_room)
{
	global.fade_sprite = sprite_create_from_surface(application_surface,0,0,960,540,0,0,240,135);
	room_goto(_room);
}