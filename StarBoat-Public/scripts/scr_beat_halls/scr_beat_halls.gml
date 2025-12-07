function scr_beat_halls()
{
	with (obj_ram)
	{
		for (var i = 0; i < 6; i++)
		{
			if (not halls[i][1]) {return false;}
		}
		return true;
	}
}