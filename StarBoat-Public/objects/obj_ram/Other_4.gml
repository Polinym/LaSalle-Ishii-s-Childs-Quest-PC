secret_lens = false;
secret_alpha = 0;
if (jpn)
{
	var tmp_layer;
	for (var i = 0; i < 4; i++)
	{
		tmp_layer = layer_tilemap_get_id(tilemaps[i]);
		if (tmp_layer != -1)
		{
			switch (tilemap_get_tileset(tmp_layer))
			{
				case tls_city: tilemap_tileset(tmp_layer, tls_city_jpn); break;
				case tls_ow: tilemap_tileset(tmp_layer, tls_ow_jpn); break;
				case tls_town: tilemap_tileset(tmp_layer, tls_town_jpn); break;
			}
		}
	}
}