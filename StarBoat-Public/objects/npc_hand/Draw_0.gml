draw_sprite(spr_npc_shadow, image_index, x, y);	
var tmp_alpha = obj_ram.secret_alpha;
if (tmp_alpha > 0)
{
	draw_set_alpha(tmp_alpha+0.5);
	draw_sprite(spr_npc_hand, image_index, x, y);
}