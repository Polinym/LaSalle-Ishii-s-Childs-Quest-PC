event_inherited();
if (display)
{
	var tmp_pos = pos_pos[pos];
	draw_sprite(spr_menu_cursor, 0, x+tmp_pos[0]+8, y+tmp_pos[1]+16);
	draw_txt(x+8, y+48, txt_hmp);	
}