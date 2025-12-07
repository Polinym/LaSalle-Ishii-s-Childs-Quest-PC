function scr_gate_load(arg_index)
{
	var tmp_warp = obj_ram.warps[arg_index];
	scr_gate_set(tmp_warp[0], tmp_warp[1], tmp_warp[2]);
}