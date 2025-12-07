event_inherited();
var tmp_x = x + 16;
var tmp_y = y + 16;
var tmp_y2;
if (display)
{
	for (var i = 0; i < 4; i++)
	{
		var tmp_i = (i*2);
		tmp_y2 = tmp_y+(i*16);
		draw_txt(tmp_x, tmp_y2, names[tmp_i]);
		draw_txt(tmp_x+80, tmp_y2, names[tmp_i+1]);
	}
	tmp_x = x+8;
	draw_sprite(spr_menu_cursor, 0, tmp_x+(x_pos*80), tmp_y+(y_pos*16));
}