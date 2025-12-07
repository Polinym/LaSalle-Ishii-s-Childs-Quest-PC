function scr_msg(arg_msg)
{
	//arg_msg = scr_lb_format(arg_msg, 20);
	arg_msg = string_replace_all(arg_msg, "{John}", scr_john_name());
	var tmp_girl = obj_ram.explode_char;
	if (tmp_girl != -1)
	{
		arg_msg = string_replace_all(arg_msg, "{Girl}", tmp_girl.name);
	}
	with (obj_ram)
	{
		text_done = false;
		blip_sound = -1;
	}
	if not (ie(par_text))
	{
		scr_text_open();	
	}
	obj_text.work_txt = arg_msg;
	with (obj_text)
	{
		if (state == 1) and (room != rm_btl) {pos = 0;}
		else {pos = 1;}
		txt = "";
		state = 1;
		lines = 0;
		line_pos = 0;
		pause_count = 0;
		display = false;
		auto = false;
		blip_count = blip_wait;
		obj_text_port.sprite_index = -1;
		pos_end = string_length(work_txt) + 1;
	}
	
}