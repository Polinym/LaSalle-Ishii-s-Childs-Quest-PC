function scr_get_song()
{
	with (obj_ram)
	{
		if (scr_flag(flag_GotSong))
		{
			return 7;
		}
		else
		{
			var tmp_lvl = john.lvl;
			for (var i = 0; i < 7; i++)
			{
				if (tmp_lvl < songs[i][1]) {return i-1;}
			}
			return 6;
		}
	}
}