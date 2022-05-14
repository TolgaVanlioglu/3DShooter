menu_option = 0;
menu_page = "main";

menu_buttons[0] = "New Game";
menu_buttons[1] = "Load Game";
menu_buttons[2] = "Options";
menu_buttons[3] = "Quit";

if(!variable_global_exists("fade_sprite"))
	global.fade_sprite = s_skybox_edge;

fn_create_transition();