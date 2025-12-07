function scr_draw_flash()
{
	var tmp_x = view_xview; var tmp_y = view_yview;
	draw_set_color(c_white);
	draw_set_alpha(0.90);
	gpu_set_blendmode(bm_add);
	draw_rect(tmp_x, tmp_y, tmp_x+256, tmp_y+224);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}