function scr_btl_enm_move2()
{
	var tmp_msg = "";
	switch (enemy_move)
	{
		case 1:
			dmg = ((obj_ram.random_number >> 2) & 0x1f)+0xa;
			if (scr_suit(suit_Ice)) {dmg = round(dmg/2);}
			else if (scr_suit(suit_Banana)) {dmg = round(dmg*2);}
			scr_text_a(string(dmg));
			scr_text_b(enemy_targ.name);
			tmp_msg = 68;
			var tmp_targ = enemy_targ;
			tmp_targ.stress += dmg;
			hud_dsp_stress.update = true;
			if (tmp_targ.stress > 99)
			{
				tmp_targ.stress = 100;
			}
			break;
		case 2:
			if (not scr_suit(suit_Light)) {john.hex = true;}
			var dmg = scr_dmg_enm(enemy.atk, john.bear);
			dmg = scr_dmg_curse(dmg);
			dmg = scr_dmg_steel(dmg);
			dmg = scr_dmg_master(dmg);
			
			if (dmg < 1) {dmg = 0;}
			else if (john.guarding) {dmg = round(dmg/2);}
			if (dmg < 1)
			{
				tmp_msg = 69;
			}
			else
			{
				john.hp += -dmg;
				if (john.hp < 1) {john.hp = 0;}
				scr_text_a(string(dmg));
				scr_check_weak();
			}
			break;
		default:
			//dmg = enemy.atk;
			//dmg = dmg * 2;
			//dmg += -john.bear;
			//if (dmg < 1) {dmg = 0;}
			//else if (john.guarding) {dmg = round(dmg/2);}
			if (foreign and (not rosetta))
			{
				tmp_msg = 124;
			}
			else
			{
				dmg = scr_dmg_enm(enemy.atk, john.bear);
				dmg = scr_dmg_curse(dmg);
				dmg = scr_dmg_steel(dmg);
				dmg = scr_dmg_master(dmg);
				if (dmg < 1)
				{
					tmp_msg = 69;
				}
				else
				{
					john.hp += -dmg;
					if (john.hp < 1) {john.hp = 0;}
					scr_text_a(string(dmg));
					tmp_msg = 70;
					scr_check_weak();
				}
			}
			break;
	}
	scr_msg_sys(tmp_msg);
	running = false;
	reading = true;
}