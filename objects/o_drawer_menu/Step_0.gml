if(keyboard_check_pressed(vk_down))
{
	menu_option = (menu_option+1)%array_length(menu_buttons);
}
else if(keyboard_check_pressed(vk_up))
{
	menu_option--;
	
	if(menu_option == -1)
		menu_option = array_length(menu_buttons)-1;
}

if(keyboard_check_pressed(vk_enter))
{
	switch(menu_page)
	{
		case "main":
		{
			switch(menu_option)
			{
				case 0:
				{
					menu_page = "episodes";
					menu_buttons[0] = "Episode 1";
					menu_buttons[1] = "Episode 2";
					menu_buttons[2] = "Episode 3";
					menu_buttons[3] = "Back";
					break;
				}
				case 1:
				{
					menu_page = "load";
					menu_buttons[0] = "Save 1";
					menu_buttons[1] = "Save 2";
					menu_buttons[2] = "Save 3";
					menu_buttons[3] = "Back";
					break;
				}
				case 2:
				{
					menu_page = "options";
					menu_buttons[0] = "Display";
					menu_buttons[1] = "Audio";
					menu_buttons[2] = "Gameplay";
					menu_buttons[3] = "Back";
					break;
				}
				case 3:
				{
					game_end();
					break;
				}
			}
			break;
		}
		case "episodes":
		{
			switch(menu_option)
			{
				//start ep 1
				case 0:
				{
					global.cur_level = -1;
					global.cur_ep = 0;
					fn_setup_transition(r_gameroom);
					break;
				}
				//start ep 2
				case 1:
				{
					fn_setup_transition(r_gameroom);
					break;
				}
				//start ep 3
				case 2:
				{
					fn_setup_transition(r_gameroom);
					break;
				}
				case 3:
				{
					menu_page = "main";
					menu_buttons[0] = "New Game";
					menu_buttons[1] = "Load Game";
					menu_buttons[2] = "Options";
					menu_buttons[3] = "Quit";
					break;
				}
			}
			break;
		}
		case "load":
		{
			switch(menu_option)
			{
				case 0:
				{
					//room_goto(r_gameroom);
					break;
				}
				case 1:
				{
					//room_goto(r_gameroom);
					break;
				}
				case 2:
				{
					//room_goto(r_gameroom);
					break;
				}
				case 3:
				{
					menu_page = "main";
					menu_buttons[0] = "New Game";
					menu_buttons[1] = "Load Game";
					menu_buttons[2] = "Options";
					menu_buttons[3] = "Quit";
					break;
				}
			}
			break;
		}
		case "options":
		{
			switch(menu_option)
			{
				case 0:
				{
					//room_goto(r_gameroom);
					break;
				}
				case 1:
				{
					//room_goto(r_gameroom);
					break;
				}
				case 2:
				{
					//room_goto(r_gameroom);
					break;
				}
				case 3:
				{
					menu_page = "main";
					menu_buttons[0] = "New Game";
					menu_buttons[1] = "Load Game";
					menu_buttons[2] = "Options";
					menu_buttons[3] = "Quit";
					break;
				}
			}
			break;
		}
	}
}