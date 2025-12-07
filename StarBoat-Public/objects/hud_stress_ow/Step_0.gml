if (update)
{
	txt = "";
	var tmp_char;
	var tmp_name;
	for (var i = 1; i < 4; i++)
	{
		tmp_char = obj_ram.party[i];
		tmp_name = tmp_char.name;
		if (jpn)
		{
			while (string_length(tmp_name) < 6)
			{
				tmp_name += " ";
			}
		}
		txt += tmp_name + scr_str_formatl(tmp_char.stress) + "%";
		if (tmp_char.water)
		{
			if (jpn)
			{
				txt += "P";
			}
			else
			{
				txt += scr_icon("water");
			}
		}
		txt += "##";
	}
	txt_money = scr_format_money();
	if (jpn) {txt_money = "   " + txt_money;}
	update = false;
}	

if (open_update)
{
	if (open_cmds)
	{
	scr_open(hud_cmds_ow);
	done = true;
	}
}
if (close_update)
{
	obj_player.state = "idle";
	obj_ram.paused = false;	
	instance_destroy();
}