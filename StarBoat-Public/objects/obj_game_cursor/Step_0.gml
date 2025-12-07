if (delay) {delay = false;}
else
if (active)
{
	if (kcp(vk_down) and (pos < last_pos)) {pos++; update = true;}
	else if (kcp(vk_up) and (pos > 0)) {pos += -1; update = true;}
	else if (kcp(vk_shift))
	{
		game_restart();
		//scr_warp(rm_title);
		//active = false;
	}
	else if (kcp(vk_space))
	{
		switch (pos)
		{
			case 0:
				with (obj_ram)
				{
					if (jpn)
					{
						jpn = false;	
					}
					else
					{
						jpn = true;
						bonus = false;
					}
				}
				break;
			case 1:
				with (obj_ram) 
				{
					if (not jpn)
					{
						bonus = not bonus;	
					}
				}
				break;
			//case 2: with (obj_ram) {new_ost = not new_ost;} break;
			case 2:
				scr_save_config();
				game_restart();
				active = false;
				break;
		}
		update = true;
		if (pos < 3)
		{
			obj_game_text.update = true;
			obj_game_logo.update = true;
		}
	}
	if (update)
	{
		y = start_y+(pos*16);
		var desc = "";
		switch (pos)
		{
			case 0:	
				if (obj_ram.jpn)
				{
					//desc = "The original Japanese#Famicom game.#For hardcore LICQ fans!";
					desc = "The original Japanese#Famicom game.#For hardcore LICQ fans!#(90% complete)";
				}
				else
				{
					desc = "The U.S. fan localization.#Reccomended for#first time players.";
				}
				break;
			case 1:
				if (obj_ram.bonus)
				{
					desc = "New features and quality#of life improvements.";
				}
				else
				{
					if (obj_ram.jpn)
					{
						desc = "Bonus contest is not#available in the#Childs Quest version.";
					}
					else
					{
						desc = "No new content.#Game emulates the#original translation patch.";
					}
				}
				break;
			case 3:
				if (obj_ram.new_ost)
				{
					desc = "A new soundtrack with music#inspired by the original.#Contains new tracks too!";
				}
				else
				{
					desc = "The original chiptune#soundtrack, with all the#bleeps and bloops.";
				}
				break;
		}
		obj_game_desc.txt = desc;
		update = false;
	}
}