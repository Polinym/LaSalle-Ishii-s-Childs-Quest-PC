function scr_item_delete(arg_item)
{
	with (obj_ram)
	{
		var tmp_items = items;
		var tmp_item;
		for (var i = 0; i < 6; i++)
		{
			tmp_item = tmp_items[i];
			if (tmp_item == 0) {return -1;}
			else if (tmp_item == arg_item)
			{
				scr_item_remove(i);
				return i;
			}
		}
		return false;
	}
}