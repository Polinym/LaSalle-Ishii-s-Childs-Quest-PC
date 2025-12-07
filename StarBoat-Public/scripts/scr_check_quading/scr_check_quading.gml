function scr_check_quading()
{
	var result = (quading) and (obj_ram.quad_done);
	if (result)
	{
		quading = false;
		obj_ram.quad_done = false;
	}
	return result;
}