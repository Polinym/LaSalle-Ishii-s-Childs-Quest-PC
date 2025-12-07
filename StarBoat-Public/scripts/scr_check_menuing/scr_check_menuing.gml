function scr_check_menuing()
{
	var result = (menuing) and (obj_ram.menu_done);
	if (result)
	{
		menuing = false;
		obj_ram.menu_done = false;
	}
	return result;
}