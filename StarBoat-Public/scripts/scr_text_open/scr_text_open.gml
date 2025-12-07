function scr_text_open()
{
	var base_depth = -400;
	var tmp_box = icd(view_xview+80, view_yview+136, base_depth, obj_text_box);
	var tmp_txt = icd(tmp_box.x+8, tmp_box.y+16, base_depth-1, obj_text);
	var tmp_shf = icd(tmp_box.x+216, tmp_box.y+48, base_depth-2, obj_text_shifter);
	var tmp_port = icd(view_xview+184, view_yview+72, base_depth-3, obj_text_port);
}