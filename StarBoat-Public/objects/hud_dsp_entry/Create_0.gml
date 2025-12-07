event_inherited();
switch (obj_ram.keyboard_mode)
{
	case 0: 
		if (obj_ram.bonus)
		{
			scr_dsp_ini(11, 18, 8, 0.5); 
			limit = 8;  
		}
		else
		{
			scr_dsp_ini(13, 18, 4, 0.5); 
			limit = 4;
		}
		break;
	case 1: scr_dsp_ini(12, 18, 6, 0.5); limit = 6; break;
}
txt = "";
txt_y = 8;
var blank = "";
pos = 1;