function scr_item_name(arg_item)
{
	var line2 = false;
	var tmp_txt = "";
	var tmp_txt2 = "#  ";
	var c;
	var name = obj_ram.item_names[arg_item];
	for (var i = 1; i < string_length(name)+1; i++)
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