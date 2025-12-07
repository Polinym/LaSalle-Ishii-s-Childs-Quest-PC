function scr_dogs_ini()
{
	with (obj_ram)
	{
		if (bonus)
		{
			var tmp_lst = ds_list_create();
			for (var i = 3; i < dog_count; i++)
			{
				ds_list_add(tmp_lst, i);
			}
			ds_list_shuffle(tmp_lst);
			for (var i = 0; i < 10; i++)
			{
				dogs_order[i] = ds_list_find_value(tmp_lst, i);
			}
			ds_list_destroy(tmp_lst);
		}
		else
		{
			dogs_order[0] = 3;
			dogs_order[1] = 7;
			dogs_order[2] = 22;
			dogs_order[3] = 18;
			dogs_order[4] = 6;
			dogs_order[5] = 31;
			dogs_order[6] = 26;
			dogs_order[7] = 13;
			dogs_order[8] = 49;
			dogs_order[9] = 27;
		}
	}
}