if (obj_ram.jpn)
{
	var tmp_layer = layer_background_get_id("Background");
	layer_background_sprite(tmp_layer, bck_title_jpn);
	window_set_caption("LaSalle Ishii's Childs Quest");
	scr_bgm_stop();
}
else
{
	if (obj_ram.thracia)
	{
		window_set_caption("LaSalle Ishii's KAIZO Quest");
	}
	else
	if (obj_ram.bonus)
	{
		window_set_caption("Stardom Warriors+");
	}
	else
	{
		window_set_caption("Stardom Warriors");
	}
	scr_bgm(bgm_WhatsYourName);
}