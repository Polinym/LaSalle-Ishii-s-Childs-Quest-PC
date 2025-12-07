if (active)
{
	if (
	kcp(vk_down)
	or kcp(vk_up)
	or kcp(vk_right)
	or kcp(vk_left)
	or kcp(vk_shift)
	or kcp(vk_space)
	or kcp(ord("Z"))
	or kcp(ord("X"))
	)
	{
		scr_warp(obj_ram.last_room);
		active = false;
	}
}