function scr_destress()
{
	with (obj_ram)
	{
		var tmp_char;
		for (var i = 1; i < 4; i++)
		{
			with (party[i])
			{
				stress = 0;
				water = false;
			}
			
		}
	}
}