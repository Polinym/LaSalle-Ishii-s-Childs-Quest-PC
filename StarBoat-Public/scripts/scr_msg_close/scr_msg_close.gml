function scr_msg_close()
{
	if (ie(par_text))
	{
		with (obj_text)
		{
			txt = "";
			state = 0;
		}
		obj_text_box.state = 2;
		state = 2;
	}
}