font = obj_ram.font;
if (obj_ram.ending_text)
{
	//font = obj_ram.font_end;	
}
state = 0x0;
txt = "";
work_txt = "";
pos = 0;
pos_end = 0;
pause_count = 0; pause_wait = 1;
auto_count = 0; auto_wait = 29;
lines = 0;
line_pos = 0;
display = false;
auto = false;
blip_count = 0; blip_wait = 2;
delay_count = 0;
delay_wait = 0;
yesno_pos = 0;
john = obj_ram.john;
quading = false;
quad_x = 0; quad_y = 0;
interupt = false;
jpn = obj_ram.jpn;
line_limit = 3;
indent = false;
if (jpn) {line_limit = 6;}
auto_end = false;