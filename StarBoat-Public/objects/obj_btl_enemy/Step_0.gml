if (flash_count > 0)
{
	if (ani_count < ani_wait) {ani_count++;}
	else
	{
		flash = not flash;
		if (not flash)
		{
			flash_count += -1;
		}
		ani_count = 0;
	}
}