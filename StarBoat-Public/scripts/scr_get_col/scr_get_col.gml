function scr_get_col()
{
	use_newcol = layer_exists("l_col");
	if (use_newcol)
	{
		col_layer = layer_tilemap_get_id("l_col");
		layer_set_visible(col_layer, false);
	}
	else {col_layer = -1;}
}