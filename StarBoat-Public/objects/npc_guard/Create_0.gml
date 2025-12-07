event_inherited();
if (obj_player.x > x)
{
	scr_npc_set(48, DOWN);
}
else
{
	x += -16;
	y += -16;
	scr_npc_set(49, LEFT);
}
if (jpn) {sprite_index = spr_npc_guard_jpn;}