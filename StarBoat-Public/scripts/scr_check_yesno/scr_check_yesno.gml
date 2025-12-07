function scr_check_yesno()
{
	var result = (yesnoing) and (obj_ram.yesno_done);
	if (result)
	{
		yesnoing = false;
		obj_ram.yesno_done = false;
	}
	return result;
}