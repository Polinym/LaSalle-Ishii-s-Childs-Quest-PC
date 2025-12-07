function scr_txt_stress()
{
	with (obj_ram)
	{
		var tmp_txt = "";
		var tmp_name;
		var tmp_char;
		for (var i = 1; i < 4; i++)
		{
			tmp_char = party[i];
			tmp_name = tmp_char.name;
			if (string_length(tmp_name) > 3) 
			{
				tmp_name = string_copy(tmp_name, 1, 3);	
			}
			tmp_txt += tmp_name + scr_str_formatl(tmp_char.stress) + "##";
		}
		return tmp_txt;
	}
}