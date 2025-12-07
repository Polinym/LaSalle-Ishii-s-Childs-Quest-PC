function scr_cc2(arg_cc)
{
	switch (arg_cc)
	{
		case "~00": scr_port(-1); break;
		case "~t0": lines = lines_main; break;
		case "~td": lines = lines_dog; break;
		case "~s+": obj_ram.secret_lens = true; break;
		case "~s-": obj_ram.secret_lens = false; break;
		
		case "~&0": scr_bgm_stop(); return true; break;
		case "~&1": scr_bgm(bgm_MeetTheBand); break;
		case "~&a": scr_snd(snd_cq_attalk); break;
		case "~&e": scr_snd(snd_cq_arrude); break;
		case "~&p": scr_bgm_once(bgm_IGottaPee); break;
		case "~&P": scr_bgm_once(bgm_AsThePlaneTravels); break;
		case "~&V": scr_bgm_once(bgm_WereFinallyStars); break;
		case "~&h": scr_snd(snd_cq_recover); break;
		case "~&f": scr_snd(snd_cq_fishcake); break;
		case "~&z": scr_bgm_once(bgm_SoundAsleep); break;
		case "~&t": scr_bgm_once(bgm_ClearSkySunnyDay); break;
		case "~&X": scr_snd(snd_cq_explode); break;
		case "~&H": scr_bgm(bgm_SomeonesHouse); break;
		case "~&s": scr_snd(bgm_Skit); break;
		case "~&c": scr_snd(snd_cq_aud_cheer); break;
		case "~&L": scr_snd(snd_cq_aud_none); break;
		case "~&w": scr_bgm_once(bgm_LevelUp); break;
		case "~&o": scr_snd(snd_cq_aud_outro); break;
		case "~&]": scr_bgm(bgm_Epilogue); break;
		
		case "~Df": scr_doll_order("free"); break;
		case "~Dw": scr_doll_order("win"); break;
		
		case "~sm": instance_open(obj_snowman); break;
		
		case "~mb": scr_flag_set(16); break;
		
		case "~r$":
			var tmp_payout = obj_ram.royalties[obj_ram.john.lvl][1];
			obj_ram.money += tmp_payout;
			if (ie(hud_dsp_money)) {hud_dsp_money.update = true;}
			scr_text_a(string(tmp_payout));
			scr_flag_set(flag_GotRoyalties);
			break;
		case "~rs": 
			with (obj_ram) 
			{
				var tmp_song = obj_ram.songs[scr_get_song()];
				var tmp_name = tmp_song[0];
				tmp_name = string_replace(tmp_name, "#  ", " ");
				scr_text_a(tmp_name);
				scr_text_b(string(royalties[john.lvl][0]));
			}
			break;
		
		case "~nt": scr_new_turtle(); break;
		
		case "~DI": 
			scr_dogs_ini(); 
			with (obj_ram)
			{
				obj_room.lines = dogs;
				dog_index = 0;
				scr_msg("1." + dogs[dogs_order[0]]);
			}
			break;
		case "~D>":
			with (obj_ram)
			{
				dog_index++;
				if (dog_index > 9)
				{
					scr_msg(dogs[2]);
				}
				else
				{
					scr_msg(string(dog_index+1) + "." + dogs[dogs_order[dog_index]]);
				}
			}
			break;
		
		case "~~~":
			txt += "~";
			return true;
			break;
		
		case "~*M": obj_ram.john.equip[0] = mic_Stars; break;
		case "~*D": obj_ram.john.equip[1] = dress_Stars; break;
		case "~*S": obj_ram.john.equip[2] = shoes_Stars; break;
		case "~*R": 
			obj_ram.john.equip[3] = makeup_Stars; 
			scr_flag_set(flag_GotMakeup);
			break;
			
		case "~EX":
			scr_open(hud_dsp_save);
			with (obj_ram.john)
			{
				hp = max_hp;
				mp = max_mp;
			}
			scr_save();
			var tmp_lvl = obj_ram.john.lvl;
			if (tmp_lvl < obj_ram.max_level)
			{
				scr_text_a(string(obj_ram.level[tmp_lvl+1][0] - john.pp));
				scr_msg(obj_script.line[132]);
			}
			else
			{
				scr_msg(obj_script.line[133]);
			}
			break;
		
		case "~?h":
			with (obj_ram)
			{
				if (money > (prices[price_Concert]-1))
				{
					yes_line = 51;
				}
				else
				{
					yes_line = 50;
				}
				no_line = 48;
			}
			break;
		case "~$p":
			with (obj_ram)
			{
				money += current_price;	
				if (ie(hud_dsp_money))
				{
					hud_dsp_money.update = true;	
				}
			}
			break;
		case "~$0": 
			with (obj_ram) {money += -prices[price_Concert];} 
			if (ie(hud_dsp_money))
			{
				hud_dsp_money.update = true;
			}
			break;
			
		case "~$b": scr_text_cc("$" + string(scr_paint_price())); break;
		case "~$D": scr_text_cc(obj_ram.prices[price_StarsDress]); break;
		case "~$B":
			obj_ram.price_index += -1;
			var tmp_price = scr_paint_price();
			if (tmp_price > 0)
			{
				scr_text_cc("$" + string(tmp_price));
			}
			else
			{
				scr_text_cc("Free");
			}
			break;
		case "~pb":
			var tmp_price = scr_paint_price();
			obj_ram.current_price = tmp_price;
			if (obj_ram.money < tmp_price)
			{
				obj_ram.yes_line = 76;
			}
			else
			{
				hud_dsp_money.update = true;
				obj_ram.yes_line = 78;
			}
			obj_ram.no_line = 79;
			break;
		case "~pd":
			with (obj_ram)
			{
				var tmp_price = prices[price_StarsDress];
				no_line = 104;
				if (money < tmp_price)
				{
					yes_line = 105;
				}
				else
				{
					yes_line = 106;
				}
			}
			break;
		
		case "~I0": scr_item_force(item_BotsonTicket); break;
		case "~I1": scr_item_force_flag(item_Boats); break;  
		case "~I2": scr_item_force(item_Coupon); break;
		case "~I3": scr_item_force(item_Micril); break;
		case "~I4": scr_item_force_flag(item_AecorJar); break;
		case "~I6": scr_item_force(item_Jewels); break;
		case "~I7": scr_item_force_flag(item_MagicPaint); break;
		case "~I8": scr_item_force(item_Letter); break;
		case "~I9": scr_item_force(item_CrystalBall); break;
		case "~IA": scr_item_force_flag(item_Pass); break;
		case "~IB": scr_item_force(item_WahaiiTicket); break;
		case "~IC": scr_item_force(item_Photo); break;
		case "~IF": scr_item_force(item_Grace); break;
		case "~IK": 
			var tmp_hud = scr_open(hud_items);
			tmp_hud.depth = depth-50;
			tmp_hud.toss_mode = true; 
			state = 99;
			break;
		
		case "~h0": scr_heal(10); break;
		case "~h1": scr_heal(60); break;
		case "~h2": scr_heal(20); break;
		case "~h3": scr_heal(120); break;
		case "~h4": scr_heal(255); break;
		
		case "~m0": 
			scr_healmp(20);
			scr_update(hud_dsp_card);
			scr_update(hud_cmds_ow);
			break;
		case "~m1": 
			scr_healmp(255);
			scr_update(hud_dsp_card);
			scr_update(hud_cmds_ow);
			break;
		
		case "~bS":
			with (obj_ram)
			{
				enemy = 96+price_index;
				if (price_index < 1)
				{
					cue_cuts = cuts_free;
				}
				else
				{
					cue_cuts = cuts_bargain;
				}
			}
			with (obj_ram)
			{
				if (save_room == -1)
				{
					save_room = last_room;
				}
				last_room = rm_room;
				dest = rm_btl;
				btl_bck = bck_house;
			}
			scr_open(obj_warp_btl).ani_state = 1;
			break;
		case "~ls":
			with (obj_ram)
			{
				dest = rm_btl;
				last_room = rm_room;
				btl_bck = -1;
				enemy = enm_Scottish;
				cue_cuts = cuts_boss_win;
			}
			scr_open(obj_warp_btl).ani_state = 1;
			break;
			
		case "~ma":
			var tmp_party = obj_ram.party;
			for (var i = 1; i < 4; i++)
			{
				tmp_party[i].water = false;	
			}
			if (ie(hud_dsp_stress))
			{
				hud_dsp_stress.update = true;	
			}
			if (ie(hud_stress_ow))
			{
				hud_stress_ow.update = true;	
			}
			break;
		case "~mr":
			var tmp_party = obj_ram.party;
			for (var i = 1; i < 4; i++)
			{
				tmp_party[i].stress = 0;
			}
			if (ie(hud_dsp_stress))
			{
				hud_dsp_stress.update = true;	
			}
			if (ie(hud_stress_ow))
			{
				hud_stress_ow.update = true;	
			}
			break;
		
		case "~F0": scr_flag_set(0); break;
		case "~F1": scr_flag_set(1); break;
		case "~F2": scr_flag_set(2); break;
		case "~F3": scr_flag_set(3); break;
		case "~F4": scr_flag_set(4); break;
		case "~F5": scr_flag_set(5); break;
		case "~F6": scr_flag_set(6); break;
		case "~F7": scr_flag_set(7); break;
		case "~F8": scr_flag_set(8); break;
		case "~F9": scr_flag_set(9); break;
		case "~FA": scr_flag_set(10); break;
		case "~FB": scr_flag_set(11); break;
		case "~FC": scr_flag_set(12); break;
		case "~FD": scr_flag_set(13); break;
		case "~FE": scr_flag_set(14); break;
		case "~FF": scr_flag_set(15); break;
		
		case "~FS": scr_flag_set(flag_GotSong); break;
		case "~FP": scr_flag_set(flag_UsedPass); break;
		case "~FJ": scr_flag_set(flag_GotJewels); break;
		case "~OK": scr_flag_set(flag_ChickenOK); break;
		case "~BA": scr_flag_set(flag_BottleActive); break;
		
		
		case "~PR": 
			obj_ram.paints[paint_Red] = true; 
			if (ie(obj_room_port))
			{
				obj_room_port.sprite_index = spr_port_paint_red;	
			}
			break;
		case "~PO": obj_ram.paints[paint_Orange] = true; break;
		case "~PY": obj_ram.paints[paint_Yellow] = true; break;
		case "~PG": obj_ram.paints[paint_Green] = true; break;
		case "~PB": obj_ram.paints[paint_Blue] = true; break;
		case "~PI": obj_ram.paints[paint_Indigo] = true; break;
		case "~PV": obj_ram.paints[paint_Violet] = true; break;
		
		case "~P0": scr_intro_port(40, 56, "liz"); break;
		case "~P1": scr_intro_port(104, 56, "meg"); break;
		case "~P2": scr_intro_port(168, 56, "ely"); break;
		
		
		case "~E0": scr_port(spr_port_ely); break;
		case "~E1": scr_port(spr_port_ely_happy); break;
		case "~E2": scr_port(spr_port_ely_angry); break;
		case "~E3": scr_port(spr_port_ely_sad); break;
		
		case "~M0": scr_port(spr_port_meg); break;
		case "~M1": scr_port(spr_port_meg_happy); break;
		case "~M2": scr_port(spr_port_meg_angry); break;
		case "~M3": scr_port(spr_port_meg_sad); break;
		
		case "~L0": scr_port(spr_port_liz); break;
		case "~L1": scr_port(spr_port_liz_happy); break;
		case "~L2": scr_port(spr_port_liz_angry); break;
		case "~L3": scr_port(spr_port_liz_sad); break;
		
		case "~LS": 
			if (jpn) {obj_room_port.sprite_index = spr_port_scottish_jpn;}
			else {obj_room_port.sprite_index = spr_port_scottish;}
			break;
		case "~LF": 
			if (obj_ram.bonus)
			{
				obj_room_port.sprite_index = spr_port_vessel; 
			}
			break;
		case "~lf": 
			if (obj_ram.bonus)
			{
				obj_room_port.sprite_index = spr_port_vessel2; 
			}
			break;
		
		case "~TJ": 
			scr_item_delete(item_AecorJar);
			scr_flag_set(flag_GaveJar);
			break;
			
		case "~sc": obj_ram.last_room = rm_swim; break;
		
		case "~k1": 
			obj_ram.keyboard_mode = 1;
			room_goto(rm_keyboard);
			break;
		
		case "~f0": 
			scr_cuts_load(obj_ram.cuts_fail_noshow);
			scr_warp(rm_room);
			break;
		case "~f1": 
			scr_cuts_load(obj_ram.cuts_fail_timeout);
			scr_warp(rm_room);
			break;
		case "~f2": 
			scr_cuts_load(obj_ram.cuts_fail_quiz); 
			scr_warp(rm_room);
			break;
		
		
		case "~C0":
			obj_ram.can_menu = true;
			scr_cuts_load(obj_ram.cuts_found);
			scr_warp(rm_room);
			break;
		case "~C1":
			obj_ram.can_menu = false;
			with (obj_ram)
			{
				with (explode_char)
				{
					stress = 0;
					water = false;
				}
			}
			scr_cuts_load(obj_ram.cuts_fetch);
			scr_warp(rm_room);
			break;
		case "~C2": 
			scr_set_explode();
			scr_cuts_warp(rm_english, 4); 
			break;
		case "~C3": 
			obj_ram.cue_cuts = -1;
			scr_cuts_warp(rm_english, 8); 
			break;
		case "~C4":
			scr_cuts_load(obj_ram.cuts_swim);
			with (obj_ram)
			{
				save_room = last_room;
				last_room = rm_room;
			}
			break;
		case "~C5":  scr_cuts_next(obj_ram.cuts_warriors); break;
		case "~C6":  scr_cuts_next(obj_ram.cuts_ready); break;
		case "~C7": scr_cuts_next(obj_ram.cuts_photo); break;
		case "~C8":
			scr_flag_set(flag_Endgame);
			scr_cuts_next(obj_ram.cuts_boss_default);
			break;
		case "~C9": scr_cuts_next(obj_ram.cuts_photo) break;
		case "~SC":
			with (obj_ram)
			{
				respawn = false;
				dest = rm_sky;
				goto_pt = 1;
				room_goto(rm_warp);
			}
			break;
		case "~BB":
			var tmp_char;
			for (var i = 1; i < 4; i++)
			{
				tmp_char = obj_ram.party[i];
				with (tmp_char)
				{
					if (stress < 90) 
					{
						if (scr_suit(suit_Ice)) {stress = 10;}
						else {stress = 90;}
					}
					water = true;
				}
			}
			break;
		
		case "~]0": 
			obj_ram.ending_mode = 0;
			scr_cuts_next(obj_ram.cuts_end_snow);
			break;
		case "~]1":
			scr_cuts_next(obj_ram.cuts_end_girls);
			break;
		case "~]2":
			obj_ram.ending_mode = 1;
			scr_cuts_next(obj_ram.cuts_end_castle);
			break;
		case "~]3":
			obj_ram.ending_mode = 2;
			scr_cuts_next(obj_ram.cuts_end_english);
			break;
		case "~]4":
			obj_ram.ending_text = false;
			obj_ram.ending_mode = 3;
			scr_cuts_next(obj_ram.cuts_end_credits);
			break;
		case "~]t":
			obj_ram.ending_text = true;
			break;
		case "~8V": 
			if (obj_ram.bonus)
			{
				scr_warp(rm_teaser);
			}
			else
			{
				state = 999;
				return true;
			}
			break;
	}
	return false;
}