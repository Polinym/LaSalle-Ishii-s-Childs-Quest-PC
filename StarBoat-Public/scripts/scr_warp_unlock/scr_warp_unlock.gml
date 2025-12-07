function scr_warp_unlock()
{
	var dest = obj_ram.dest;
	var goto_pt = obj_ram.goto_pt;
	switch (dest)
	{
		case rm_town_green: 
			switch (goto_pt)
			{
				case 3: scr_city_unlock(city_Niami); break;
				case 4: scr_city_unlock(city_Tallas); break;
				case 8: scr_city_unlock(city_Poltland); break;
				case 7: scr_town_unlock(town_Moonbark); break;
			}
			break;
		case rm_town_yellow: 
			switch (goto_pt)
			{
				case 1: scr_town_unlock(town_Arbony); break;
				case 2: scr_city_unlock(city_Botson); break;
				case 3: scr_town_unlock(town_Boizy); break;
				case 4: scr_city_unlock(city_Denber); break;
			}
			break;
		case rm_town_other: 
			switch (goto_pt)
			{
				case 1: scr_town_unlock(town_Freattle); break;
				case 2: scr_city_unlock(city_Metroit); break;
				case 4: scr_town_unlock(town_Kings); break;
			}
			break;
		case rm_town_gray: 
			switch (goto_pt)
			{
				case 1: scr_city_unlock(city_Fenix); break;
				case 2: scr_town_unlock(town_Yutica); break;
			}
			break;
	}
}