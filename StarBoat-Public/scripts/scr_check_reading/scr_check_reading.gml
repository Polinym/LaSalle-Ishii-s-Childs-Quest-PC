function scr_check_reading()
{
	var result = (reading) and (obj_ram.text_done);
	if (result)
	{
		reading = false;
		obj_ram.text_done = false;
	}
	return result;
}