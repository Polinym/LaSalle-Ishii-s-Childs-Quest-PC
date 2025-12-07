function scr_msg_force()
{
	with (obj_text_box)
	{
		w = 18; h = 4;
		if (obj_ram.jpn) {w = 20;}
		txt = scr_draw_menu(w, h);
		dsp_h = h;
		obj_text.state = 1;
	}
}