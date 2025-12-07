function scr_items_sort()
{
	with (obj_ram)
	{
		var i = 0; var tmp_item = -1;
		var i2 = 0; var tmp_item2 = -1;
		for (i = 0; i < 16; i++)
		{
			tmp_item = items[i];
			var sort = false;
			if (tmp_item == item_Nothing)
			{
				for (i2 = i; i2 < 8; i2++)
				{
					tmp_item2 = items[i2];
					if (tmp_item2 != item_Nothing)
					{sort = true; break;}
				}
			}
			if (sort)
			{
				items[i] = tmp_item2;
				items[i2] = item_Nothing;
			}
		}
		if (ie(obj_items))
		{
			with (obj_items) {update_list = true;}	
		}
	}
}