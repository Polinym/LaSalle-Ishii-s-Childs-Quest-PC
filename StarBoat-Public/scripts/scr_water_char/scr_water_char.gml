function scr_water_char()
{
	with (obj_ram)
	{
		var i;
		var tmp_char;
		swap_party_count = 0;
		for (i = 1; i < 4; i++)
		{
			tmp_char = party[i];
			if (not tmp_char.water)
			{
				swap_party[swap_party_count] = tmp_char;
				swap_party_count++;	
			}
		}
		if (swap_party_count < 1) {return -1;}
		else
		{
			return swap_party[scr_rng(0, swap_party_count-1)];
		}
	}
}