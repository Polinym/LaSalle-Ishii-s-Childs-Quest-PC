switch (state)
{
	case 0:
		if (dsp_h < h) 
		{
			dsp_h += 1;
		}
		if (dsp_h >= h)
		{
			dsp_h = h;
			display = true;
			open_update = true;
			state++;
		}
		txt_wnd = scr_draw_menu(w, dsp_h);
		break;
	case 2:
		display = false;
		if (dsp_h > 0)
		{
			dsp_h += -1;
			if (dsp_h < 1)
			{
				dsp_h = 0;
				close_update = true;
				state++;
			}
		}
		txt_wnd = scr_draw_menu(w, dsp_h);
		break;
}