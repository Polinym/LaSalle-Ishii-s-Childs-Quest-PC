function scr_room_bck(arg_spr)
{
	var tmp_layer = layer_background_get_id("Background");
	layer_background_sprite(tmp_layer, arg_spr);
	layer_background_blend(tmp_layer, c_white);
}