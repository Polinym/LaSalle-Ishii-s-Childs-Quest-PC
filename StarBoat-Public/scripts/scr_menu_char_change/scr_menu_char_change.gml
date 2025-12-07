function scr_menu_char_change()
{
	var tmp_char = -1;
	for (var i = 0; i < 4; i++)
	{
		index++;
		if (index > 3) {index = 0;}
		tmp_char = obj_ram.party[index];
		if (tmp_char != -1) {break;}
	}
	char = tmp_char;
}