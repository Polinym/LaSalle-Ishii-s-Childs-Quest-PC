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
			obj_text.state = 1;
			with (hud_stress_ow)
			{
				visible = false;	
			}
			state++;
		}
		txt = scr_draw_menu(w, dsp_h);
		break;
	case 2:
		if (dsp_h > 0)
		{
			dsp_h += -1;
			if (dsp_h < 1)
			{
				state++;
				die(par_text);
			}
		}
		txt = scr_draw_menu(w, dsp_h);
		break;
}