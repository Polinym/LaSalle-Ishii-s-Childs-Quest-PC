function scr_hasitem(arg_item)
{
	var items = obj_ram.items;
	for (var i = 0; i < 6; i++)
	{
		if (items[i] == arg_item) {return true;}	
	}
	return false;
}