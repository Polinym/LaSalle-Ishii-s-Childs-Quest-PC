if (obj_ram.keyboard_mode != 0) {scr_bgm_stop();}
scr_open(hud_dsp_keyboard);
scr_open(hud_dsp_entry);
var tmp_x = 124;
var tmp_y; var tmp_txt;
switch (obj_ram.keyboard_mode)
{
	case 0:
		scr_bgm(bgm_WhatsYourName);
		tmp_txt = "Enter a name!";
		tmp_y = 16;
		if (not obj_ram.jpn) 
		{
			with (hud_dsp_keyboard)
			{
				entry = "John";
				pos = 5;
				hud_dsp_entry.pos = pos;
				hud_dsp_entry.txt = entry;
			}
		}
		break;
	case 1:
		tmp_txt = "Who is the \"Fourth Lord\"#of English Talent?";
		tmp_y = 184;
		break;
}
var tmp_label = icd(tmp_x, tmp_y, -10, obj_line);
tmp_label.txt = tmp_txt;
tmp_label.center = true;