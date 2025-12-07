if (ani_count < ani_wait) {ani_count++;}
else
{
	ani_count = 0;
	if (flash)
	{
		flash = false;
		flash_count++;	
		if (flash_count > 3)
		{
			instance_destroy();
		}
	}
	else
	{
		flash = true;
	}
}