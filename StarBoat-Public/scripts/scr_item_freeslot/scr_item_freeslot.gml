function scr_item_freeslot(arg_char)
{
	var items = obj_ram.items;
	for (var i = 0; i < 6; i++)
	{
		if (items[i] == 0) {return i;}
	}
	return -1;
}