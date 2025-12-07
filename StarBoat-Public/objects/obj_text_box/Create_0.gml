font = obj_ram.font_wnd;
font_yellow = obj_ram.font_wnd_yellow;
font_red = obj_ram.font_wnd_red;
if (obj_ram.ending_text)
{
	//font = obj_ram.font_wnd_end;	
}
w = 18;
if (obj_ram.jpn) {w = 20;}
dsp_h = 0; h = 4;
txt_wnd = scr_draw_menu(w, 0);
txt = "";
state = 0;