var tmp_type = obj_ram.menu_shop_type;
if (tmp_type == SHOP_DON)
{
	scr_text_a(string(obj_ram.prices[price_Paint]));
	var tmp_layer = layer_background_get_id("Background");
	layer_background_blend(tmp_layer, #0071EF);
	scr_bgm(bgm_SomeonesHouse);
	scr_flag_set(flag_MetDon);
}
else if (tmp_type == SHOP_AIRPORT)
{
	scr_bgm(bgm_SomeonesHouse);	
}
scr_open(hud_dsp_stress);
scr_open(hud_dsp_money);
obj_shop_img.image_index = tmp_type;
scr_open(hud_dsp_shop);
if (obj_ram.save_room != -1)
{
	obj_ram.last_room = obj_ram.save_room;	
	scr_msg_sys_talk(122);
	with (hud_dsp_shop)
	{
		cmd = "after_sleep";
		yesnoing = true;
		reading = false;
		held = true;
	}
	
}
else
{
	var tmp_msg = obj_ram.shop_greeting[tmp_type];
	if (obj_ram.jpn) {tmp_msg = "[" + tmp_msg + "]";}
	scr_msg(tmp_msg);
}
scr_msg_force();
obj_text.display = true;