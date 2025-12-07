function scr_acts_reset()
{
	with (obj_ram)
	{
		var tmp_songs = songs;
		var tmp_skits = skits;
		var tmp_list;
		for (var i = 0; i < 8; i++)
		{
			tmp_list = tmp_skits[i];
			tmp_list[3] = 0;
			tmp_list = tmp_songs[i];
			tmp_list[4] = 0;
		}
	}
}