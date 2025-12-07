function scr_btl_plr_move2()
{
	var tmp_msg = 0;
	var dmg = 0;
	rosetta = ((bonus) and (scr_item_has(item_RosettaStone)));
	switch (john.btl_move)
	{
		case 0:
			if (scottish)
			{
				tmp_msg = 62;
			}
			else if (foreign and not rosetta)
			{
				tmp_msg = 123;
			}
			else
			{
				var dmg = scr_dmg_plr(scr_stat_get("charm"), enemy.def);
				dmg = scr_dmg_master2(dmg);
				if (crit)
				{
					dmg = dmg * 3;
					crit = false;
				}
				//tmp_msg = scr_btl_dmg(dmg);
				tmp_msg = scr_btl_dmg(dmg);
			}
			break;
		case 3:
			if (scottish)
			{
				tmp_msg = 62;
			}
			else
			{
				switch (john.btl_arg)
				{
					case mng_Nyce:
						//dmg = scr_rng(50, 70);
						dmg = scr_dmg_mng(0x70, enemy.def);
						dmg = scr_dmg_master2(dmg);
						tmp_msg = scr_btl_dmg(dmg);
						break;
					case mng_Nycamore:
						//dmg = scr_rng(128, 155);
						dmg = scr_dmg_mng(0xf0, enemy.def);
						dmg = scr_dmg_master2(dmg);
						tmp_msg = scr_btl_dmg(dmg);
						break;
				}
			}
			break;
		case 4: //Candy
			if (scottish)
			{
				tmp_msg = 62;
			}
			else
			{
				//dmg = scr_rng(50, 70);
				var tmp_atk = scr_stat_get("charm");
				if (tmp_atk >= 0x78)
				{
					tmp_atk = 0xf0;	
				}
				tmp_msg = scr_btl_dmg(dmg);
			}
			break;
		case 5: //Nicesword
			if (scottish)
			{
				tmp_msg = 62;
			}
			else
			{
				//dmg = scr_rng(80, 110);
				dmg = scr_dmg_mng(0xb0, enemy.def);
				dmg = scr_dmg_master2(dmg);
				tmp_msg = scr_btl_dmg(dmg);
			}
			break;
		case 6: //Butter Sword
			if (scottish)
			{
				tmp_msg = 62;
			}
			else
			{
				//dmg = scr_rng(20, 30);
				//var tmp_atk = scr_stat_get("charm");
				//if (tmp_atk >= 0x78)
				//{
				//	tmp_atk = 0xf0;	
				//}
				dmg = scr_dmg_mng(0x30, enemy.def);
				dmg = scr_dmg_master2(dmg);
				tmp_msg = scr_btl_dmg(dmg);
			}
			break;
	}
	scr_msg_sys(tmp_msg);
	running = false;
	reading = true;
}