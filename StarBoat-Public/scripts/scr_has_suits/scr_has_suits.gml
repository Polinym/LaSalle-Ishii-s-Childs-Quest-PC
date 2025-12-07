function scr_has_suits()
{
	with (obj_ram)
	{
		for (var i = 0; i < 8; i++)
		{
			if (suits[i][2]) {return true;}	
		}
		return false;
	}
}