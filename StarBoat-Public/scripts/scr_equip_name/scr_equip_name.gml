function scr_equip_name(arg_item)
{
	var line2 = false;
	var tmp_txt = "";
	var tmp_txt2 = "#  ";
	if (obj_ram.jpn) {tmp_txt2 = "# ";}
	var c;
	var name = obj_ram.equips[arg_item][1];
	var tmp_len = string_length(name);
	if (tmp_len > 8) and (not string_contains(name, " "))
	{
		if (obj_ram.jpn) {return string_insert("-# ", name, 8);}
		else {return string_insert("-#  ", name, 8);}
	}
	for (var i = 1; i < tmp_len+1; i++)
	{
		c = string_char_at(name, i);
		if (c == " ") {line2 = true;}
		else
		{
			if (line2) {tmp_txt2 += c;}
			else {tmp_txt += c;}
		}
	}
	return tmp_txt + tmp_txt2;
}