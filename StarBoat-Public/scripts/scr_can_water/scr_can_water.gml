function scr_can_water()
{
	with (obj_ram)
	{
		for (var i = 1; i < 4; i++)
		{
			if (not party[i].water) {return true;}	
		}
		return false;
	}
}